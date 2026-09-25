# Deployment radars and remote coal plants

Deployment radars own target discovery and claims for mining drills and remote
coal plants. Factories remain inventory providers, and haulers remain the
retrieve and deploy receivers.

## Claims

Each radar declares a deployment item, a target resource, and a position. On
every intent refresh, `factory_sim` releases invalid claims, keeps valid ones,
then visits unclaimed compatible dormant sources by squared distance with node
identity as the tie-break. It exposes one deploy intent per claim and asks the
nearest factory with matching inventory to supply it. A shared ordered claim
set stops two radars owning one source. Radar nodes are authority markers, not
collision cells.

The 50x50 world runs four radars from `(25, 25)` to `(25, 28)`: iron, copper,
and coal with mining drills, and coal with coal plants.

## Remote coal plants

`radar-3` claims a free coal deposit. A factory crafts the plant through the
four-input recipe, a hauler retrieves and carries it, and a generator mutation
places `generator-1` on the claimed site after validating item, target,
depletion, and occupancy. The source keeps `deployed: false` and records
`occupied_by`.

The plant starts with empty coal, a 4,000-unit coal reservation, and an empty
10,000-unit battery, and burns four coal for 160 energy. It then requests coal,
builds a power line to the central grid, and joins battery balancing.

Snapshots, metrics, events, and the viewer expose claims, generators, and link
paths. Per-generator fuel and output separate the two plants.

Full text:
[deployment-radar.md](../.agents/skills/coding-factory-game-v3-reference/references/deployment-radar.md)
and
[remote-coal-plants.md](../.agents/skills/coding-factory-game-v3-reference/references/remote-coal-plants.md).
