class AddSearchedAtColumnToQueryLogs < ActiveRecord::Migration[7.0]
  def change
    add_column :query_logs, :searched_at, :datetime
  end
end
