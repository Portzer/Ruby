# frozen_string_literal: true

require_relative '../Computation/machine'
require_relative '../Computation/assign'
require_relative '../Computation/sequence'
require_relative '../Computation/number'
require_relative '../Computation/add'


Machine.new(
  Sequence.new(
  Assign.new(:x,Add.new(Number.new(1), Number.new(1))),
  Assign.new(:y,Add.new(Variable.new(:x), Number.new(2)))
  ),{}).run

