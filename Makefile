install:
	bundle

test:
	bundle exec rspec

lint:
	bundle exec rubocop .
