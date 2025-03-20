// libAnna.js - Common functions for my projects.

// remember to add the following line to scripts in the main App's package.json:
// "install-libAnna": "npm install ./libAnna && node ./node_modules/libAnna/copyFiles.js"
// Then install libAnna by running:
// npm run install-libAnna
// This needs to be run after updating libAnna.


// Function to load words from a file (accepts filename as an argument)
export async function loadWords(filename, setWords) {
  try {
    const response = await fetch(`/${filename}`);
    
    if (!response.ok) {
      throw new Error(`Failed to fetch ${filename}`);
    }

    const text = await response.text();
    const words = text.split("\n").map((word) => word.trim());
    setWords(words);
  } catch (error) {
    console.error("Error loading file:", error);
  }
}

// Function to pick a random word from an array (returns a single word as a string)
export function pickRandomWord(words) {
  if (words.length === 0) return null;
  const randomIndex = Math.floor(Math.random() * words.length);
  return words[randomIndex]; // Return the word, not modifying state
}