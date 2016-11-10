/*
 The sum of the squares of the first ten natural numbers is,
 1^2 + 2^2 + ... + 10^2 = 385
 
 The square of the sum of the first ten natural numbers is,
 (1 + 2 + ... + 10)^2 = 55^2 = 3025
 
 Hence the difference between the sum of the squares of the first ten 
 natural numbers and the square of the sum is 3025 − 385 = 2640.
 
 Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
 
 */

func sumOfSquares(number: Int) ->Int {
    var sum = 0
    var counter = 1
    
    while (counter <= number) {
        sum += counter * counter
        counter += 1
    }
    return sum
}

func squareOfSum(number: Int) ->Int {
    var sum = 0
    var counter = 1
    
    while (counter <= number) {
        sum += counter
        counter += 1
    }
    return sum * sum
}

let limit = 100
let sumSquares = sumOfSquares(number: limit)
let squareSum = squareOfSum(number: limit)

print("Sum of the squares of the first \(limit) natural numbers: \(sumSquares)")
print("Square of the sum of the first \(limit) natural numbers: \(squareSum)")
print("The difference is \(squareSum - sumSquares)")
