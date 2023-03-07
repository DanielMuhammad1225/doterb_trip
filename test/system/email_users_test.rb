require "application_system_test_case"

class EmailUsersTest < ApplicationSystemTestCase
  setup do
    @email_user = email_users(:one)
  end

  test "visiting the index" do
    visit email_users_url
    assert_selector "h1", text: "Email Users"
  end

  test "creating a Email user" do
    visit email_users_url
    click_on "New Email User"

    fill_in "Email", with: @email_user.email
    fill_in "Login", with: @email_user.login
    fill_in "Name", with: @email_user.name
    click_on "Create Email user"

    assert_text "Email user was successfully created"
    click_on "Back"
  end

  test "updating a Email user" do
    visit email_users_url
    click_on "Edit", match: :first

    fill_in "Email", with: @email_user.email
    fill_in "Login", with: @email_user.login
    fill_in "Name", with: @email_user.name
    click_on "Update Email user"

    assert_text "Email user was successfully updated"
    click_on "Back"
  end

  test "destroying a Email user" do
    visit email_users_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Email user was successfully destroyed"
  end
end
