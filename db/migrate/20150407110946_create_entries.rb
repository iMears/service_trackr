class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :posted_by
      t.text :body
      t.references :issues, index: true

      t.timestamps
    end
  end
end
