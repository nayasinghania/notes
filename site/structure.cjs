const fs = require("fs");
const path = require("path");

function getDirectoryStructure(dirPath) {
  const items = fs.readdirSync(dirPath);
  const directories = [];
  const files = [];

  // First separate items into directories and files
  for (const item of items) {
    const fullPath = path.join(dirPath, item);
    const stats = fs.statSync(fullPath);

    if (stats.isDirectory()) {
      // If it's a directory, recursively get its structure
      const subStructure = getDirectoryStructure(fullPath);
      directories.push([item, subStructure]);
    } else {
      // If it's a file, add to files array
      files.push(item);
    }
  }

  // Sort directories by name
  directories.sort((a, b) => a[0].localeCompare(b[0]));

  // Sort files alphabetically
  files.sort((a, b) => a.localeCompare(b));

  // Combine directories and files with directories first
  return [...directories, ...files];
}

try {
  const publicDir = path.join(__dirname, "public");
  const structure = getDirectoryStructure(publicDir);

  // Write the structure to a JSON file with pretty formatting
  fs.writeFileSync(
    path.join(__dirname, "structure.json"),
    JSON.stringify(structure, null, 2),
    "utf8",
  );

  console.log("Structure has been written to structure.json");
} catch (error) {
  console.error("Error:", error.message);
}
