# frozen_string_literal: true

require_relative '../Computation/number'
require_relative '../Computation/variable'
require_relative '../Computation/less_than'
require_relative '../Computation/add'
require_relative '../Computation/sequence'
require_relative '../Computation/assign'
require_relative '../Computation/while'
require_relative '../Computation/multiply'



puts Number.new(4).to_ruby
puts Boolean.new(false).to_ruby

proc = eval(Number.new(4).to_ruby)
puts proc
puts proc.call({})

proc = eval(Boolean.new(false).to_ruby)
puts proc
puts proc.call({})

expression =  Variable.new(:x).to_ruby
puts expression
proc =  eval(expression)
puts proc.call(x:1)


environment = {x:3}
puts proc=eval(Add.new(Variable.new(:x), Number.new(1)).to_ruby)
puts proc.call(environment)

environment = {x:3}
puts proc=eval(Multiply.new(Variable.new(:x), Number.new(1)).to_ruby)
puts proc.call(environment)


environment = {x:3,y:7}
puts proc=eval(LessThan.new(Variable.new(:x), Variable.new(:y)).to_ruby)
puts proc.call(environment)

statement = Assign.new(:x, Add.new(Number.new(1), Variable.new(:y)))
proc = eval(statement.to_ruby)
puts proc.call(y:1)

puts "-------------------"

statement = If.new(LessThan.new(Variable.new(:x),Variable.new(:y)), Number.new(5), Number.new(2))
puts statement
proc = eval(statement.to_ruby)
environment = {x:3,y:1}
puts proc.call(environment)
puts "--------------------"
statement = Sequence.new(Assign.new(:x, Add.new(Number.new(1),Number.new(1))),Assign.new(:y, Add.new(Variable.new(:x),Number.new(3))))
proc = eval(statement.to_ruby)
puts proc.call({})

puts "---------------------"
statement = While.new(
  LessThan.new(Variable.new(:x),Number.new(5)),
  Assign.new(:x ,Multiply.new(Variable.new(:x),Number.new(3))))

puts statement
proc = eval(statement.to_ruby)
puts proc.call(x:1)


