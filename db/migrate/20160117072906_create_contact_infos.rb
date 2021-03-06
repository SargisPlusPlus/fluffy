class CreateContactInfos < ActiveRecord::Migration
  def change
    create_table :contact_infos do |t|
      t.references :user, index: true, foreign_key: true

      t.string :phone
      t.string :website
      t.string :location

      t.timestamps null: false
    end
  end
end
