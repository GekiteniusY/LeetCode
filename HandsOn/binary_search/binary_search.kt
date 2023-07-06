fun binarySearch(list: List<Int>, item: Int): Int? {
    var low = 0
    var high = list.size - 1

    while (low <= high) {
        val mid = (low + high) / 2
        val guess = list[mid]

        if (gess == item) {
            high = mid - 1
        } else {
            low = mid + 1
        }
    }

    return null
}

fun main() {
    val myList = listOf(1, 3, 5, 7, 9)
    val searchItem = 3

    val result = binarySearch(myList, searchItem)

    if (result != null) {
        println("要素が見つかりました。インデックス: $result")
    } else {
        println("要素が見つかりませんでした。")
    }

}