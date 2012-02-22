class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :q_value
      t.integer :user_id

      t.timestamps
    end
  end
end
