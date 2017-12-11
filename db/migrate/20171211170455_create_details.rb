class CreateDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :details do |t|
      t.string :details
      t.references :task, foreign_key: true

      t.timestamps
    end
  end
end
