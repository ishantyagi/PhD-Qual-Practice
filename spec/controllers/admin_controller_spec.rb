require 'rails_helper'

describe AdminController do

  describe 'Create Question' do

    it 'should create a question entry' do
      post :create, question: { question: 'Test Question',category: 'RSpec Test',option1: '1', option2: '2', option3: '3', option4: '4', option5: '5', answer: '2'}
      expect(flash[:notice]).to match(/Question was successfully added/)
      expect(response).to redirect_to(admin_path)
    end

  end

end
