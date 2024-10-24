# frozen_string_literal: true

require "record_list"
require "record_list/test/matchers"

require_relative "support/activerecord_setup"

RSpec.configure do |config|
  config.include RecordList::Test::Matchers

  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expose_dsl_globally = true

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
