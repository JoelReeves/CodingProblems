/*
 
 Write a program that returns the nth Fibonacci number.
 
 A Fibonacci sequence is sequence that satisfies the following expression:
 f(n) = f(n - 1) + f(n - 2)
 
 The 0th and 1st number are always 1.
 
 */

func findFibonacci(number: Int) -> (Int) {
    if number <= 2 {
        return 1
    } else {
        return findFibonacci(number: number - 1) + findFibonacci(number: number - 2)
    }
}

var number = findFibonacci(number: 10)
print("The Fibonacci number is \(number)")
