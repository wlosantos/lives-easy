class CreateLives < ActiveRecord::Migration[6.1]
  def change
    create_table :lives do |t|
      t.string :subject, null: false
      t.text :description
      t.references :author, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
