# frozen_string_literal: true
class Variable < Struct.new(:key)
  def to_s
    key.to_s
  end
  def inspect
    "<<#{self}>>"
  end
  def reducible?
    true
  end
  def reduce (environment)
    environment[key]
  end
  def evaluate(environment)
    environment[key]
  end
  def to_ruby
    "-> e { e[#{key.inspect}] }"
  end
end
