class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.string :body, null: false
      t.references :user, null: false, foreign_key: true
      t.references :question, null: false, foreign_key: true
# minor
      t.timestamps
    end
  end
end
