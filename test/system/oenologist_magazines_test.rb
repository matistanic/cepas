require "application_system_test_case"

class OenologistMagazinesTest < ApplicationSystemTestCase
  setup do
    @oenologist_magazine = oenologist_magazines(:one)
  end

  test "visiting the index" do
    visit oenologist_magazines_url
    assert_selector "h1", text: "Oenologist Magazines"
  end

  test "creating a Oenologist magazine" do
    visit oenologist_magazines_url
    click_on "New Oenologist Magazine"

    fill_in "Magazine", with: @oenologist_magazine.magazine_id
    fill_in "Oenologist", with: @oenologist_magazine.oenologist_id
    fill_in "Position", with: @oenologist_magazine.position
    click_on "Create Oenologist magazine"

    assert_text "Oenologist magazine was successfully created"
    click_on "Back"
  end

  test "updating a Oenologist magazine" do
    visit oenologist_magazines_url
    click_on "Edit", match: :first

    fill_in "Magazine", with: @oenologist_magazine.magazine_id
    fill_in "Oenologist", with: @oenologist_magazine.oenologist_id
    fill_in "Position", with: @oenologist_magazine.position
    click_on "Update Oenologist magazine"

    assert_text "Oenologist magazine was successfully updated"
    click_on "Back"
  end

  test "destroying a Oenologist magazine" do
    visit oenologist_magazines_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Oenologist magazine was successfully destroyed"
  end
end
