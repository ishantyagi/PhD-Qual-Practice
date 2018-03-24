class AddOption5 < ActiveRecord::Migration
  def up
    add_column('question_banks','option5',:string)
  end
  def down
    remove_column('question_banks','option5')
  end
end
