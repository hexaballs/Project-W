class CreateReferences < ActiveRecord::Migration
  def change
    create_table :references do |t|
      t.string :name
      t.integer :age

      t.timestamps
    end
  end
end
