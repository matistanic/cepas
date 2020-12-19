class CreateOenologistWines < ActiveRecord::Migration[6.0]
  def change
    create_table :oenologist_wines do |t|
      t.references :oenologist, foreign_key: true
      t.references :wine, foreign_key: true
      t.integer :grade

      t.timestamps
    end
  end
end
