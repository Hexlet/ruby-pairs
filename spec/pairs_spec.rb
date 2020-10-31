require 'pairs'

RSpec.describe Pairs do
  it 'cons, car, cdr' do
    pair = Pairs.cons(3, 4)
    expect(Pairs.car(pair)).to be(3)
    expect(Pairs.cdr(pair)).to be(4)
  end

  it 'to_string #1' do
    pair = Pairs.cons(10, -10)
    expect(Pairs.to_string(pair)).to eq('(10, -10)')
  end

  it 'to_string #2' do
    pair = Pairs.cons(Pairs.cons(3, 5), Pairs.cons(1, true))
    expect(Pairs.to_string(pair)).to eq('((3, 5), (1, true))')
  end

  it 'to_string #3' do
    pair = Pairs.cons(10, Pairs.cons(0, 1))
    expect(Pairs.to_string(pair)).to eq('(10, (0, 1))')
  end

  it 'pair?' do
    pair = Pairs.cons(10, 10)
    expect(Pairs.pair?(pair)).to be_truthy
    expect(Pairs.pair?('asdf')).to be_falsey
    expect(Pairs.pair?({ key: 'value' })).to be_falsey
  end

  it 'check_pair' do
    expect(-> { Pairs.car(345) }).to raise_error(NoMethodError)
    expect(-> { Pairs.cdr('asdf') }).to raise_error(NoMethodError)
    expect(-> { Pairs.car({ key: 'value' }) }).to raise_error(NoMethodError)
  end
end
