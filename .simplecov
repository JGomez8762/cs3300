# test/test_helper.rb
require 'simplecov'

# features/support/env.rb
require 'simplecov'

# .simplecov
SimpleCov.start 'rails' do
  enable_coverage :branch
  primary_coverage :branch
  add_group "Models", "spec/models"
  add_group "Controllers", "spec/controller"
  add_group "Examples", "spec/examples"
  add_group "Features", "spec/features"
end

SimpleCov.minimum_coverage 70