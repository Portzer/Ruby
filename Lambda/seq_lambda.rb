# frozen_string_literal: true

PAIR = -> x {->y {-> f { f [x][y] } } }
RIGHT = -> p { p [->x {->y {x}}]}
LEFT = -> p { p [->x {->y {y}}]}


TWO = -> p {-> x { p[p[x]] } }
THREE = -> p {-> x { p[p[p[x]]] } }

def to_integer(proc)
  proc[-> n {n + 1}][0]
end

pair = PAIR[THREE][TWO]

puts pair
puts to_integer(LEFT[pair])
puts to_integer(RIGHT[pair])
