? in ruby vs ! in ruby really depends on the context in which they are in.
Sometimes they are just parts of the name of a method, others say the ? can 
create an either or situation with a boolean value, the ! can be substituted
for "not" before a boolean to flip the truthiness value. There are other uses
for them as well, but they arent exactly directly comparable.

1) != is not equals to, and you would use it in a conditional to return true if
two things are not equal to each other
2) ! before something evalutates it to a boolean, by taking its current 
truthiness value and returning the opposite 
(ex: !7 would be !true would be false)
3) ! after "something" often indicates that the user wants a version of the
 "something" that is destructive/mutates the caller. Where the original
 "something" method would not do that, "something"! often times will. They
  are different methods with similar names.
4) I honestly dont have a clue what putting ? before something does. I think
it might actually trigger an error.
5) putting ? after "something" often just indicates that the "something"? 
method returns a boolean value, based on the calling object or the object
passed as an argument. If it is placed after a boolean expression, it is
the ternary operator which decides to execute statement 1 or statement 2
depending on the truthiness value of the boolean expression
6) putting !! before something is redundant as it equates to "not not" which
is the same thing as saying nothing at all. I suppose it does return the
truthiness value of an object, but I cant currently see many purposes
for that.