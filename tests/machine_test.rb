# frozen_string_literal: true


require_relative '../Computation/machine'
require_relative '../Computation/assign'
require_relative '../Computation/number'
require_relative '../Computation/add'

Machine.new(
  Assign.new(
    :x,Add.new(Variable.new(:x),Number.new(20))),
  {x:Number.new(10)}).
  run