# frozen_string_literal: true

module Pairs
  def self.cons(value1, value2)
    lambda { |message|
      case message
      when 'car'
        value1
      when 'cdr'
        value2
      end
    }
  end

  def self.car(pair)
    checkPair(pair)
    pair.call('car')
  end

  def self.cdr(pair)
    pair.call('cdr')
  end

  def self.isPair(pair)
    pair.instance_of? Proc
  end

  def self.checkPair(pair)
    if !isPair(pair)
      # value = typeof pair === 'object' ? JSON.stringify(pair, null, 2) : String(pair);
      value = "#{pair}"
      raise NoMethodError, value
    end
  end

  def self.toString(pair)

    def self.rec(p)
      if !isPair(p)
        return "#{p}"
      end
      left = car(p)
      right = cdr(p)
      "(#{rec(left)}, #{rec(right)})"
    end

    rec(pair)
  end
end

