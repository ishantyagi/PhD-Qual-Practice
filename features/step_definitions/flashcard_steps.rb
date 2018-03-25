Given /^the following questions exist:$/ do |questions_table|
  questions_table.hashes.each do |question|
    # each returned element will be a hash whose key is the table header.
    # you should arrange to add that movie to the database here.
    # hint: look at movies_controller#create for a hint toward the one-line solution

    QuestionBank.create! question
  end
end
