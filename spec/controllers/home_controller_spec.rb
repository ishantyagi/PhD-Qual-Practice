require 'rails_helper'
require 'factory_bot'

RSpec.describe HomeController, type: :controller do
    
    #For create
    describe 'Create Question' do
        it 'adds a new question' do
            post :create, question_bank: {question: 'Test',category: 'RSpec Test',option1: '1', option2: '2', option3: '3', option4: '4', option5: '5', answer: '2'}
            expect(flash[:notice]).to match(/Question was successfully added/)
            expect(response).to redirect_to(questions_path)
        end
    end
    
end
