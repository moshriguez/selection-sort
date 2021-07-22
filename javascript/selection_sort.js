function selectionSort(arr) {
  const sorted = []
  while (arr.length > 0) {
    const min = Math.min(...arr)
    sorted.push(min)
    const i = arr.indexOf(min)
    arr.splice(i, 1)
  }
  return sorted
}

if (require.main === module) {
  // add your own tests in here
  console.log("Expecting: [-1, 2, 3, 5]");
  console.log("=>", selectionSort([3, -1, 5, 2]));

  console.log("Expecting: [-1, -1, 3, 5]");
  console.log("=>", selectionSort([3, -1, 5, -1]));

  console.log("Expecting: [-55, -1, 3, 5]");
  console.log("=>", selectionSort([3, -1, 5, -55]));

  console.log("Expecting: [-55, -1, 5, 37]");
  console.log("=>", selectionSort([37, -1, 5, -55]));


  // BENCHMARK HERE, and print the average runtime
  const longInput = [];

  for (let i = 0; i < 100; ++i) {
    longInput.push(Math.random());
  }
}

module.exports = selectionSort;

// Please add your pseudocode to this file
// And a written explanation of your solution
