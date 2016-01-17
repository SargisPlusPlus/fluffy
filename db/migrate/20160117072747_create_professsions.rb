class CreateProfesssions < ActiveRecord::Migration
  def change
    create_table :professsions do |t|
      t.references :user, index: true, foreign_key: true

      t.text :summary
      t.text :education
      t.text :work_history
      t.text :skills

      t.timestamps null: false
    end
  end
end
