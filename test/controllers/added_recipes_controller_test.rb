require 'test_helper'

class AddedRecipesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get added_recipes_index_url
    assert_response :success
  end

  test "should get new" do
    get added_recipes_new_url
    assert_response :success
  end

  test "should get create" do
    get added_recipes_create_url
    assert_response :success
  end

end
