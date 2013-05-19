class CreateJornadas < ActiveRecord::Migration
  def change
    create_table :jornadas do |t|
      t.integer :horas
      t.string :incidencia
      t.text :observaciones

      t.timestamps
    end
  end
end
