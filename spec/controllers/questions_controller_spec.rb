require 'rails_helper'
require 'factory_bot'

RSpec.describe QuestionsController, type: :controller do

    #For create
    describe 'Create Question' do
        before(:all) do
            logged_in = true
        end
        it 'adds a new question' do
            post :create, question_bank: {question: 'Test',category: 'RSpec Test',option1: '1', option2: '2', option3: '3', option4: '4', option5: '5', answer: '2'}
            #expect(flash[:notice]).to match(/Question was successfully created/)
            expect(response).to redirect_to(questions_path)
        end
    end

    #For update 
    describe 'Update Question' do
        let!(:question1) { FactoryBot.create(:question_bank, question: 'Test', category: 'RSpec Test', option1: '1', option2: '2', option3: '3', option4: '4', option5: '5', answer: '2')}
        it 'should update the attributes' do
            put :update, {id: question1.id, :question_bank => { 'option2' => '22'}}
            expect(flash[:notice]).to match(/was successfully updated/)
            expect(response).to redirect_to(questions_path(question1.id))
        end
    end
    
    #For Destroy
    describe 'Destory Question' do
        let!(:question1) { FactoryBot.create(:question_bank, question: 'Test Question',category: 'RSpec Test',option1: '1', option2: '2', option3: '3', option4: '4', option5: '5', answer: '2')}
        it 'should delete the question' do
            delete :destroy, {id: question1.id}
            expect(flash[:notice]).to match(/deleted/)
            expect(response).to redirect_to(questions_path)
        end
    end
    
    #For user confimation
    #describe 'Confirm user' do
    #    it 'should check user validity' do
    #        logged_in = false
    #        expect(flash[:danger]).to match(/Please log in/)
    #        expect(response).to redirect_to(login_url)
    #    end
    #end
    
end
