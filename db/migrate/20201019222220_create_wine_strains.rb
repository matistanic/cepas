class CreateWineStrains < ActiveRecord::Migration[6.0]
  def change
    create_table :wine_strains do |t|
      t.references :wine, foreign_key: true
      t.references :strain, foreign_key: true

      t.timestamps
    end
  end
end
