class CreateEmployerProfiles < ActiveRecord::Migration
  def change
    create_table :employer_profiles do |t|
      t.references :employer, index: true, foreign_key: true

      t.string :title
      t.string :logo
      t.string :location
      t.string :link
      t.string :summary

      t.timestamps null: false
    end
  end
end
