def sign_up
  visit "/"
  click_link "Sign_up"
  fill_in "Email", with: "test2@test2.com"
  fill_in "Password", with: "testtest"
  fill_in "Password confirmation", with: "testtest"
  click_button "Sign_up"
end

def log_in
  visit "/"
  fill_in "Email", with: "test@test.com"
  fill_in "Password", with: "testtest"
  click_button "Log in"
end
