require 'hexlet/pairs'

RSpec.describe Hexlet::Pairs do
  it 'cons, car, cdr' do
    pair = Hexlet::Pairs.cons(3, 4)
    expect(Hexlet::Pairs.car(pair)).to be(3)
    expect(Hexlet::Pairs.cdr(pair)).to be(4)
  end

  it 'to_string #1' do
    pair = Hexlet::Pairs.cons(10, -10)
    expect(Hexlet::Pairs.to_string(pair)).to eq('(10, -10)')
  end

  it 'to_string #2' do
    pair = Hexlet::Pairs.cons(Hexlet::Pairs.cons(3, 5), Hexlet::Pairs.cons(1, true))
    expect(Hexlet::Pairs.to_string(pair)).to eq('((3, 5), (1, true))')
  end

  it 'to_string #3' do
    pair = Hexlet::Pairs.cons(10, Hexlet::Pairs.cons(0, 1))
    expect(Hexlet::Pairs.to_string(pair)).to eq('(10, (0, 1))')
  end

  it 'pair?' do
    pair = Hexlet::Pairs.cons(10, 10)
    expect(Hexlet::Pairs.pair?(pair)).to be_truthy
    expect(Hexlet::Pairs.pair?('asdf')).to be_falsey
    expect(Hexlet::Pairs.pair?({ key: 'value' })).to be_falsey
  end

  it 'check_pair' do
    expect(-> { Hexlet::Pairs.car(345) }).to raise_error(NoMethodError)
    expect(-> { Hexlet::Pairs.cdr('asdf') }).to raise_error(NoMethodError)
    expect(-> { Hexlet::Pairs.car({ key: 'value' }) }).to raise_error(NoMethodError)
  end
end
