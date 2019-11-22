require "application_system_test_case"

class PersonalsTest < ApplicationSystemTestCase
  setup do
    @personal = personals(:one)
  end

  test "visiting the index" do
    visit personals_url
    assert_selector "h1", text: "Personals"
  end

  test "creating a Personal" do
    visit personals_url
    click_on "New Personal"

    fill_in "Email", with: @personal.email
    fill_in "Idtype", with: @personal.idtype
    fill_in "Mobile", with: @personal.mobile
    fill_in "Rewardtype", with: @personal.rewardtype
    fill_in "Tel", with: @personal.tel
    click_on "Create Personal"

    assert_text "Personal was successfully created"
    click_on "Back"
  end

  test "updating a Personal" do
    visit personals_url
    click_on "Edit", match: :first

    fill_in "Email", with: @personal.email
    fill_in "Idtype", with: @personal.idtype
    fill_in "Mobile", with: @personal.mobile
    fill_in "Rewardtype", with: @personal.rewardtype
    fill_in "Tel", with: @personal.tel
    click_on "Update Personal"

    assert_text "Personal was successfully updated"
    click_on "Back"
  end

  test "destroying a Personal" do
    visit personals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Personal was successfully destroyed"
  end
end
