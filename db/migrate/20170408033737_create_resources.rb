class CreateResources < ActiveRecord::Migration[5.0]
  def change
    create_table :resources do |t|
      t.string :title
      t.string :type
      t.string :area
      t.references :subject, foreign_key: true

      t.timestamps
    end
  end
end
