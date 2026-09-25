# Factory runtime art

The Bevy viewer loads fifteen accepted 100x100 RGBA sprites from
`crates/factory_shell/assets/factory/`, held by the typed `FactoryArt`
resource. They cover ground, the north-south road, the truck, iron, copper,
coal, and stone deposits, foundry, factory, coal plant, radar, mining drill,
warehouse, and the iron ore and iron bars items. A narrow `.gitattributes`
exception keeps that subtree in ordinary Git so a plain clone builds. The
sprites were selected from the Unity library before it was removed.

## Projection rules

- Ground stretches across the world in one sprite.
- Sources get matching deposit overlays, and a drill overlay while deployed.
- Iron-bar factories use the foundry, and other factories the general sprite.
- Coal plants, radars, and warehouses use their own sprites, every hauler the
  truck, and iron cargo the matching item icon.
- The status bar reuses deposit sprites as 18px resource icons.
- The road sprite rotates only for pure east-west straights. Corners and
  junctions keep the colored fallback.
- Identities without accepted art keep colored fallbacks.

## Packaging

Native builds read the crate asset root. In the browser, Bevy requests
`/assets/<path>`, and a Trunk `copy-dir` link in `index.html` places the asset
root at `dist/assets`. `nginx.conf` serves `/assets/` with a one-hour
revalidated cache and `try_files ... =404`, so a missing sprite is a real 404.
The shell sets `AssetMetaCheck::Never`, so the console carries no sidecar 404s
and a real delivery failure stays visible.

Full text, including the file list:
[factory-art.md](../.agents/skills/coding-factory-game-v3-reference/references/factory-art.md).
