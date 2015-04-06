class AddColumnToIssues < ActiveRecord::Migration
  def change
    add_column(:issues, :created_at, :datetime)
    add_column(:issues, :updated_at, :datetime)
  end
end
