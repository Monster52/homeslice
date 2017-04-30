class CreateSchedules < ActiveRecord::Migration[5.0]
  def change
    create_table :schedules do |t|
      t.string :title
      t.string :subject
      t.string :work
      t.datetime :date
      t.references :curriculum, foreign_key: true

      t.timestamps
    end
  end
end
