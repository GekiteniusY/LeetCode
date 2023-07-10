function findSmallest(arr: number[]): number {
    let smallest = arr[0];
    let smallestIndex = 0;
    for (let i = 1; i < arr.length; i++) {
        if (arr[i] < smallest) {
            smallest = arr[i];
            smallestIndex = i;
        }
    }
    return smallestIndex;
}

function selectionSort(arr: number[]): number[] {
    let sortedArr: number[] = new Array(arr.length);
    for (let i = 0; i < arr.length; i++) {
        let smallestIndex = findSmallest(arr);
        sortedArr[i] = arr[smallestIndex];
        arr[smallestIndex] = Number.MAX_VALUE;
    }
    return sortedArr;
}
