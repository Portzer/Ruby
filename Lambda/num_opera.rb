# frozen_string_literal: true

ZERO    = -> p { -> x {       x    } }
ONE     = -> p { -> x {     p[x]   } }
TWO     = -> p { -> x {   p[p[x]]  } }
THREE   = -> p { -> x { p[p[p[x]]] } }
FIVE    = -> p { -> x { p[p[p[p[p[x]]]]] } }
FIFTEEN = -> p { -> x { p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[x]]]]]]]]]]]]]]] } }
HUNDRED = -> p { -> x { p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[p[x]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]] } }

# Booleans

TRUE  = -> x { -> y { x } }
FALSE = -> x { -> y { y } }
IF    = -> b { b }

# Pairs

PAIR  = -> x { -> y { -> f { f[x][y] } } }
LEFT  = -> p { p[-> x { -> y { x } } ] }
RIGHT = -> p { p[-> x { -> y { y } } ] }

# Arithmetic

INCREMENT = -> n { -> p { -> x { p[n[p][x]] } } }
SLIDE     = -> p { PAIR[RIGHT[p]][INCREMENT[RIGHT[p]]] }
DECREMENT = -> n { LEFT[n[SLIDE][PAIR[ZERO][ZERO]]] }
def to_integer(proc)
  proc[-> n {n + 1}][0]
end

puts to_integer(DECREMENT[FIFTEEN])
