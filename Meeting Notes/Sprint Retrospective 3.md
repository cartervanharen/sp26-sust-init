


# Sprint Retrospective 3

**Meeting attendees:** Carter Vanharen; Alseny Fofana; Ibrahima K.; *Raiyyan Ahmed.*

## What we shipped (recent commits)

This sprint moved a lot of concrete work into the repo:

- **Game 2 (Phaser)** — We committed to JavaScript/Phaser instead of GameMaker: added a Phaser skeleton, a README for Game 2, then layered on gameplay: drag-and-drop sorting, new container UI, a home screen with a menu, and a small config change so the full game flow runs end-to-end.
- **Game 1 (trash sort)** — We tightened the “near-final” loop: per-building item sets, incorrect-item feedback (including why an item was wrong), end screen when cans are cleared, timer set back to 20 seconds, and visual polish (e.g. black/white theme, font). Map was simplified and the win condition shifted to all trash cans going green.
- **Repo hygiene** — Multi-game folder layout, removal of an `Trash_Sort_Game` directory so everything for game 1 lives under Game 1 cleanly, and naming fixes for review materials.

That lines up with the goals we already had: **get Game 2 moving** and **lock the tech direction on Phaser/JS**.

---

## Start

- Keep momentum on Game 2: gameplay depth, polish, and any missing pieces.
- Treat the Phaser/JS path as the default; only revisit the stack if we hit a hard blocker.
- Begin light **Game 3** brainstorming so the next sprint isn’t starting from zero.

## Stop

- Avoid **undocumented work** that never hits the backlog (harder to demo, grade, and hand off).

## Continue

- **Backlog discipline** — Update and add items as progress lands so the board matches reality.
- **Group coding sessions** — They’ve been working; keep the rhythm.
- **Steady communication** — Short, frequent updates beat big surprises before deadlines.

