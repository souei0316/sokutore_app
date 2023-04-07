require 'test_helper'

class TrainingColumnsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get training_columns_index_url
    assert_response :success
  end

end
