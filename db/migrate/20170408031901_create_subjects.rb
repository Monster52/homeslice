class CreateSubjects < ActiveRecord::Migration[5.0]
  def change
    create_table :subjects do |t|
      t.string :title
      t.string :work
      t.references :curriculum, foreign_key: true

      t.timestamps
    end
  end
end
