const fs = require('fs');
const ncp = require('ncp').ncp;
const path = require('path');

// Define the source and destination directories
const sourceDir = path.join(__dirname, 'libAnna');
const destDir = path.join(__dirname, 'public');

// Read the files in the source directory
fs.readdir(sourceDir, (err, files) => {
  if (err) {
    return console.error('Error reading directory:', err);
  }

  // Filter files that you want to copy (e.g., all .txt files)
  const txtFiles = files.filter(file => file.endsWith('.txt'));

  // Copy each of the selected files
  txtFiles.forEach(file => {
    const sourceFile = path.join(sourceDir, file);
    const destFile = path.join(destDir, file);

    ncp(sourceFile, destFile, (err) => {
      if (err) {
        return console.error(`Error copying file ${file}:`, err);
      }
      console.log(`${file} copied successfully!`);
    });
  });
});
