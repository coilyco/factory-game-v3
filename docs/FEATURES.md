# Features

What `factory-game-v3` currently ships. Long-form records live in the
[coding-factory-game-v3-reference](../.agents/skills/coding-factory-game-v3-reference/SKILL.md)
skill.

## Inventory

- **Completed Rust migration** - the C# tree, Unity-only plugins, and Unity
  asset tree are gone. See [unity-parity.md](unity-parity.md).
- **Rust simulation workspace** - catalog, rules, and headless runner for
  mining, factories, inserters, dispatch, construction, routes, and power. See
  [factory-sim.md](factory-sim.md), [factory-power.md](factory-power.md),
  and [dispatch-policy.md](dispatch-policy.md).
- **Headless play** - `factory_cli play` drives the compact loop over JSON
  lines. See [headless-play.md](headless-play.md).
- **Compact first-playable loop** - a 16x16 freight yard with roads, factories,
  trucks, market demand, and unlocks. See
  [compact-first-playable.md](compact-first-playable.md).
- **Session persistence** - a versioned save in browser storage or a native
  file. See [compact-persistence.md](compact-persistence.md).
- **Bevy/Wasm planning surface** - native and browser play by mouse, touch,
  keyboard, and an accessible DOM panel. See [factory-viewer.md](factory-viewer.md)
  and [accessible-play.md](accessible-play.md).
- **Runtime factory art** - fifteen sprites with colored fallbacks. See
  [factory-art.md](factory-art.md).
- **Deployment radars and remote coal plants** - see [deployment-radar.md](deployment-radar.md).
- **50x50 world and sustained operation** - see [v3-worlds.md](v3-worlds.md).
- **Scenario fixtures and liveness** - see
  [factory-scenarios.md](factory-scenarios.md) and
  [stranded-products.md](stranded-products.md).
- **Private web image publication** - Forgejo Actions publishes the git-sha
  image. See [features-release-tooling.md](features-release-tooling.md).
- **Validation** - `just test` runs pre-commit and the Rust workspace tests, and CI runs the same check through `scripts/test-gate.sh`.

## See also

- [README.md](../README.md)
- [AGENTS.md](../AGENTS.md)
- [`justfile`](../justfile)
