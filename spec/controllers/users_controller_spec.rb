require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe "show function" do
    it "shows questions" do
      get :show
      expect(response).to redirect_to(questions_path)
    end
  end
  
  #incomplete
  describe "Update User" do
    let!(:user1) { FactoryBot.create(:user, name: 'test1', email: 'test@testing.com', password: 'testing')}
    it "updates the profile" do
      put :update, {id: user1.id, :user => { 'name' => 'test2'}}
      expect(flash[:notice]).to match(/Profile updated/)
      expect(response).to redirect_to(user1.id)
    end
  end
  
  describe "User confirm " do
    it "logged_in_user" do
      logged_in = false
      expect(flash[:notice]).to match(/Please log in/)
      expect(response).to redirect_to(login_url)
    end
  end
  
  #incomplete
  #describe "check correctness" do
  #  let!(:user1) { FactoryBot.create(:user, name: 'test1', email: 'test@testing.com', password: 'testing')}
  #  it "confirms correct user" do
  #    get :edit, {id: user1.id}
  #    # unless @user == current_user ??
  #    expect(response).to redirect_to(root_url) 
  #  end
  #end
  
end
