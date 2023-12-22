class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.integer :year_publication
      t.references :autor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
