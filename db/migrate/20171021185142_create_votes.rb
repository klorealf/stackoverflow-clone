class CreateVotes < ActiveRecord::Migration[5.1]
  def change
    create_table :votes do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :vote_direction, inclusion: { in: [0, 1] }
      # The docurmentation included the index with this even with t.references
      t.references :voteable, polymorphic: true, index: true

      t.timestamps
    end
  end
end
