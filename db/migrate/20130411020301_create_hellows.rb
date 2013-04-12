class CreateHellows < ActiveRecord::Migration
  def change
    create_table :hellows do |t|
      t.string :name
      t.datetime :start_at
      t.datetime :end_at
      t.text :memo
      t.enum :category

      t.timestamps
    end
  end
end
