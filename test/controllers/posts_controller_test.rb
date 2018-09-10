require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "Should get Index" do
    get :something
    assert_response :success
    assert_not_nil assigns(:posts)
  end
end
