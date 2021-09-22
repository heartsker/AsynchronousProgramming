//
//  AsyncEngine.swift
//  AsynchronousProgramming
//
//  Created by Daniel Pustotin on 21.09.2021.
//

import Foundation

final class AsyncEngine {

	static let shared = AsyncEngine()

	private let queue: OperationQueue = {
		let queue = OperationQueue()
		queue.maxConcurrentOperationCount = 2
		queue.qualityOfService = .background
		return queue
	}()

	private var lastOperation: Operation?

	func add(task: Executable, complition: @escaping () -> () = {}) {
		let operation = BlockOperation()

		var start: DispatchTime = DispatchTime.init(uptimeNanoseconds: 0)
		var finish: DispatchTime = DispatchTime.init(uptimeNanoseconds: 0)

		operation.addExecutionBlock {
			DispatchQueue.main.async {
				print(task.name)
				start = DispatchTime.now()
			}
			task.execute()
			DispatchQueue.main.async {
				finish = DispatchTime.now()
				print("\(task.name) took \(Int(Double(finish.uptimeNanoseconds - start.uptimeNanoseconds) / 1e6)) ms to execute")
				print(task.description)

				complition()
			}
		}

		if let last = lastOperation {
			operation.addDependency(last)
		}

		lastOperation = operation
		queue.addOperation(operation)
	}
}
