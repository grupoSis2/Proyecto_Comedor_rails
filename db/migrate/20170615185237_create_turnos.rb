class CreateTurnos < ActiveRecord::Migration[5.0]
  def change
    create_table :turnos do |t|
      t.integer :codigoturno
      t.integer :horas

      t.timestamps
    end
  end
end
