//
//  ContentView.swift
//  AsynchronousProgramming
//
//  Created by Daniel Pustotin on 21.09.2021.
//

import SwiftUI

struct ContentView: View {

	private let colors: [Color] = [.orange, .pink, .purple]
	private let symbols = "qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM §1234567890-=±!@#$%^&*()_+§¡™£¢∞§¶•ªº–≠œ∑´®†¥¨ˆøπ“‘åß∂ƒ©˙∆˚¬…æ«`Ω≈ç√∫˜µ≤≥÷Œ„´‰ˇÁ¨ˆØ∏”’ÅÍÎÏ˝ÓÔÒÚÆ»`¸˛Ç◊ı˜Â¯˘¿;'"
	@State private var primesBackground: Color = .accentColor
	@State private var perfectBackground: Color = .accentColor
	@State private var randomText: String = ""

	private let timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()

	private func getRandomText() -> String {
		return String((0 ..< 10).map{ _ in symbols.randomElement()! })
	}

	var body: some View {
		VStack {
			Text(randomText)
				.onReceive(timer) { _ in
					randomText = getRandomText()
				}
				.padding()
				.foregroundColor(.red)
				.font(.largeTitle)

			Spacer()

			Button {
				AsyncEngine.shared.add(task: PrimeNumbersFinder.shared) {
					primesBackground = colors.randomElement()!
				}
			} label: {
				Text("Primes Numbers")
			}
			.padding()
			.foregroundColor(.black)
			.font(.largeTitle)
			.background(primesBackground)
			.clipShape(Capsule())

			Button {
				AsyncEngine.shared.add(task: PerfectNumbersFinder.shared) {
					perfectBackground = colors.randomElement()!
				}
			} label: {
				Text("Perfect Numbers")
			}
			.padding()
			.foregroundColor(.black)
			.font(.largeTitle)
			.background(perfectBackground)
			.clipShape(Capsule())
		}
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
