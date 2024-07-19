# frozen_string_literal: true

require_relative '../Computation/while'
require_relative '../Computation/less_than'
require_relative '../Computation/variable'
require_relative '../Computation/number'
require_relative '../Computation/multiply'
require_relative '../Computation/machine'
require_relative '../Computation/assign'

Machine.new(
  While.new(
    LessThan.new(Variable.new(:x),Number.new(5)),
    Assign.new(:x,Multiply.new(Variable.new(:x), Number.new(3)))
  ),{x:Number.new(1)})
       .run

