require 'spec_helper'

describe "UserPages" do
  subject { page }

  describe "signup page" do
    let(:user) { FactoryGirl.create(:user) }
    before { visit signup_path(user) }

    it { should have_selector('h1', 	text: 'Sign up') }
    it { should have_selector('title', 	text: full_title('Sign up')) }
  end

  describe "signup" do
    before { visit signup_path }

    let(:submit) { "Create my account" }

    describe "with invalid information" do
      it "should not create a user" do
        expect { click_button submit }.not_to change(User, :count)
      end
    end

    describe "with valid information" do
      before do
        fill_in "fname",      with: "Dante"
        fill_in "lname",       with: "Refford"
        fill_in "email",           with: "drefford@example.com"
        fill_in "type",   with: "Kid"
        fill_in "password",        with: "foobar"
        fill_in "password_confirmation",    with: "foobar"
      end

      it "should create a user" do
        expect { click_button submit }.to change(User, :count).by(1)
      end
    end
  end
end
