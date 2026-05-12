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
    label: "Top Shelf",
    rect: { x: 250, y: 35, w: 450, h: 70 },
  },
  {
    zoneId: "middle_shelf", // Matches 'middle_shelf' in catalog
    label: "Middle Shelf",
    rect: { x: 250, y: 120, w: 450, h: 132 },
  },
  {
    zoneId: "bottom_shelf",
    label: "Bottom Shelf",
    rect: { x: 250, y: 260, w: 450, h: 55 },
  },
  {
    zoneId: "crisper", // Matches 'crisper' in catalog
    label: "Crisper (Left)",
    rect: { x: 250, y: 330, w: 170, h: 90 },
  },
  {
    zoneId: "crisper", // Matches 'crisper' in catalog
    label: "Crisper (Right)",
    rect: { x: 430, y: 330, w: 300, h: 90 },
  },
  {
    zoneId: "door",
    label: "Fridge Door",
    rect: { x: 730, y: 20, w: 210, h: 500 },
  },
  {
    zoneId: "freezer",
    label: "Freezer",
    rect: { x: 250, y: 450, w: 450, h: 200 },
  },
  {
    zoneId: "outside",
    label: "Pantry / Outside",
    rect: { x: 20, y: 60, w: 150, h: 500 },
  }
];