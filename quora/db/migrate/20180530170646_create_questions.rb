
class CreateQuestions < ActiveRecord::Migration[4.2]
  def change
    create_table :questions do |t|
      t.string :title
      t.string :description
      t.integer :user_id
      t.timestamps null:true
  	end
  end
end




