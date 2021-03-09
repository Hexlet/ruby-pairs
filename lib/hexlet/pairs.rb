require "hexlet/pairs/version"

module Hexlet
  module Pairs
    def self.cons(left, right)
      lambda { |message|
        case message
        when 'car'
          left
        when 'cdr'
          right
        else
          raise "Unknown message #{message}"
        end
      }
    end

    def self.check_pair(pair)
      return if pair?(pair)

      raise NoMethodError, pair.to_s
    end

    def self.car(pair)
      check_pair(pair)
      pair.call('car')
    end

    def self.cdr(pair)
      pair.call('cdr')
    end

    def self.pair?(pair)
      pair.instance_of? Proc
    end

    def self.to_string(pair)
      rec = lambda { |pair_inner|
        return pair_inner.to_s unless pair?(pair_inner)

        left = car(pair_inner)
        right = cdr(pair_inner)
        "(#{rec.call(left)}, #{rec.call(right)})"
      }

      rec.call(pair)
    end
  end
end
