# frozen_string_literal: true

require_relative 'variable'
class Machine < Struct.new(:expression,:environment)
  def step
    self.expression = expression.reduce(environment)
  end
  def run
    while expression.reducible?
      puts expression
      step
    end
    puts expression
  end

end
