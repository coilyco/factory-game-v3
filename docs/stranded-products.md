# Stranded products

`liveness_summary().stranded_products` names every item a factory is jammed
holding that nothing in that world can ever ask for. It is structural, so once
it appears it stays.

An item is stranded when all three hold:

- a factory is blocked with `ProductionBlockReason::OutputFull`,
- no factory in the world lists that item among its recipe inputs, and
- the item is not `can_spawn_game_object`, so it cannot leave by placement.

## Why the field exists

Dispatch is demand-pull. A factory's output collect intent is an offer of
supply, read only while serving another factory's `Deliver` demand for the
same item. With no downstream consumer, the offer stands unread and the
factory holds its buffer forever. A stalled world and a finished world both
show rising `idle_ticks` and a repeating `product output full` alert. Seven
scenarios sat in this state unnoticed because the runner defaults to
`--ticks 6` and the stall begins at tick 7.

## What it does not mean

It is not a dispatcher defect. The two ways out live in content: add a
downstream recipe that consumes the item, or end the chain in a spawnable
building. A new consumer only helps if it is itself consumed or spawnable.
Moving a stall is not clearing one.

## Reading it

```
just cargo-run run --scenario iron-bars --ticks 40
```

A healthy chain reports `"stranded_products": []`. `iron-bars` reports
`["iron_bars"]` from tick 7 onward.

Full text:
[stranded-products.md](../.agents/skills/coding-factory-game-v3-reference/references/stranded-products.md).
