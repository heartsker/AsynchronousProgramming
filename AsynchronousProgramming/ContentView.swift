//
//  ContentView.swift
//  AsynchronousProgramming
//
//  Created by Daniel Pustotin on 21.09.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
		VStack {
			Button {
				AsyncEngine.shared.add(task: PrimeNumbersFinder.shared)
			} label: {
				Text("Primes Numbers")
			}
			.padding()
			.foregroundColor(.black)
			.font(.largeTitle)
			.background(Color.accentColor)
			.clipShape(Capsule())


			Button {
				AsyncEngine.shared.add(task: PerfectNumbersFinder.shared)
			} label: {
				Text("Perfect Numbers")
			}
			.padding()
			.foregroundColor(.black)
			.font(.largeTitle)
			.background(Color.accentColor)
			.clipShape(Capsule())

		}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
