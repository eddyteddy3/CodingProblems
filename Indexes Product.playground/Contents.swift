var array = [2,3,4,5,6]
var newArr = [Int]()

var pointer1 = 0

var temp = 1

//for index in 0...array.count-1 {
//    temp = temp * array[index]
//}
//print(temp)

while pointer1 < array.count {
    
    for index in 0...array.count-1 {
        if index != pointer1 {
            //print(array[index])
            temp = temp * array[index]
        }
    }
    
    newArr.append(temp)
    
    temp = 1
    pointer1 += 1
    //pointer2 = 0
}

print(newArr)
