class AddAnswerFiveToVerificationQuiz < ActiveRecord::Migration
  def change
    add_column :verification_quizzes, :answer_5, :text
  end
end
