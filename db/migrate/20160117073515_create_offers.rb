class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.references :user, index: true, foreign_key: true
      t.references :employer, index: true, foreign_key: true

      t.integer :amount

      t.timestamps null: false
    end
  end
end
