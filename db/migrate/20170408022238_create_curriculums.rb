class CreateCurriculums < ActiveRecord::Migration[5.0]
  def change
    create_table :curriculums do |t|
      t.string :title
      t.references :student, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
