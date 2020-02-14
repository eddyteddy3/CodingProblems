var arr = [1, 2, 0, -3, -4]

var numberToBeInserted = 1

for index in arr {
    if index > 0 {
        print("positive")
        if index > numberToBeInserted && !(arr.contains(numberToBeInserted)) {
            arr.append(numberToBeInserted)
        } else {
            numberToBeInserted += 1
            if !(arr.contains(numberToBeInserted)) {arr.append(numberToBeInserted)}
        }
    }
}

print(arr)

