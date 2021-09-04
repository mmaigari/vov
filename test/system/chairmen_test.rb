require "application_system_test_case"

class ChairmenTest < ApplicationSystemTestCase
  setup do
    @chairman = chairmen(:one)
  end

  test "visiting the index" do
    visit chairmen_url
    assert_selector "h1", text: "Chairmen"
  end

  test "creating a Chairman" do
    visit chairmen_url
    click_on "New Chairman"

    fill_in "Apc", with: @chairman.apc
    fill_in "Apga", with: @chairman.apga
    fill_in "Apm", with: @chairman.apm
    fill_in "Invalid votes", with: @chairman.invalid_votes
    fill_in "Lga", with: @chairman.lga
    fill_in "Nnpp", with: @chairman.nnpp
    fill_in "Pdp", with: @chairman.pdp
    fill_in "Pollingunit", with: @chairman.pollingunit
    fill_in "Prp", with: @chairman.prp
    fill_in "Total votes", with: @chairman.total_votes
    fill_in "User", with: @chairman.user_id
    fill_in "Valid votes", with: @chairman.valid_votes
    fill_in "Ward", with: @chairman.ward
    click_on "Create Chairman"

    assert_text "Chairman was successfully created"
    click_on "Back"
  end

  test "updating a Chairman" do
    visit chairmen_url
    click_on "Edit", match: :first

    fill_in "Apc", with: @chairman.apc
    fill_in "Apga", with: @chairman.apga
    fill_in "Apm", with: @chairman.apm
    fill_in "Invalid votes", with: @chairman.invalid_votes
    fill_in "Lga", with: @chairman.lga
    fill_in "Nnpp", with: @chairman.nnpp
    fill_in "Pdp", with: @chairman.pdp
    fill_in "Pollingunit", with: @chairman.pollingunit
    fill_in "Prp", with: @chairman.prp
    fill_in "Total votes", with: @chairman.total_votes
    fill_in "User", with: @chairman.user_id
    fill_in "Valid votes", with: @chairman.valid_votes
    fill_in "Ward", with: @chairman.ward
    click_on "Update Chairman"

    assert_text "Chairman was successfully updated"
    click_on "Back"
  end

  test "destroying a Chairman" do
    visit chairmen_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Chairman was successfully destroyed"
  end
end
