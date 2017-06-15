class CreateBoos < ActiveRecord::Migration[5.0]
  def change
    create_table :boos do |t|
      t.string :hola

      t.timestamps
    end
  end
end
