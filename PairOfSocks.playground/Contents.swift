var num = 9

var arr = [10, 20, 20, 10, 10, 30, 50, 10, 20]

var temp = 0

var socksCount = 0

var pointer = 0

while pointer < arr.count - 1 {
    temp = arr[pointer]
    
    for index in 0...arr.count - 1 {
        if temp == arr[index] && index != pointer {
            socksCount += 1
            arr.remove(at: index)
            //print(temp)
        }
        
    }
    pointer += 1
}

print(arr)
