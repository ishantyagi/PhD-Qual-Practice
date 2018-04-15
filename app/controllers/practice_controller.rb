class PracticeController < ApplicationController
    
    def question_params
        params.require(:question_bank).permit(:category, :question, :option1, :option2, :option3, :option4, :option5, :answer)
    end

    def index
        # @questions = QuestionBank.all
        @questions = QuestionBank.find(params[:category])
    end

    def show
        # @questions = QuestionBank.all
        @questions = QuestionBank.find(params[:category])
    end
    
end
