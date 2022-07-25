package main

import "testing"

func TestSum(t *testing.T) {
	result := sum(36, 12)

	if result != 48 {
		t.Error("The result must be 48")
	}
}

func TestSub(t *testing.T) {
	result := sub(36, 12)

	if result != 24 {
		t.Error("The result must be 24")
	}
}

func TestTimes(t *testing.T) {
	result := times(36, 12)

	if result != 432 {
		t.Error("The result must be 432")
	}
}

// func TestDiv(t *testing.T) {
// 	result := div(36, 12)

// 	if result != 3 {
// 		t.Error("The result must be 3")
// 	}
// }