require 'test_helper'

class OenologistWinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @oenologist_wine = oenologist_wines(:one)
  end

  test "should get index" do
    get oenologist_wines_url
    assert_response :success
  end

  test "should get new" do
    get new_oenologist_wine_url
    assert_response :success
  end

  test "should create oenologist_wine" do
    assert_difference('OenologistWine.count') do
      post oenologist_wines_url, params: { oenologist_wine: { grade: @oenologist_wine.grade, oenologist_id: @oenologist_wine.oenologist_id, wine_id: @oenologist_wine.wine_id } }
    end

    assert_redirected_to oenologist_wine_url(OenologistWine.last)
  end

  test "should show oenologist_wine" do
    get oenologist_wine_url(@oenologist_wine)
    assert_response :success
  end

  test "should get edit" do
    get edit_oenologist_wine_url(@oenologist_wine)
    assert_response :success
  end

  test "should update oenologist_wine" do
    patch oenologist_wine_url(@oenologist_wine), params: { oenologist_wine: { grade: @oenologist_wine.grade, oenologist_id: @oenologist_wine.oenologist_id, wine_id: @oenologist_wine.wine_id } }
    assert_redirected_to oenologist_wine_url(@oenologist_wine)
  end

  test "should destroy oenologist_wine" do
    assert_difference('OenologistWine.count', -1) do
      delete oenologist_wine_url(@oenologist_wine)
    end

    assert_redirected_to oenologist_wines_url
  end
end
