class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nombre_cliente
      t.string :direccion_servicio

      t.timestamps
    end
  end
end
