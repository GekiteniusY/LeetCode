fun bubbleSort(data: IntArray) {
    val dataCount = data.size
    for (i in 0 until dataCount - 1) {
        for (j in dataCount - 1 downTo i + 1) {
            if (data[j] < data[j - 1]) {
                val temp = data[j]
                data[j] = data[j - 1]
                data[j - 1] = temp
            }
        }
    }
}

fun main() {
    val data = intArrayOf(8, 5, 4, 9, 3)
    bubbleSort(data)
    for (i in data.indices) println(data[i])
}
