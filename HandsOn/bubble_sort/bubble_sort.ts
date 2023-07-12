function bubbleSort(data: number[]) {
    let dataCount = data.length;
    for (let i = 0; i < dataCount - 1; i++) {
        for (let j = dataCount - 1; j > i; j--) {
            if (data[j] < data[j - 1]) {
                let temp = data[j];
                data[j] = data[j - 1];
                data[j - 1] = temp;
            }
        }
    }
}

let data: number[] = [8, 5, 4, 9, 3];
bubbleSort(data);
for (let i = 0; i < data.length; i++) {
    console.log(data[i]);
}
