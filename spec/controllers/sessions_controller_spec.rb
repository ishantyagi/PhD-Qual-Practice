require 'rails_helper'

RSpec.describe SessionsController, type: :controller do

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end
  
  describe 'Create Login' do
    let!(:user1) { FactoryBot.create(:user, name: 'test1', email: 'test@testing.com', password: 'testing')}
    it 'creates a new user session' do
      post :create
      expect(response).to redirect_to(user1.id)
    end
  end
  
  describe 'Delete user' do
    it 'should destroy' do
      delete :destroy
      expect(response).to redirect_to(root_url)
    end
  end
end
