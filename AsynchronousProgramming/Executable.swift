//
//  Executable.swift
//  AsynchronousProgramming
//
//  Created by Daniel Pustotin on 21.09.2021.
//

import Foundation

protocol Executable {
	var name: String { get }
	var description: String { get }
	func execute()
}
