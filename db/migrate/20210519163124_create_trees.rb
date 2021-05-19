class CreateTrees < ActiveRecord::Migration[6.1]
  def change
    create_table :trees do |t|
      t.integer :number
      t.timestamps
    end
  end
end
