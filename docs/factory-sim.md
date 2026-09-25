# Factory simulation workspace

The simulation is a small Rust workspace with no Bevy dependency.

## Crates

- `factory_content` - typed items, recipes, and scenarios.
- `factory_sim` - deterministic fixture gameplay plus the road-bound compact
  loop in [compact-first-playable.md](compact-first-playable.md).
- `factory_cli` - the headless runner and play surface in
  [headless-play.md](headless-play.md).

## Rules in brief

- Sources mine finite deposits or manifest items at fixed per-tick speed.
- Haulers carry quantity, weight, and volume limits and hold explicit collect,
  deliver, retrieve, or deploy assignments.
- Recipes take multiple inputs. Factories reserve input capacity and advertise
  one dispatch intent per under-buffered input.
- Inserters pull from the eight neighboring containers.
- Dispatch skips sealed and unreachable pairs, reserves full hauler capacity
  for in-flight demand, and cancels stale assignments. Priorities follow
  [dispatch-policy.md](dispatch-policy.md).
- Deterministic A-star routes are cached and cleared on topology mutation.
- Power follows [factory-power.md](factory-power.md).
- Radars claim targets for drills and coal plants, as in
  [deployment-radar.md](deployment-radar.md).
- Construction replaces a build site with an occupied structure at the
  world-mutation boundary.
- Depleted ore and its drill are deleted in order, releasing the cell.

Fixture layouts are in [factory-scenarios.md](factory-scenarios.md), and the
50x50 release proof is in [v3-worlds.md](v3-worlds.md).

Full text:
[factory-sim.md](../.agents/skills/coding-factory-game-v3-reference/references/factory-sim.md).
