class QuestionsController < ApplicationController
    
    before_action :logged_in_user, only: [:create, :new, :index]
    
    def question_params
        params.require(:question).permit(:category, :question, :option1, :option2, :option3, :option4, :option5, :answer)
    end
    
    def show
        @questions = QuestionBank.all
        redirect_to questions_path
    end
    
    def index
        @questions = QuestionBank.all
    end
    
    def new
        # @question = QuestionBank.new
    end
    
    def create
        @question = QuestionBank.create!(question_params)
        flash[:success] = "Question was successfully added."
        redirect_to questions_path
    end
    
    def edit
        @question = QuestionBank.find(params[:id])
       # redirect_to questions_path(@question)
    end
    
    def update
        @question = QuestionBank.find(params[:id])
        @question.update_attributes!(question_params)
        flash[:success] = "Question-#{@question.id} was successfully updated."
        redirect_to questions_path(@question)
    end
    
    def destroy
        @question = QuestionBank.find(params[:id])
        @question.destroy
        flash[:destroy] = "Question-'#{@question.id}' deleted."
        redirect_to questions_path
    end
    
    private
    
        # Confirms a logged-in user.
        def logged_in_user
          unless logged_in?
            flash[:danger] = "Please log in."
            redirect_to login_url
          end
        end
end
