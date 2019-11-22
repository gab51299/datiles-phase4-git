require "application_system_test_case"

class RewardtablesTest < ApplicationSystemTestCase
  setup do
    @rewardtable = rewardtables(:one)
  end

  test "visiting the index" do
    visit rewardtables_url
    assert_selector "h1", text: "Rewardtables"
  end

  test "creating a Rewardtable" do
    visit rewardtables_url
    click_on "New Rewardtable"

    fill_in "Pts", with: @rewardtable.pts
    fill_in "Rewardtype", with: @rewardtable.rewardtype
    click_on "Create Rewardtable"

    assert_text "Rewardtable was successfully created"
    click_on "Back"
  end

  test "updating a Rewardtable" do
    visit rewardtables_url
    click_on "Edit", match: :first

    fill_in "Pts", with: @rewardtable.pts
    fill_in "Rewardtype", with: @rewardtable.rewardtype
    click_on "Update Rewardtable"

    assert_text "Rewardtable was successfully updated"
    click_on "Back"
  end

  test "destroying a Rewardtable" do
    visit rewardtables_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rewardtable was successfully destroyed"
  end
end
