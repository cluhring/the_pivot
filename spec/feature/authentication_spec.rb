require "rails_helper"

describe "authenticated" do
  include Capybara::DSL

  let!(:user) do
    User.create(first_name: "Bryce",
                last_name: "Holcomb",
                email: "bryce@gmail.com",
                password: "userpassword")
  end

  let!(:admin) do
    Admin.create(first_name: "Rich",
                 last_name: "Shea",
                 email: "rich@gmail.com",
                 password: "adminpassword")
  end

  before(:each) do
    visit root_path
    click_link_or_button "Log In"
  end

  context "user" do
    it "can add them self to the system" do
      visit root_path
      click_link_or_button("Sign Up")
      expect(page).to have_css("#sign-up")

      fill_in "user[first_name]", with: "Joe"
      fill_in "user[last_name]", with: "Doe"
      fill_in "user[email]", with: "Joe@example.com"
      fill_in "user[password]", with: "password"
      fill_in "user[password_confirmation]", with: "password"
      click_link_or_button("Submit")
      within("#flash_notice") do
        expect(page).to have_content("Welcome Joe")
      end
    end

    it "can log in if registered" do
      log_in(user, "userpassword")
      expect(current_path).to eq(root_path)
      within("#flash_notice") do
        expect(page).to have_content("Successfully Logged In")
      end
    end

    it "can not login with invalid credentials" do
      log_in(user, "incorect_password")
      expect(current_path).to eq(root_path)
      within("#flash_error") do
        expect(page).to have_content("Invalid Login Credentials")
      end
    end

    it "can log out" do
      log_in(user, "userpassword")
      expect(current_path).to eq(root_path)
      within("#flash_notice") do
        expect(page).to have_content("Successfully Logged In")
      end
      click_link_or_button "Log Out"
      expect(current_path).to eq(root_path)
      within("#flash_notice") do
        expect(page).to have_content("Successfully Logged Out")
      end
    end
  end

  context "admin" do
    it "can log in if registered" do
      log_in(admin, "adminpassword")
      expect(current_path).to eq(root_path)
      within("#flash_notice") do
        expect(page).to have_content("Successfully Logged In")
      end
    end

    it "can not login with invalid credentials" do
      log_in(admin, "incorect_password")
      expect(current_path).to eq(root_path)
      within("#flash_error") do
        expect(page).to have_content("Invalid Login Credentials")
      end
    end

    it "can log out" do
      log_in(admin, "adminpassword")
      expect(current_path).to eq(root_path)
      within("#flash_notice") do
        expect(page).to have_content("Successfully Logged In")
      end
      click_link_or_button "Log Out"
      expect(current_path).to eq(root_path)
      within("#flash_notice") do
        expect(page).to have_content("Successfully Logged Out")
      end
    end
  end

  def log_in(user_type, password)
    fill_in "session[email]", with: user_type.email
    fill_in "session[password]", with: password
    click_link_or_button "Log In"
  end
end