class CreateRecodes < ActiveRecord::Migration[6.1]
  def change
    create_table :recodes do |t|
      t.string :title
      t.text :content
      t.date :date
      t.integer :user_id
      t.time :start_time
      t.time :finish_time

      t.timestamps
    end
  end
end
