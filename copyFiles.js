import fs from 'fs-extra';
import path from 'path';
import { fileURLToPath } from 'url';

// Get the current directory using ES module method
const __dirname = path.dirname(fileURLToPath(import.meta.url));

// Define the source directory where the files are located (inside libAnna)
const sourceDir = __dirname; // Files are directly inside libAnna

// Define the destination directory (make sure it points to the public folder in your main app)
const destinationDir = path.join(process.cwd(), 'public'); // Main app's public folder

console.log(`Source directory is: ${sourceDir}`);
console.log(`Destination directory is: ${destinationDir}`);

const copyFiles = async () => {
  try {
    // Ensure the source directory exists
    if (!fs.existsSync(sourceDir)) {
      console.error(`Source directory does not exist: ${sourceDir}`);
      return;
    }

    // Ensure the destination directory exists
    if (!fs.existsSync(destinationDir)) {
      console.log(`Destination directory does not exist, creating: ${destinationDir}`);
      await fs.mkdirp(destinationDir); // Create the destination directory if it doesn't exist
    }

    // List all files in the source directory and filter for specific file types (e.g., .txt)
    const files = await fs.readdir(sourceDir);
    const txtFiles = files.filter(file => file.endsWith('.txt')); // Adjust for your file types

    // Copy each .txt file from the source to the destination
    for (const file of txtFiles) {
      const sourceFile = path.join(sourceDir, file);
      const destFile = path.join(destinationDir, file);

      console.log(`Copying ${sourceFile} to ${destFile}`);
      await fs.copy(sourceFile, destFile);
    }

    console.log(`Files successfully copied to ${destinationDir}`);
  } catch (error) {
    console.error('Error copying files:', error);
  }
};

// Run the function
copyFiles();
