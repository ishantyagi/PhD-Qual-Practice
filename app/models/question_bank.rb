class QuestionBank < ActiveRecord::Base
    def self.category
        return ['Networks', 'Algorithms', 'Operating Systems', 'Software']
    end
end
