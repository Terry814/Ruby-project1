class CreateVerificationQuizzes < ActiveRecord::Migration
  def change
    create_table :verification_quizzes do |t|
      t.integer :user_id
      t.text :answer_1
      t.text :answer_2
      t.text :answer_3
      t.text :answer_4

      t.timestamps
    end
  end
end
