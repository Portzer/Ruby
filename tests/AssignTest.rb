require_relative '../Computation/variable'
require_relative '../Computation/assign'
require_relative '../Computation/add'
require_relative '../Computation/number'

statement = Assign.new(:x,Add.new(Variable.new(:x),Number.new(5)))

puts statement

environment = {x:Number.new(4)}

puts environment

statement ,environment = statement.reduce(environment)

puts "#{statement}  #{environment}"

statement ,environment = statement.reduce(environment)

puts "#{statement}  #{environment}"

statement ,environment = statement.reduce(environment)

puts "#{statement}  #{environment}"