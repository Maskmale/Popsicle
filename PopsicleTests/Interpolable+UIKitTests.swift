//
//  Interpolable+UIKitTests.swift
//  Popsicle
//
//  Created by David Román Aguirre on 17/07/16.
//  Copyright © 2016 David Román Aguirre. All rights reserved.
//

import XCTest
import Popsicle

func ~= (lhs: CGPoint, rhs: CGPoint) -> Bool {
	return lhs.x ~= rhs.x && lhs.y ~= rhs.y
}

func ~= (lhs: CGSize, rhs: CGSize) -> Bool {
	return lhs.width ~= rhs.width && lhs.height ~= rhs.height
}

func ~= (lhs: CGRect, rhs: CGRect) -> Bool {
	return lhs.origin ~= rhs.origin && lhs.size ~= rhs.size
}

class InterpolableUIKitTests: XCTestCase {

	func testInterpolableCGFloat() {
		InterpolableTests.test(
			initialValue: CGFloat(0),
			finalValue: -10,
			interpolatedValues: [0, -2.5, -3.3, -5, -6.6, -7.5, -10],
			times: [0, 0.25, 0.33, 0.5, 0.66, 0.75, 1],
			function: ~=
		)

		InterpolableTests.test(
			initialValue: CGFloat(0),
			finalValue: 10,
			interpolatedValues: [0, 2.5, 3.3, 5, 6.6, 7.5, 10],
			times: [0, 0.25, 0.33, 0.5, 0.66, 0.75, 1],
			function: ~=
		)
	}

	func testInterpolableCGPoint() {
		InterpolableTests.test(
			initialValue: .zero,
			finalValue: CGPoint(x: -10, y: -20),
			interpolatedValues: [
				.zero,
				CGPoint(x: -2.5, y: -5),
				CGPoint(x: -3.3, y: -6.6),
				CGPoint(x: -5, y: -10),
				CGPoint(x: -6.6, y: -13.2),
				CGPoint(x: -7.5, y: -15),
				CGPoint(x: -10, y: -20)
			],
			times: [0, 0.25, 0.33, 0.5, 0.66, 0.75, 1],
			function: ~=
		)

		InterpolableTests.test(
			initialValue: .zero,
			finalValue: CGPoint(x: 10, y: 20),
			interpolatedValues: [
				.zero,
				CGPoint(x: 2.5, y: 5),
				CGPoint(x: 3.3, y: 6.6),
				CGPoint(x: 5,	y: 10),
				CGPoint(x: 6.6, y: 13.2),
				CGPoint(x: 7.5, y: 15),
				CGPoint(x: 10,	y: 20)
			],
			times: [0, 0.25, 0.33, 0.5, 0.66, 0.75, 1],
			function: ~=
		)
	}

	func testInterpolableCGSize() {
		InterpolableTests.test(
			initialValue: .zero,
			finalValue: CGSize(width: -10, height: -20),
			interpolatedValues: [
				.zero,
				CGSize(width: -2.5, height: -5),
				CGSize(width: -3.3, height: -6.6),
				CGSize(width: -5,	height: -10),
				CGSize(width: -6.6, height: -13.2),
				CGSize(width: -7.5, height: -15),
				CGSize(width: -10,	height: -20)
			],
			times: [0, 0.25, 0.33, 0.5, 0.66, 0.75, 1],
			function: ~=
		)

		InterpolableTests.test(
			initialValue: .zero,
			finalValue: CGSize(width: 10, height: 20),
			interpolatedValues: [
				.zero,
				CGSize(width: 2.5,	height: 5),
				CGSize(width: 3.3,	height: 6.6),
				CGSize(width: 5,	height: 10),
				CGSize(width: 6.6,	height: 13.2),
				CGSize(width: 7.5,	height: 15),
				CGSize(width: 10,	height: 20)
			],
			times: [0, 0.25, 0.33, 0.5, 0.66, 0.75, 1],
			function: ~=
		)
	}

	func testInterpolableCGRect() {
		InterpolableTests.test(
			initialValue: .zero,
			finalValue: CGRect(x: -30, y: -50, width: -10, height: -20),
			interpolatedValues: [
				.zero,
				CGRect(x: -7.5, y: -12.5, width: -2.5, height: -5),
				CGRect(x: -9.9, y: -16.5, width: -3.3, height: -6.6),
				CGRect(x: -15, y: -25, width: -5, height: -10),
				CGRect(x: -19.8, y: -33, width: -6.6, height: -13.2),
				CGRect(x: -22.5, y: -37.5, width: -7.5, height: -15),
				CGRect(x: -30, y: -50, width: -10, height: -20)
			],
			times: [0, 0.25, 0.33, 0.5, 0.66, 0.75, 1],
			function: ~=
		)

		InterpolableTests.test(
			initialValue: .zero,
			finalValue: CGRect(x: 30, y: 50, width: 10, height: 20),
			interpolatedValues: [
				.zero,
				CGRect(x: 7.5, y: 12.5, width: 2.5, height: 5),
				CGRect(x: 9.9, y: 16.5, width: 3.3, height: 6.6),
				CGRect(x: 15, y: 25, width: 5, height: 10),
				CGRect(x: 19.8, y: 33, width: 6.6, height: 13.2),
				CGRect(x: 22.5, y: 37.5, width: 7.5, height: 15),
				CGRect(x: 30, y: 50, width: 10, height: 20)
			],
			times: [0, 0.25, 0.33, 0.5, 0.66, 0.75, 1],
			function: ~=
		)
	}
}
