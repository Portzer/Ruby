# frozen_string_literal: true



ZERO = -> p {-> x { x } }
ONE = -> p {-> x { p[x] } } # (n + 1) -> {x -> ( n + 1)} [0] -> 1
TWO = -> p {-> x { p[p[x]] } }
THREE = -> p {-> x { p[p[p[x]]] } }
FIVE    = -> p { -> x { p[p[p[p[p[x]]]]] } }
FIFTEEN = -> p { -> x { p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[x]]]]]]]]]]]]]]] } }
HUNDRED = -> p { -> x { p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[x]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]] } }

def to_integer(proc)
  proc[-> n {n + 1}][0]
end

puts to_integer(HUNDRED)

IS_ZERO = -> x {x [-> y {FALSE}][TRUE]}
IF = -> x { x }

(ONE..HUNDRED).map do |n|
  IF[IS_ZERO[n % FIFTEEN]][
    'FizzBuzz'
  ][IF[IS_ZERO[n % THREE]][
      'Fizz'
    ][IF[IS_ZERO[n % FIVE]][
        'Buzz'
      ][
        n.to_s
      ]]]
end