require 'test_helper'

class BbsCommentsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get bbs_comments_create_url
    assert_response :success
  end

  test "should get destroy" do
    get bbs_comments_destroy_url
    assert_response :success
  end

end
