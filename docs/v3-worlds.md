# 50x50 factory world

One deterministic 50x50 world remains, as a headless integration and scale
fixture. It does not appear in the game UI.

## Startup

- 50x50 grid, seed `4382721`, 141 each of iron, copper, and coal deposits
  outside a ten-cell central radius, plus one manifest stone source.
- Seven foundries, eight upper-tier factories, one coal generator with 4,000
  fuel, fifteen haulers, and ten starting drills.
- Three mining-drill radars and one coal-plant radar, as in
  [deployment-radar.md](deployment-radar.md).

The generator follows the v2 seed and rules but does not claim bit-for-bit
.NET compatibility.

## Proofs

- **50 ticks** - six drills deploy, all four source types mine, and iron bars,
  frames, and building materials are crafted against fixed totals.
- **650 ticks** - two replays zero every non-generator battery after tick 500
  and must keep extraction, freight, production, and remote generation running
  with identical metrics every 50 ticks. Run `just v2-liveness`.

An early run collapsed freight near tick 500. Route caching, sealed-endpoint
filtering, full-capacity reservation, stale-assignment cancellation, and
bounded grid extension now prevent that deadlock.

The gate proves 150 post-cutoff ticks, not infinite steady state or .NET
parity. Three authored 50x50 worlds that nothing simulated were removed in
`teable:coilyco-gaming/factory-game-v3#7041`.

Full text, with measured totals and timings, in the
[coding-factory-game-v3-reference](../.agents/skills/coding-factory-game-v3-reference/SKILL.md)
skill:
[v2-world.md](../.agents/skills/coding-factory-game-v3-reference/references/v2-world.md),
[v2-liveness.md](../.agents/skills/coding-factory-game-v3-reference/references/v2-liveness.md),
and
[v3-worlds.md](../.agents/skills/coding-factory-game-v3-reference/references/v3-worlds.md).
