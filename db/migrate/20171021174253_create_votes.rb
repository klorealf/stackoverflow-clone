class CreateVotess < ActiveRecord::Migration[5.1]
  def change
        create_table :votes do |t|
      t.references :user, null: false, foreign_key: true
      # The docurmentation included the index, w
      t.references :voteable, polymorphic: true, index: true

      t.timestamps
    end
  end
end
