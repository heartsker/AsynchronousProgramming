//
//  PerfectNumbersFinder.swift
//  AsynchronousProgramming
//
//  Created by Daniel Pustotin on 22.09.2021.
//

import Foundation

class PerfectNumbersFinder: Executable {

	static let shared = PerfectNumbersFinder()

	var name: String = "Perfect Numbers Finder"
	var description: String = ""

	func execute() {
		let range = 2 ... 1_000_000
		var count = 0
		var largest: Int? = nil

		for n in range {
			var k = 2
			var sum = 1
			while k * k <= n {
				if n % k == 0 {
					sum += k
					if k * k != n {
						sum += n / k
					}
				}
				k += 1
			}
			if sum == n {
				count += 1
				largest = n
			}
		}
		description = "Found \(count) perfect numbers in range [\(1), \(range.last!)]."
		if let largest = largest {
			description += " Largest one is \(largest)."
		}
	}
}
