# Compact game persistence

The compact player loop survives a reload, so a session can run long enough to
answer pacing questions about map size, unlock thresholds, and demand growth.

## Ownership and format

`factory_sim` owns the save through `CompactGame::to_save_string` and
`from_save_string`, so crate tests cover it with no browser. The
`factory_shell::storage` module moves the opaque string and never reads it.
`CompactSnapshot` is a lossy projection and is not the save format.

The document is a versioned envelope, `{"version":1,"game":{...}}`. A version
mismatch returns `CompactSaveError::UnsupportedVersion` instead of loading part
of a document. Every field is an ordered collection, so a save is byte-stable.
`ItemId` resolves saved strings through `ItemId::ALL` and rejects unknown ones.

## Behavior

- The viewer restores the previous session at startup and says so.
- An unreadable save is reported, play starts fresh, and the slot is kept for a
  later build.
- Autosave runs every five seconds and only when the world changed.
- Reset clears the stored slot.
- A storage failure is logged and never interrupts play.

## Storage

- **Browser** - `localStorage` key `factory-game-v3.compact-save`.
- **Native** - `$HOME/.local/share/factory-game-v3/factory-game-v3.compact-save.json`.

## Changing the format

Any change to `CompactGame`'s serialized shape bumps `COMPACT_SAVE_VERSION` in
the same commit.

Full text:
[compact-persistence.md](../.agents/skills/coding-factory-game-v3-reference/references/compact-persistence.md).
See also [compact-first-playable.md](compact-first-playable.md).
