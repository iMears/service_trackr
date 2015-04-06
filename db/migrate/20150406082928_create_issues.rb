class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.string :type
      t.string :subject
      t.text :description
      t.string :priority
      t.string :status
    end
  end
end
