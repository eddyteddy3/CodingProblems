var num = 123
var array = [Int]()

var count = 6
var temp = num/10

//print(temp%10)
//print(num/10)

while 0 < count {
    if temp == 0 {
        break
    } else {
        array.append(temp)
        temp = temp/10
    }
    count -= 1
}

print(array)
