class AddForeignKeyToJornadas < ActiveRecord::Migration
  def change
  add_index :jornadas, :usuario_id
  add_index :jornadas, :cliente_id
  end
end
