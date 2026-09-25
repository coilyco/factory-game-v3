# Factory planning surface

`crates/factory_shell` is the single native and Wasm Bevy app, the
player-facing compact freight yard. It renders immutable `CompactSnapshot`
values and sends typed edit commands to `CompactGame`, which keeps every rule.

## Play

The app opens paused on the full 16x16 map: one warehouse, four iron and
copper deposits, three trucks, and a starter road apron. The planner has four
pointer modes (Inspect, Road, Erase, Factory), recipe buttons, and play,
step, reset, speed, and zoom controls, so the loop needs no keyboard.
Keyboard mirrors it: `1` to `4` tools, `I`/`C` recipes, `Space`, `N`, `R`,
`F`, `WASD` or arrows to pan, `Q`/`E` or the wheel to zoom.

The native shell sleeps in winit's reactive mode while paused. The browser
build stays continuous so DOM clicks from the panel in
[accessible-play.md](accessible-play.md) are never dropped.

## Run and deploy

- `just shell-run` - native viewer.
- `just shell-serve` - browser viewer with trunk hot reload.
- `just shell-build-web` - Wasm bundle in `crates/factory_shell/dist/`.

The repo-root [`Dockerfile`](../Dockerfile) builds with trunk and serves
`dist/` from unprivileged nginx on 8080 ([`nginx.conf`](../nginx.conf)).
Forgejo Actions publishes the git-sha image, and the deploy repo owns rollout
and `factory.coilysiren.me`. Wasm-opt stays off until bundle size matters.

Full text in the
[coding-factory-game-v3-reference](../.agents/skills/coding-factory-game-v3-reference/SKILL.md)
skill:
[factory-viewer.md](../.agents/skills/coding-factory-game-v3-reference/references/factory-viewer.md)
and
[factory-shell.md](../.agents/skills/coding-factory-game-v3-reference/references/factory-shell.md).
