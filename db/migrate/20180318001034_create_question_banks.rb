class CreateQuestionBanks < ActiveRecord::Migration
  def change
    create_table :question_banks do |t|
      t.string :category
      t.text :question
      t.string :option1
      t.string :option2
      t.string :option3
      t.string :option4
      t.integer :answer

      t.timestamps null: false
    end
  end
end
