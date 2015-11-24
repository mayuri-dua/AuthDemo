class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer  :user_id
      t.string   :details
      t.datetime :occurs_at

      t.timestamps null: false
    end
  end
end
