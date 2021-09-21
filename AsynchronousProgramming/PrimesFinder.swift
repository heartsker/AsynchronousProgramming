//
//  PrimesFinder.swift
//  AsynchronousProgramming
//
//  Created by Daniel Pustotin on 21.09.2021.
//

import Foundation

class PrimesFinder: Executable {

	var shared = PrimesFinder()

	func execute() {
		let n = 1_000_000_000
		var primes: [Int] = []
		var k = 2
		while k * k <= n {
			if n % k == 0 {
				primes.append(k)
			}
			k += 1
		}
	}
}
