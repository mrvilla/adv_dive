// used:  when inserting more complex values (e.g.,
// a widget with multiple parameters being set) into
// a more complex list (e.g.,
// a list of widgets passed to a Column() or Row()),
// this feature can lead to more readable code.
var condition = 3 > 2;


// if statements inside of Lists
final myList = [
  1,
  2,
  if (condition)
    3
];



// or else statements
final myList2 = [
  1,
  2,
  if (condition)
    3
  else
    4
];

// alternative approach
final myList3 = [
  1,
  2,
  condition ? 3 : 4
];



// Besides the equality operator `(==)`

// != to check for inequality (randomNumber != 5 expects randomNumber to NOT be 5, i.e., to be any other value)

// > to check for the value on the left to be greater than the value on the right (randomNumber > 5 yields true if randomNumber is greater than 5)

// >= to check for the value on the left to be greater than or equal to the value on the right (randomNumber >= 5 yields true if randomNumber is greater than 5 or equals 5)

// < to check for the value on the left to be smaller than the value on the right (randomNumber < 5 yields true if randomNumber is smaller than 5)

// <= to check for the value on the left to be smaller than or equal to the value on the right (randomNumber <= 5 yields true if randomNumber is smaller than 5 or equals 5)
