class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :entries, :issues_id, :issue_id
  end
end
