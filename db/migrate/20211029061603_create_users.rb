class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.integer :age
      t.string :name
      t.datetime :last_train

      t.timestamps
    end
  end
end
