# frozen_string_literal: true

require_relative '../Computation/number'
require_relative '../Computation/variable'
require_relative '../Computation/less_than'
require_relative '../Computation/add'
require_relative '../Computation/sequence'
require_relative '../Computation/assign'
require_relative '../Computation/while'
require_relative '../Computation/multiply'

puts Number.new(23).evaluate({})
puts Variable.new(:x).evaluate({x:Number.new(23)})
puts LessThan.new(Add.new(Variable.new(:x),Number.new(2)),Variable.new(:y)).evaluate({x:Number.new(2),y:Number.new(3)})


statement = Sequence.new(Assign.new(:x, Add.new(Number.new(1),Number.new(1))),Assign.new(:y, Add.new(Variable.new(:x),Number.new(3))))
puts statement
puts statement.evaluate({})

statement = While.new(
  LessThan.new(Variable.new(:x),Number.new(5)),
  Assign.new(:x ,Multiply.new(Variable.new(:x),Number.new(3))))
puts statement.evaluate({x:Number.new(1)})
