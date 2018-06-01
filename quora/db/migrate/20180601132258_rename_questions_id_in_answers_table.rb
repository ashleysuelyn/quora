
class RenameQuestionsIdInAnswersTable < ActiveRecord::Migration[4.2]

  def change
  	rename_column :answers, :questions_id, :question_id
  end

end

