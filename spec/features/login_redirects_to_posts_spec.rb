require 'rails_helper'
require 'web_helper'

RSpec.feature "Redirect to Posts", type: feature do
  scenario "Can see picture after logging in" do
    log_in
    expect(page).to have_content("InstaClone")
  end
end
