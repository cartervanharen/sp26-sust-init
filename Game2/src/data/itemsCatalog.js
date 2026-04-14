/**
 * Catalog of draggable fridge items and their correct zone for sustainability rules.
 * Extend with sprite keys once assets exist in PreloadScene.
 *
 * correctZoneId must match a zoneId from fridgeZones.js
 */
// src/data/itemsCatalog.js
export const ITEMS_CATALOG = [
  { id: "leftovers",
    label: "Leftovers", 
    correctZoneId: "top_shelf" }, 

  { id: "milk", 
    label: "Milk", 
    correctZoneId: "middle_shelf" }, 

  { id: "chicken", 
    label: "Raw Chicken", 
    correctZoneId: "bottom_shelf" },

  { id: "lettuce", 
    label: "Lettuce", 
    correctZoneId: "crisper" },

  { id: "ketchup", 
    label: "Ketchup", 
    correctZoneId: "door" },

  { id: "ice_cream", 
    label: "Ice Cream", 
    correctZoneId: "freezer" }, 

  { id: "bread", 
    label: "Bread", 
    correctZoneId: "outside" } 
];// allow drop if it's the correct zone or if dropping back to the hotbar