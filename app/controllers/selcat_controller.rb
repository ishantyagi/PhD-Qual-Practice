class SelcatController < ApplicationController
    
    def index
        @all_categories = QuestionBank.category
        @sort_by = params[:sort_by]
        @Questions = QuestionBank.order(@sort_by)
    end
    
end
