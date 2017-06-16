class CreateComensales < ActiveRecord::Migration[5.0]
  def change
    create_table :comensales do |t|
      t.string :nombre
      t.integer :codigo

      t.timestamps
    end
  end
end
