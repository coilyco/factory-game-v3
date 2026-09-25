# Unity parity and C# decommission

The Rust migration is complete. Every retained Unity gameplay contract has a
deterministic Rust replacement, and the C# tree is gone. Git history keeps the
Unity reference at `4d683d6^`.

## Parity

Content, containers, mining, production, dispatch, movement and pathfinding,
batteries and power, world mutation, player interaction, and observability are
all rated substantial. "Working" means deterministic tests and, where visual,
a surface in the Bevy/Wasm viewer. The component inventory has no retained
gap. Unity had no player placement, editing, or programmable logistics, so
those are not migration gaps. The 50x50 world in [v3-worlds.md](v3-worlds.md)
is the separate integration and scale proof.

## Decommission

- Rust tests and the viewer proved each retained behavior first.
- The audit marked Unity engine plumbing and never-shipped editing controls
  obsolete.
- The final batch removed 64 script and metadata files, `tests.csproj`, and
  1,661 Unity-only plugin files (C5, PathFinder, xUnit, YAML, .NET
  extensions, OpenTelemetry).
- Accepted runtime sprites moved to `crates/factory_shell/assets/factory/`,
  and the rest of the Unity asset tree was removed because Bevy cannot read
  it. See [factory-art.md](factory-art.md).

## Full records

Reference files live in the
[coding-factory-game-v3-reference](../.agents/skills/coding-factory-game-v3-reference/SKILL.md)
skill:

- [unity-parity.md](../.agents/skills/coding-factory-game-v3-reference/references/unity-parity.md) - per-area parity detail.
- [unity-feature-audit.md](../.agents/skills/coding-factory-game-v3-reference/references/unity-feature-audit.md) - source-level audit.
- [csharp-decommission.md](../.agents/skills/coding-factory-game-v3-reference/references/csharp-decommission.md) - file-to-Rust proof.
- [unity-decommission-plan.md](../.agents/skills/coding-factory-game-v3-reference/references/unity-decommission-plan.md) - gate order.
- [unity-parity-run.md](../.agents/skills/coding-factory-game-v3-reference/references/unity-parity-run.md) - the unattended run journal.
