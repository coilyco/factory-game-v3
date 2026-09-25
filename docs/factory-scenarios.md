# Factory simulation scenarios

Twelve deterministic headless layouts. **None is player-facing.** The viewer
runs the compact game in [compact-first-playable.md](compact-first-playable.md).
A finished fixture looks like a stuck world, so read a long run with
[stranded-products.md](stranded-products.md).

- **Iron bars** - one hauler supplies one foundry. The CLI default.
- **Iron bars fleet** - three haulers arbitrate one bounded demand.
- **Building materials** - two sources feed a multi-input recipe.
- **Powered ironworks** - coal logistics charge an energy-gated grid.
- **Drill deployment** - a hauler deploys a drill at a radar-claimed source,
  drains it, and tears the drill down.
- **Obstacle convoy** - two haulers route around an occupied cell.
- **Drill production chain** - inserters feed five factories into drills.
- **Distributed frame line** - haulers carry foundry output across the grid to
  downstream frame demand.
- **Automatic grid link** - a distant coal plant builds three line cells.
- **Warehouse construction** - a hauler deploys spawnable warehouse inventory
  onto a build site.
- **Hybrid generator grid** - fueled and fuel-free generators share one grid.
- **V3 50x50 factory world** - the full-scale integration proof in
  [v3-worlds.md](v3-worlds.md).

Every layout is reachable through the headless CLI and the test suite, and
nowhere else. `iron-bars` alone stands behind roughly two dozen assertions.
Three authored 50x50 worlds that nothing simulated were removed in
`teable:coilyco-gaming/factory-game-v3#7041`.

Full text:
[factory-scenarios.md](../.agents/skills/coding-factory-game-v3-reference/references/factory-scenarios.md).
