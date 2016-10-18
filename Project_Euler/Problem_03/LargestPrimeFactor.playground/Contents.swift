/*
 
 Largest prime factor

 The prime factors of 13195 are 5, 7, 13 and 29.
 
 What is the largest prime factor of the number 600851475143?
 
 */

func isPrime(number: Int) -> Bool {
    if number < 2 {
        return false
    }
    
    for index in 2..<number {
        if number % index == 0 {
            return false
        }
    }
    return true
}

func findLargestPrimeFactor(number: Int) {
    if number < 2 {
        print("Please enter number greater than 2")
    } else {
        var largestPrimeFactorial = 0
        
        for index in 2..<number where isPrime(number: index) && number % index == 0 {
            largestPrimeFactorial = index
            print("Prime factor: \(largestPrimeFactorial)")
        }
    }
}

func printPrimeFactors(number: Int) {
    var temp = number
    var factorArray = [Int]()
    
    for index in 2..<temp where temp % index == 0 {
        factorArray.append(index)
        print(factorArray)
        temp /= index
    }
}

let limit = 600851475143
//findLargestPrimeFactor(number: limit)
//findPrimeFactors(number: limit)
