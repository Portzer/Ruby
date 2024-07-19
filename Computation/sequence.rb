# frozen_string_literal: true

class Sequence<Struct.new(:first, :second)
  def to_s
    "#{first} , #{second}"
  end
  def inspect
    "<<#{self}>>"
  end
  def reducible?
    true
  end
  def reduce(environment)
    case first
    when DoNothing.new
      [second,environment]
    else
      first_reduce,environment_reduce = first.reduce(environment)
      [Sequence.new(first_reduce, second),environment_reduce]
    end
  end
end
