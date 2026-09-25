---
name: coding-factory-game-v3-reference
description: Full-length factory-game-v3 design and proof records behind the short docs/ pages - sim contracts, headless runner, viewer, art, radars, the 50x50 world, and the Unity parity journal. Triggers - factory-game-v3 detail, parity run, v2 liveness, deadlock prevention, remote coal plant, radar claims, compact save format, accessible panel ids.
---

# factory-game-v3 reference

The `docs/` pages are short overviews held to the small documentation band.
Each one links here for the complete text. Every file below is the original
page as it stood before the 2026-09-25 trim (teable:coilyco/factory-game-v3#8240),
with only relative link paths rewritten.

## Simulation

- [factory-sim.md](references/factory-sim.md) - crates and the full scenario rule list.
- [dispatch-policy.md](references/dispatch-policy.md) - priority arbitration.
- [factory-scenarios.md](references/factory-scenarios.md) - the fixture catalog.
- [stranded-products.md](references/stranded-products.md) - the liveness field and why it exists.
- [deployment-radar.md](references/deployment-radar.md) - radar claims and release.
- [remote-coal-plants.md](references/remote-coal-plants.md) - generator deployment and 50x50 timings.

## 50x50 world

- [v2-world.md](references/v2-world.md) - startup contract and active proof.
- [v2-liveness.md](references/v2-liveness.md) - the 650-tick proof, deadlock prevention, measured totals.
- [v3-worlds.md](references/v3-worlds.md) - the removed authored worlds.

## Play surfaces

- [headless-play.md](references/headless-play.md) - the line-oriented JSON protocol.
- [headless-runner.md](references/headless-runner.md) - snapshot and summary-only runs.
- [compact-persistence.md](references/compact-persistence.md) - save format and storage.
- [factory-viewer.md](references/factory-viewer.md) - planning controls and frame pacing.
- [factory-shell.md](references/factory-shell.md) - app packaging and deploy shape.
- [accessible-play.md](references/accessible-play.md) - the DOM panel and its ids.
- [factory-art.md](references/factory-art.md) - sprite list, projection, packaging.

## Unity migration record

- [unity-parity.md](references/unity-parity.md) - per-area parity.
- [unity-feature-audit.md](references/unity-feature-audit.md) - source-level audit.
- [unity-decommission-plan.md](references/unity-decommission-plan.md) and
  [csharp-decommission.md](references/csharp-decommission.md) - the deletion record.
- [unity-parity-run.md](references/unity-parity-run.md) - the unattended run journal, parts 1 to 4.
