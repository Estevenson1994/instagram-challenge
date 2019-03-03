require 'rails_helper'
require 'web_helper'

RSpec.feature "User signs up", type: feature do
  scenario "user signs up with firstname, lastname and username" do
    visit "/"
    click_link "Sign up"
    fill_in "First name", with: "Test2"
    fill_in "Last name", with: "Test2"
    fill_in "User name", with: "Ezza"
    fill_in "Email", with: "test2@test.com"
    fill_in "Password", with: "testtest"
    fill_in "Password confirmation", with: "testtest"
    click_button "Sign up"
    p page.body
    expect(page).to have_content("Logged in as Ezza")
  end
end
