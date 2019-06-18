class CreateSingles < ActiveRecord::Migration[5.2]
  def change
    create_table :singles do |t|
      t.string :title
      t.references :album, foreign_key: true
    end
  end
end
