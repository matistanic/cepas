require 'test_helper'

class OenologistMagazinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @oenologist_magazine = oenologist_magazines(:one)
  end

  test "should get index" do
    get oenologist_magazines_url
    assert_response :success
  end

  test "should get new" do
    get new_oenologist_magazine_url
    assert_response :success
  end

  test "should create oenologist_magazine" do
    assert_difference('OenologistMagazine.count') do
      post oenologist_magazines_url, params: { oenologist_magazine: { magazine_id: @oenologist_magazine.magazine_id, oenologist_id: @oenologist_magazine.oenologist_id, position: @oenologist_magazine.position } }
    end

    assert_redirected_to oenologist_magazine_url(OenologistMagazine.last)
  end

  test "should show oenologist_magazine" do
    get oenologist_magazine_url(@oenologist_magazine)
    assert_response :success
  end

  test "should get edit" do
    get edit_oenologist_magazine_url(@oenologist_magazine)
    assert_response :success
  end

  test "should update oenologist_magazine" do
    patch oenologist_magazine_url(@oenologist_magazine), params: { oenologist_magazine: { magazine_id: @oenologist_magazine.magazine_id, oenologist_id: @oenologist_magazine.oenologist_id, position: @oenologist_magazine.position } }
    assert_redirected_to oenologist_magazine_url(@oenologist_magazine)
  end

  test "should destroy oenologist_magazine" do
    assert_difference('OenologistMagazine.count', -1) do
      delete oenologist_magazine_url(@oenologist_magazine)
    end

    assert_redirected_to oenologist_magazines_url
  end
end
