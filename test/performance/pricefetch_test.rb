require 'test_helper'
require 'rails/performance_test_help'

class PricefetchTest < ActionDispatch::PerformanceTest
  # Refer to the documentation for all available options
  self.profile_options = { :formats=>[:call_tree] }
  def test_appraised_prices_array
    get '/users/show_unique_appraised_prices_array'
  end
  def test_appraised_prices_array2
    get '/users/show_unique_appraised_prices_array2'
  end
  def test_appraised_prices_array3
    get '/users/show_unique_appraised_prices_array3'
  end
end
