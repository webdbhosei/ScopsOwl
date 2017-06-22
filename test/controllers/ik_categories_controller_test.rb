require 'test_helper'

class IkCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ik_category = ik_categories(:one)
  end

  test "should get index" do
    get ik_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_ik_category_url
    assert_response :success
  end

  test "should create ik_category" do
    assert_difference('IkCategory.count') do
      post ik_categories_url, params: { ik_category: { name: @ik_category.name } }
    end

    assert_redirected_to ik_category_url(IkCategory.last)
  end

  test "should show ik_category" do
    get ik_category_url(@ik_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_ik_category_url(@ik_category)
    assert_response :success
  end

  test "should update ik_category" do
    patch ik_category_url(@ik_category), params: { ik_category: { name: @ik_category.name } }
    assert_redirected_to ik_category_url(@ik_category)
  end

  test "should destroy ik_category" do
    assert_difference('IkCategory.count', -1) do
      delete ik_category_url(@ik_category)
    end

    assert_redirected_to ik_categories_url
  end
end
