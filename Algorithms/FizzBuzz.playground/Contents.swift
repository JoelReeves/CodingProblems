/*
 
 Players take turns to count incrementally, replacing any number divisible by three with the word "fizz", and any number divisible by five with the word "buzz".
 
 */


func fizzbuzz(endingValue: Int) {
    assert(endingValue >= 1)
    
    for index in 1...endingValue {
        if index % 15 == 0{
            print("FizzBuzz, ")
        } else if index % 3 == 0 {
            print("Fizz, ")
        } else if (index % 5 == 0) {
            print("Buzz, ")
        } else {
            print("\(index), ")
        }
    }
}

fizzbuzz(endingValue: 20)


func fizzBuzz(endingValue: Int) {
    assert(endingValue >= 1)
    
    for index in 1...endingValue {
        switch (index % 3, index % 5) {
        case (0,0): print("FizzBuzz")
        case (0,_): print("Fizz")
        case (_,0): print("Buzz")
        default: print("\(index), ")
        }
    }
}

fizzbuzz(endingValue: 50)