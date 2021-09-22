//
//  PrimesFinder.swift
//  AsynchronousProgramming
//
//  Created by Daniel Pustotin on 21.09.2021.
//

import Foundation

class PrimeNumbersFinder: Executable {

	static let shared = PrimeNumbersFinder()

	var name: String = "Prime Numbers Finder"
	var description: String = ""

	func execute() {
		let range = 2 ... 1_000_000
		var count = 0
		var largest: Int? = nil

		for n in range {
			var k = 2
			while k * k <= n {
				if n % k == 0 {
					break
				}
				k += 1
			}
			if k * k > n {
				count += 1
				largest = n
			}
		}

		description = "Found \(count) prime numbers in range [\(1), \(range.last!)]."
		if let largest = largest {
			description += " Largest one is \(largest)."
		}
	}
}
