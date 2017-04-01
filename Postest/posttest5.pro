domains
  name = symbol

predicates
 nondeterm friend(name,name)
  they_are - procedure ()

clauses
  friend(tasik,evi).
  friend(atoel,ise).
  friend(atoel,juni).
  they_are:-
	friend(A,B),
	write(A," is ",B," 's friend\n"),
	fail.
  they_are.

goal
  they_are.

