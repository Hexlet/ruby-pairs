# ruby-pairs

[![github action status](https://github.com/hexlet-components/ruby-pairs/workflows/CI/badge.svg)](https://github.com/hexlet-components/ruby-pairs/actions)

## Usage example

```ruby
require 'pairs'

pair = Pairs.cons(3, 5)

puts Pairs.pair?(pair) # => true

puts Pairs.car(pair) # => 3
puts Pairs.cdr(pair) # => 5

puts Pairs.to_string(pair) # => '(3, 5)'
```

[![Hexlet Ltd. logo](https://raw.githubusercontent.com/Hexlet/hexletguides.github.io/master/images/hexlet_logo128.png)](https://ru.hexlet.io/pages/about?utm_source=github&utm_medium=link&utm_campaign=ruby-pairs)

This repository is created and maintained by the team and the community of Hexlet, an educational project. [Read more about Hexlet (in Russian)](https://ru.hexlet.io/pages/about?utm_source=github&utm_medium=link&utm_campaign=ruby-pairs).
