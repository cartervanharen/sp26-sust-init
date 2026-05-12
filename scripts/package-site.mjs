/**
 * After root `vite build` and Game2/Game3 `vite build`, merge everything into dist/
 * for static hosting (e.g. Render).
 */
import fs from "fs/promises";
import path from "path";
import { fileURLToPath } from "url";

const root = path.join(path.dirname(fileURLToPath(import.meta.url)), "..");
const dist = path.join(root, "dist");

async function copyFile(src, dest) {
  await fs.mkdir(path.dirname(dest), { recursive: true });
  await fs.copyFile(src, dest);
}

/** Recursive copy; skips names in skipNames at any level. */
async function copyDir(src, dest, { skipNames = new Set() } = {}) {
  await fs.mkdir(dest, { recursive: true });
  const entries = await fs.readdir(src, { withFileTypes: true });
  for (const e of entries) {
    if (skipNames.has(e.name)) continue;
    const from = path.join(src, e.name);
    const to = path.join(dest, e.name);
    if (e.isDirectory()) await copyDir(from, to, { skipNames });
    else await fs.copyFile(from, to);
  }
}

/** Copy only direct children of src into dest (dest is cleared first). */
async function copyDirContentsFlat(src, dest) {
  await fs.rm(dest, { recursive: true, force: true });
  await fs.mkdir(dest, { recursive: true });
  const entries = await fs.readdir(src, { withFileTypes: true });
  for (const e of entries) {
    const from = path.join(src, e.name);
    const to = path.join(dest, e.name);
    if (e.isDirectory()) await copyDir(from, to);
    else await fs.copyFile(from, to);
  }
}

await copyFile(path.join(root, "about.html"), path.join(dist, "about.html"));

await copyDir(path.join(root, "Game1"), path.join(dist, "Game1"), {
  skipNames: new Set(["Trash_Sort_Game", ".DS_Store"]),
});

await copyDirContentsFlat(path.join(root, "Game3", "dist"), path.join(dist, "Game3"));

await copyDirContentsFlat(path.join(root, "Game2", "dist"), path.join(dist, "Game2"));
for (const f of ["nextLevel.html", "gameover.html"]) {
  await copyFile(path.join(root, "Game2", f), path.join(dist, "Game2", f));
}

console.log("package-site: dist ready for static deploy");
