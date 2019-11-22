require "application_system_test_case"

class IdtablesTest < ApplicationSystemTestCase
  setup do
    @idtable = idtables(:one)
  end

  test "visiting the index" do
    visit idtables_url
    assert_selector "h1", text: "Idtables"
  end

  test "creating a Idtable" do
    visit idtables_url
    click_on "New Idtable"

    fill_in "Idtype", with: @idtable.idtype
    fill_in "Minbal", with: @idtable.minbal
    click_on "Create Idtable"

    assert_text "Idtable was successfully created"
    click_on "Back"
  end

  test "updating a Idtable" do
    visit idtables_url
    click_on "Edit", match: :first

    fill_in "Idtype", with: @idtable.idtype
    fill_in "Minbal", with: @idtable.minbal
    click_on "Update Idtable"

    assert_text "Idtable was successfully updated"
    click_on "Back"
  end

  test "destroying a Idtable" do
    visit idtables_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Idtable was successfully destroyed"
  end
end
