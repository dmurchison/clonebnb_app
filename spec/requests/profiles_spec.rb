require "rails_helper"

RSpec.describe "Profiles", type: :request do
  let(:user) { create(:user) }
  let(:profile) { user.profile }
  
  # before { sign_in user }

  # describe "GET show" do
  #   it "succeeds" do
  #     get profile_path(profile)
  #     expect(response).to be_successful
  #   end
  # end

  describe "PUT update" do
    it "succeeds" do
      profile.update! first_name: "John", last_name: "Doe"
      put profile_path(profile), params: { 
        profile: { 
          first_name: "Jane"
        } 
      }
      expect(profile.reload.first_name).to eq("Jane")
      expect(response).to be_redirect
    end
  end
  
end
