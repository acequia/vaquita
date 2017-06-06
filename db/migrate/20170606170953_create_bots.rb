class CreateBots < ActiveRecord::Migration[5.0]
  def change
    create_table :bots do |t|
      t.references :user
      t.string :chip_id, null: false
      t.string :name

      t.timestamps
    end
  end
end
