This kata is bases in the [Connect 4 game](https://en.wikipedia.org/wiki/Connect_Four)

The kata consist on returning the result of t 4 in a row match. Given a board, we should determine if the blue wins, the red wins or it is a draw.

The board will be a 7x6 board and in the example given the inputs comes in a CSV format but you can change it.

The board consists of a rectangle of cells that could be occupied by a blue(B) or red(R) tile or empty(X). The winner is the one who has 4 tiles in a row either horizontally, vertically or diagonal.

For example, giving the following board (the arrows are just to indicate how the tiles are inserted, but they are not supposed to be in the input):

|↓|↓|↓|↓|↓|↓|↓|
|-|-|-|-|-|-|-|
|X|X|X|B|X|X|X|
|X|X|X|B|R|X|X|
|X|B|X|R|B|X|X|
|X|R|B|R|R|R|X|
|B|B|R|B|B|R|R|
|R|R|B|B|B|R|B|

With this input we should determine that the winner is BLUE.


<details><summary>Did you finish and want an extra requirement? Here you have it:</summary>
  <p>
   check if the result of a match is valid. For example, it can't have an empty cell bellow a blue or red tile or it can't have 2 winners or the number of tiles is not correct according to the turns (|B count - R count| should be 0 or 1)
  </p>
</details><br><br>
