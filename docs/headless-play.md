# Headless play and runner

`factory_cli` has two headless surfaces. `play` drives the compact player loop
over JSON lines, and `run` advances any catalog scenario.

## Play

`just play` reads one JSON request per line and writes exactly one response
per line. Requests are `observe`, `step` (`ticks`), `place_road`,
`remove_road`, `place_building` (`x`, `y`), `configure_building` (`building`,
`recipe` of `IronBars` or `CopperBars`), `save`, and `quit`.

Every response carries `ok` and a full `snapshot`. A refused edit keeps the
process up with `ok: false`, a stable `error_kind`, and a readable `error`.
Kinds are `out_of_bounds`, `cell_occupied`, `road_in_use`, `road_required`,
`building_allowance_exhausted`, `unknown_building`, `tick_budget_exhausted`,
and `malformed_request`.

Trucks only traverse roads. In the 16x16 starter world, a road column up x=7
and a row west along y=2 reaches the iron deposit at 2,2. A factory at 6,3 set
to `IronBars` banks 5890 revenue over 600 ticks and lifts the building
allowance from 2 to 6. `tests/play.rs` asserts those figures.

`--max-ticks` caps one session (default 2000). `--load` and `--save` resume
and branch from the format in [compact-persistence.md](compact-persistence.md).

## Runner

`just cargo-run run --scenario iron-bars --ticks 6` emits one snapshot per
tick, then a `{"summary", "liveness"}` object. `--summary-only` skips per-tick
snapshots with identical state, and `--exhaust-batteries-at <tick>` zeros
non-generator batteries for the recovery proof in [v3-worlds.md](v3-worlds.md).

Full text:
[headless-play.md](../.agents/skills/coding-factory-game-v3-reference/references/headless-play.md)
and
[headless-runner.md](../.agents/skills/coding-factory-game-v3-reference/references/headless-runner.md).
