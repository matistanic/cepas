class CreateOenologistMagazines < ActiveRecord::Migration[6.0]
  def change
    create_table :oenologist_magazines do |t|
      t.references :oenologist, foreign_key: true
      t.references :magazine, foreign_key: true
      t.string :position

      t.timestamps
    end
  end
end
