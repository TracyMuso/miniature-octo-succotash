class CreateQueryLogs < ActiveRecord::Migration[7.0]
  def change
    create_table :query_logs do |t|
      t.string :search_term

      t.timestamps
    end
    add_index :query_logs, :user_id
  end
end
