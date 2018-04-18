require 'rails_helper'

RSpec.describe PracticeController, type: :controller do
  
  #index
  describe 'questions for practice' do
    let!(:question1) { FactoryBot.create(:question_bank, question: 'Test Question', category: 'cat1', option1: '1', option2: '2', option3: '3', option4: '4', option5: '5', answer: '2')}
    it 'get questions of a given category' do
      get :index, categories: {'cat1' => 1}
      expect(@questions).to eql(question1)
    end
  end
  
  #show
  describe 'questions for practice' do
    let!(:question1) { FactoryBot.create(:question_bank, question: 'Test Question', category: 'cat1', option1: '1', option2: '2', option3: '3', option4: '4', option5: '5', answer: '2')}
    it 'get questions of a given category' do
      get :index, {id: question1.id}, categories: {'cat1' => 1}
      expect(@questions).to eql(question1)
    end
  end
  
end
