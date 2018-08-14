require "rails_helper"
RSpec.feature "Signup users" do
  scenario "with valid credentials" do

  visit "/"
  click_link "Sign up"
  fill_in "Email", with: "shelly407@yahoo.com"
  fill_in "Password", with: "password"
fill_in "Password confirmation", with: "password"
  click_link "Sign up"
 # expect(page).to have_content ("Welcome! You have signed up successfully")
  end

    scenario "user with invalid scenario" do
      visit "/"
      click_link "Sign up"
      fill_in "Email", with: " "
      fill_in "Password", with: "password"
      fill_in "Password confirmation", with: "password"
      click_link "Sign up"

      #expect(page).to have_content("You have not signed up successfully")

    end
end