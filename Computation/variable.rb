# frozen_string_literal: true
class Variable < Struct.new(:value)
  def to_s
    value.to_s
  end
  def inspect
    "<<#{self}>>"
  end
  def reducible?
    true
  end
  def reduce (environment)
    environment[value]
  end
end
