require "application_system_test_case"

class CouncillorsTest < ApplicationSystemTestCase
  setup do
    @councillor = councillors(:one)
  end

  test "visiting the index" do
    visit councillors_url
    assert_selector "h1", text: "Councillors"
  end

  test "creating a Councillor" do
    visit councillors_url
    click_on "New Councillor"

    fill_in "Apc", with: @councillor.apc
    fill_in "Apga", with: @councillor.apga
    fill_in "Apm", with: @councillor.apm
    fill_in "Invalid votes", with: @councillor.invalid_votes
    fill_in "Lga", with: @councillor.lga
    fill_in "Nnpp", with: @councillor.nnpp
    fill_in "Pdp", with: @councillor.pdp
    fill_in "Pollingunit", with: @councillor.pollingunit
    fill_in "Prp", with: @councillor.prp
    fill_in "Total votes", with: @councillor.total_votes
    fill_in "User", with: @councillor.user_id
    fill_in "Valid votes", with: @councillor.valid_votes
    fill_in "Ward", with: @councillor.ward
    click_on "Create Councillor"

    assert_text "Councillor was successfully created"
    click_on "Back"
  end

  test "updating a Councillor" do
    visit councillors_url
    click_on "Edit", match: :first

    fill_in "Apc", with: @councillor.apc
    fill_in "Apga", with: @councillor.apga
    fill_in "Apm", with: @councillor.apm
    fill_in "Invalid votes", with: @councillor.invalid_votes
    fill_in "Lga", with: @councillor.lga
    fill_in "Nnpp", with: @councillor.nnpp
    fill_in "Pdp", with: @councillor.pdp
    fill_in "Pollingunit", with: @councillor.pollingunit
    fill_in "Prp", with: @councillor.prp
    fill_in "Total votes", with: @councillor.total_votes
    fill_in "User", with: @councillor.user_id
    fill_in "Valid votes", with: @councillor.valid_votes
    fill_in "Ward", with: @councillor.ward
    click_on "Update Councillor"

    assert_text "Councillor was successfully updated"
    click_on "Back"
  end

  test "destroying a Councillor" do
    visit councillors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Councillor was successfully destroyed"
  end
end
