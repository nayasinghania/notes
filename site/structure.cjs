const fs = require("fs");
const path = require("path");

function generateDirectoryTree(startPath) {
  let result = {};

  try {
    const items = fs.readdirSync(startPath);

    items.forEach((item) => {
      const itemPath = path.join(startPath, item);
      const stats = fs.statSync(itemPath);

      if (stats.isDirectory()) {
        result[item] = generateDirectoryTree(itemPath);
      } else {
        // If this is the first file in this directory, create an array
        if (!Array.isArray(result)) {
          result = [];
        }
        result.push(item);
      }
    });

    return result;
  } catch (err) {
    console.error(`Error reading directory: ${err}`);
    return {};
  }
}

const publicPath = path.join(__dirname, "public");
const structure = generateDirectoryTree(publicPath);

fs.writeFileSync("structure.json", JSON.stringify(structure, null, 2), "utf-8");

console.log("Directory structure has been saved to structure.json");
