package main

import (
	"encoding/csv"
	"fmt"
	"os"
	"testing"
)

func ReadFile() [][]string {
	file, err := os.Open("board.csv")

	if err != nil {
		fmt.Print(err)
	}
	lines, err := csv.NewReader(file).ReadAll()
	if err != nil {
		fmt.Print(err)
	}

	return lines
}

func TestSong(test *testing.T) {
	board := ReadFile()
	result := matchResult(board)
	expectedResult := "Blue"

	if result != expectedResult {
		test.Error("The result of the match is not the expected one")
	}
}
