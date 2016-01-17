class CreateAbouts < ActiveRecord::Migration
  def change
    create_table :abouts do |t|
      t.references :user, index: true, foreign_key: true

      t.integer :salary_range
      t.string :looking_for
      t.integer :travel_range
      t.boolean :transportation
      t.string :sex
      t.string :race
      t.boolean :veteran
      t.boolean :felony
      t.boolean :disability
      t.boolean :us_citizen

      t.timestamps null: false
    end
  end
end
