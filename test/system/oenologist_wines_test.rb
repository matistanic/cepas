require "application_system_test_case"

class OenologistWinesTest < ApplicationSystemTestCase
  setup do
    @oenologist_wine = oenologist_wines(:one)
  end

  test "visiting the index" do
    visit oenologist_wines_url
    assert_selector "h1", text: "Oenologist Wines"
  end

  test "creating a Oenologist wine" do
    visit oenologist_wines_url
    click_on "New Oenologist Wine"

    fill_in "Grade", with: @oenologist_wine.grade
    fill_in "Oenologist", with: @oenologist_wine.oenologist_id
    fill_in "Wine", with: @oenologist_wine.wine_id
    click_on "Create Oenologist wine"

    assert_text "Oenologist wine was successfully created"
    click_on "Back"
  end

  test "updating a Oenologist wine" do
    visit oenologist_wines_url
    click_on "Edit", match: :first

    fill_in "Grade", with: @oenologist_wine.grade
    fill_in "Oenologist", with: @oenologist_wine.oenologist_id
    fill_in "Wine", with: @oenologist_wine.wine_id
    click_on "Update Oenologist wine"

    assert_text "Oenologist wine was successfully updated"
    click_on "Back"
  end

  test "destroying a Oenologist wine" do
    visit oenologist_wines_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Oenologist wine was successfully destroyed"
  end
end
