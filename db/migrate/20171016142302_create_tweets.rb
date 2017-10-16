class CreateTweets < ActiveRecord::Migration[5.1]
  def change
    create_table :tweets do |t|
      t.string :subject
      t.string :body
      t.string :username
      t.timestamps
    end
  end
end
