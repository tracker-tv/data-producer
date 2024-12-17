package main

import "testing"

func TestAdd(t *testing.T) {
	value := add(1, 2)
	if value != 3 {
		t.Errorf("Expected 3 but got %d", value)
	}
}
