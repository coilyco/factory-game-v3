# Accessible play

Bevy draws the whole viewer into one canvas, which exposes nothing to a screen
reader, and AccessKit has no web adapter. The shell therefore builds a real DOM
panel beside the canvas. It is the readable half of the game, not a test hook.

## What a player gets

A landmark region with headings, large focusable buttons, and visible focus
outlines. Four regions carry the state:

* Simulation status - a live sentence with tick, speed, sales, revenue,
  demand, and building allowance.
* Focused cell - what occupies the target cell and whether it has road frontage.
* Last result - an assertive region with the same feedback the canvas shows.
* Recent events and World inventory - a rolling log plus deposit, factory, and
  warehouse inventory.

Controls cover the whole loop: play, pause, step, speed, reset, a column and
row pair with road, erase, factory, and describe, and factory select plus both
recipes.

## Design rules

- Perception is the feature. Keyboard control already existed, so the work is
  the text.
- The event log keeps a short window, and each region is written only when its
  text changes, so a live region is not announced every frame.
- Every button uses the pointer and keyboard host paths, so `factory_sim` rules.
- The browser build never sleeps, because a DOM click does not wake winit.

## Script ids

Controls: `#fg-pause`, `#fg-step`, `#fg-speed`, `#fg-reset`, `#fg-x`, `#fg-y`,
`#fg-road`, `#fg-erase`, `#fg-factory`, `#fg-inspect`, `#fg-building`,
`#fg-select`, `#fg-iron`, `#fg-copper`. State: `#fg-status`, `#fg-focus`,
`#fg-feedback`, `#fg-world`, `#fg-events`.

Full text:
[accessible-play.md](../.agents/skills/coding-factory-game-v3-reference/references/accessible-play.md).
