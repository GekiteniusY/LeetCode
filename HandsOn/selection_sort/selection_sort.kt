fun findSmallest(arr: MutableList<Int>): Int {
    var smallest = arr[0]
    var smallestIndex = 0
    for (i in 1 until arr.size) {
        if (arr[i] < smallest) {
            smallest = arr[i]
            smallestIndex = i
        }
    }
    return smallestIndex
}

fun selectionSort(arr: MutableList<Int>): List<Int> {
    val sortedArr = mutableListOf<Int>()
    for (i in 0 until arr.size) {
        val smallestIndex = findSmallest(arr)
        sortedArr.add(arr.removeAt(smallestIndex))
    }
    return sortedArr
}
