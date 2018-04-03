class QuestionsController < ApplicationController
    
    before_action :logged_in_user, only: [:create, :new, :index]
    
    def question_params
        params.require(:question_bank).permit(:category, :question, :option1, :option2, :option3, :option4, :option5, :answer)
    end
    
    def index
        @questions = QuestionBank.all
    end
    
    def new
        # @question = QuestionBank.new
    end
    
    def create
        @question = QuestionBank.create!(question_params)
        flash[:notice] = "Question was successfully added."
        redirect_to admin_index_path
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
