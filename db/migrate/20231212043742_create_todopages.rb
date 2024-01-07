class CreateTodopages < ActiveRecord::Migration[6.1]
  def change
    create_table :todopages do |t|
      t.text :text
      t.integer :user_id
      
      t.timestamps
    end
  end
end
