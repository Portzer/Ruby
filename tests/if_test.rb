# frozen_string_literal: true
require_relative '../Computation/machine'
require_relative '../Computation/assign'
require_relative '../Computation/variable'
require_relative '../Computation/number'
require_relative '../Computation/boolean'
require_relative '../Computation/if'


Machine.new(
  If.new(
    Variable.new(:x),
    Assign.new(:y,Number.new(1)),
    Assign.new(:y,Number.new(2))
  ),
  {x:Boolean.new(true)})
       .run
