class SelcatController < ApplicationController
    
    def index
        @all_categories = QuestionBank.category
    end
    
end
