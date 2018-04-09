require 'rails_helper'

RSpec.describe SessionsController, type: :controller do

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end
  
  describe 'User sign_in' do
    let!(:user1) { FactoryBot.create(:user, name: 'test1', email: 'test@testing.com', password: 'testing')}
    it 'creates a new user session' do
      #log_in user1
      post :create, session: {name: 'test1', email: 'test@testing.com', password: 'testing'}
      #log_in(user)
      expect(response).to redirect_to(user1)
    end
    
    it 'invalidates the non-existent user' do
      post :create, session: {name: 'test2', email: 'test2@testing.com', password: 'testing2'}
      expect(flash[:danger]).to match(/Invalid email\/password combination/)
      expect(response).to render_template(:new)
    end
    
  end
  
  describe 'Delete user' do
    it 'should destroy' do
      delete :destroy
      expect(response).to redirect_to(root_url)
    end
  end
end