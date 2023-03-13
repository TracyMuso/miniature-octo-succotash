class CreateQueryLogs < ActiveRecord::Migration[7.0]
  def change
    create_table :query_logs do |t|
      t.string :search_term
      t.integer :user_id

      t.timestamps
    end
  end
end
