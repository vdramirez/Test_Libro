require "application_system_test_case"

class OrdesTest < ApplicationSystemTestCase
  setup do
    @orde = ordes(:one)
  end

  test "visiting the index" do
    visit ordes_url
    assert_selector "h1", text: "Ordes"
  end

  test "creating a Orde" do
    visit ordes_url
    click_on "New Orde"

    fill_in " email", with: @orde. email
    fill_in "Address", with: @orde.address
    fill_in "Name", with: @orde.name
    fill_in "Pay type", with: @orde.pay_type
    click_on "Create Orde"

    assert_text "Orde was successfully created"
    click_on "Back"
  end

  test "updating a Orde" do
    visit ordes_url
    click_on "Edit", match: :first

    fill_in " email", with: @orde. email
    fill_in "Address", with: @orde.address
    fill_in "Name", with: @orde.name
    fill_in "Pay type", with: @orde.pay_type
    click_on "Update Orde"

    assert_text "Orde was successfully updated"
    click_on "Back"
  end

  test "destroying a Orde" do
    visit ordes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Orde was successfully destroyed"
  end
end
