# frozen_string_literal: true


def true (x,y)
  x
end

def false (x,y)
  y
end

TRUE = -> x { -> y {x}}
FALSE = -> x {-> y {y}}


def to_boolean(proc)
  proc[true][false]
end

success  = :true
puts send(success,"happy","sad")

success = :false
puts send(success,"happy","sad")

puts to_boolean(TRUE)
puts to_boolean(FALSE)


puts "----------------------IF------------------------------"
def if (proc,x,y)
  proc[x][y]
end

IF = -> x { x }

puts IF[TRUE] ["happy"]["sad"]

puts "--------------------ZERO?-------------------------------"

def zero?(proc)
  proc[-> x {FALSE}][TRUE]
end


IS_ZERO = -> x {x [-> y {FALSE}][TRUE]}

ZERO = -> p {-> x { x } }
ONE = -> p {-> x { p[x] } } # (n + 1) -> {x -> ( n + 1)} [0] -> 1

puts to_boolean(IS_ZERO[ZERO])
puts to_boolean(IS_ZERO[ONE])

