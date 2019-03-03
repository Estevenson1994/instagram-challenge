require 'rails_helper'
require 'web_helper'

RSpec.feature "User logs in", type: feature do
  scenario "User logs in with username" do
    visit "/"

    fill_in "Email", with: "test@test.com"
    fill_in "Password", with: "testtest"
    click_button "Log in"
    p page.body
    expect(page).to have_content("Logged in as test")
  end
end
