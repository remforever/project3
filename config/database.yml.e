# SQLite version 3.x
development:
  adapter: <%= "jdbc" if defined?(JRUBY_PLATFORM) %>sqlite3
  database: db/development.sqlite3
  timeout: 5000

# Warning: The database defined as 'test' will be erased and
# re-generated from your development database when you run 'rake'.
# Do not set this db to the same as development or production.
test:
  adapter: <%= "jdbc" if defined?(JRUBY_PLATFORM) %>sqlite3
  database: db/test.sqlite3
  timeout: 5000

# Warning: The database defined as 'cucumber' will be erased and
# re-generated from your development database when you run 'rake'.
# Do not set this db to the same as development or production.
cucumber:
  adapter: <%= "jdbc" if defined?(JRUBY_PLATFORM) %>sqlite3
  database: db/cucumber.sqlite3
  timeout: 5000

production:
  adapter: <%= "jdbc" if defined?(JRUBY_PLATFORM) %>sqlite3
  database: db/production.sqlite3
  timeout: 5000