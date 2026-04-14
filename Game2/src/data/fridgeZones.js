/**
 * Fridge storage zones for sustainability sorting (correct placement).
 * Coordinates are placeholders — align with your fridge sprite/layout later.
 *
 * zoneId: stable key for drop validation
 * label: UI / debug name
 * rect: { x, y, w, h } in game pixels (top-left origin)
 */

export const FRIDGE_ZONES = [
  {
    zoneId: "top_shelf",
    label: "Top Shelf (Ready-to-eat)",
    rect: { x: 120, y: 60, w: 400, h: 80 },
  },
  {
    zoneId: "middle_shelf",
    label: "Middle Shelf (Dairy)",
    rect: { x: 120, y: 150, w: 400, h: 80 },
  },
  {
    zoneId: "bottom_shelf",
    label: "Bottom Shelf (Raw Meat)",
    rect: { x: 120, y: 240, w: 400, h: 80 },
  },
  {
    zoneId: "crisper",
    label: "Crisper Drawer",
    rect: { x: 120, y: 330, w: 280, h: 100 },
  },
  {
    zoneId: "door",
    label: "Fridge Door",
    rect: { x: 540, y: 60, w: 120, h: 370 },
  },
  {
    zoneId: "freezer",
    label: "Freezer",
    rect: { x: 120, y: 440, w: 540, h: 100 },
  },
  {
    zoneId: "outside",
    label: "Pantry / Outside",
    rect: { x: 10, y: 60, w: 100, h: 480 },
  }
];