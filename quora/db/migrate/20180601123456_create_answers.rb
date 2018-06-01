class CreateAnswers < ActiveRecord::Migration[4.2]
  def change
    create_table :answers do |t|
      t.string :answers
      t.references :questions
      t.timestamps null:true
  	end
  end
end