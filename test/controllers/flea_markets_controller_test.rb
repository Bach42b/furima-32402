require 'test_helper'

class FleaMarketsControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get flea_markets_index_url
    assert_response :success
  end
end
