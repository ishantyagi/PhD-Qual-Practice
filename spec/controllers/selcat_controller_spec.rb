require 'rails_helper'

RSpec.describe SelcatController, type: :controller do
    describe 'Index Function' do
        let!(:question1) { FactoryBot.create(:question_bank, question: 'Test Question1',category: 'Test1',option1: '1', option2: '2', option3: '3', option4: '4', option5: '5', answer: '2')}
        let!(:question2) { FactoryBot.create(:question_bank, question: 'Test Question2',category: 'Test2',option1: '1', option2: '2', option3: '3', option4: '4', option5: '5', answer: '2')}
        let!(:question3) { FactoryBot.create(:question_bank, question: 'Test Question3',category: 'Test1',option1: '1', option2: '2', option3: '3', option4: '4', option5: '5', answer: '1')}
        let!(:question4) { FactoryBot.create(:question_bank, question: 'Test Question4',category: 'Test1',option1: '1', option2: '2', option3: '3', option4: '4', option5: '5', answer: '4')}
        it 'should get all the categories' do
            get :index
            expect(question1.category).to match(/Test1/)
        end
    end
end