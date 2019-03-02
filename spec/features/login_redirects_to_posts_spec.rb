require 'rails_helper'

RSpec.feature "Redirect to Posts", type: feature do
    scenario "Can see picture after logging in" do
        log_in
        expect(page).to have_selector('img#post-image')
    end
end
