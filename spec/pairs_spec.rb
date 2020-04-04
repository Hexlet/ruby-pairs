# frozen_string_literal: true

require 'spec_helper'
require 'pairs'

RSpec.describe Pairs do
  it '#cons' do
    pair = Pairs.cons(3, 4)
    expect(Pairs.car(pair)).to eq(3)
    expect(Pairs.cdr(pair)).to eq(4)
  end

  it '#tostring' do
    pair = Pairs.cons(10, -10)
    expect(Pairs.to_string(pair)).to eq('(10, -10)')
  end

  it '#toString2' do
    pair = Pairs.cons(Pairs.cons(3, 5), Pairs.cons(1, true))
    expect(Pairs.to_string(pair)).to eq('((3, 5), (1, true))')
  end

  it '#toString3' do
    pair = Pairs.cons(10, Pairs.cons(0, 1))
    expect(Pairs.to_string(pair)).to eq('(10, (0, 1))')
  end

  it '#is Pair' do
    pair = Pairs.cons(10, 10)
    expect(Pairs.pair?(pair)).to eq true
    expect(Pairs.pair?('asdf')).to eq false
    expect(Pairs.pair?({ key: "value" })).to eq false
  end

  it '#checkPair' do
    expect(lambda { car(345) }).to raise_error(NoMethodError)
    expect(lambda { cdr('asdf') }).to raise_error(NoMethodError)
    expect(lambda { car({ key: "value" }) }).to raise_error(NoMethodError)
  end
end
