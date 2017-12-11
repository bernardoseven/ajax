class CreateFinishes < ActiveRecord::Migration[5.1]
  def change
    create_table :finishes do |t|
      t.boolean :active, default: false
      t.references :task, foreign_key: true

      t.timestamps
    end
  end
end
