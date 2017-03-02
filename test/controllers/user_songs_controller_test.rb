require 'test_helper'

class UserSongsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_songs_index_url
    assert_response :success
  end

end
