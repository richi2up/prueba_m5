class CreateTweets < ActiveRecord::Migration[8.0]
  def change
    create_table :tweets do |t|
      t.text :description
      t.string :user_name

      t.timestamps
    end
  end
end
