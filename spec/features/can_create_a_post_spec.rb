require 'rails_helper'
require 'web_helper'

RSpec.feature "Post photo", type: feature do
  scenario "User can post a photo" do
    log_in
    fill_in "caption", with: "First post"
    attach_file('image', "spec/files/images/test.jpg")
    click_button 'Upload'
    expect(page).to have_content("test First post")
  end
end
