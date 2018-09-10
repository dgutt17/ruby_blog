require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #    assert true
  # end
  test "If title is there" do
    post = Post.create(:title => "", :body => "")
    assert post.valid?
  end

  test "If body is long enough" do
    post = Post.create(:title => "Some Title", :body => "hhhhhhhhhhhhhhhhhhhhhhhhh")
    assert post.valid?
  end
end
