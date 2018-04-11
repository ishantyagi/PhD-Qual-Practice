require 'rails_helper'
require 'factory_bot'

RSpec.configure do |config|
    config.include SessionsHelper
end

RSpec.describe QuestionsController, type: :controller do

    #For create
    describe 'Create Question' do
        it 'should fail to add and redirect to login' do
            post :create, question: {question: 'Test',category: 'RSpec Test', option1: '1', option2: '2', option3: '3', option4: '4', option5: '5', answer: '2'}
            expect(flash[:danger]).to match(/Please log in/)
            expect(response).to redirect_to(login_url)
        end
        
        let!(:user1) { FactoryBot.create(:user, name: 'Vineet', email: 'admin@cs.tamu.edu', password: 'foobar')}
        
        it 'should add a question to the database' do
            log_in user1
            post :create, question: {question: 'Test',category: 'RSpec Test', option1: '1', option2: '2', option3: '3', option4: '4', option5: '5', answer: '2'}
            #post :create, question_bank: {category: 'RSpec Test', option1: '1', option2: '2', option3: '3', option4: '4', option5: '5', answer: '2'}
            #expect(flash[:notice]).to match(/Question was successfully added/)
            expect(response).to redirect_to(questions_path)
        end
    end

    #For update (Pending)
    #describe 'Update Question' do
    #    let!(:question1) { FactoryBot.create(:question_bank, question: 'Test Question',category: 'RSpec Test',option1: '1', option2: '2', option3: '3', option4: '4', option5: '5', answer: '2')}
    #    it 'should update the attributes' do
    #        #put :update, {id: question1.id, question_bank: { 'option2' => '22'}}
    #        put :update, {id: question1.id, question_bank: { 'option2' => '22'}}
    #        expect(flash[:success]).to match(/was successfully updated/)
    #        expect(response).to redirect_to(questions_path(question1.id))
    #    end
    #end
    
    #For Destroy
    describe 'Destory Question' do
        let!(:question1) { FactoryBot.create(:question_bank, question: 'Test Question',category: 'RSpec Test',option1: '1', option2: '2', option3: '3', option4: '4', option5: '5', answer: '2')}
        it 'should delete the question' do
            delete :destroy, {id: question1.id}
            expect(flash[:destroy]).to match(/deleted/)
            expect(response).to redirect_to(questions_path)
        end
    end
    
    #For Show
    describe 'Show Question' do
        let!(:question1) { FactoryBot.create(:question_bank, question: 'Test Question',category: 'RSpec Test',option1: '1', option2: '2', option3: '3', option4: '4', option5: '5', answer: '2')}
        it 'should display the questions' do
            get :show, {id: question1.id}
            expect(response).to redirect_to(questions_path)
        end
    end
    
    #For Edit
    describe 'Edit Question' do
        let!(:question1) { FactoryBot.create(:question_bank, question: 'Test Question',category: 'RSpec Test',option1: '1', option2: '2', option3: '3', option4: '4', option5: '5', answer: '2')}
        it 'should display the questions' do
            get :edit, {id: question1.id}
            #expect(response).to redirect_to(questions_path(question1.id))
        end
    end
    
end
