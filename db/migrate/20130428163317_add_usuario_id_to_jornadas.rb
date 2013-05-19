class AddUsuarioIdToJornadas < ActiveRecord::Migration
  def change
    add_column :jornadas, :usuario_id, :integer
  end
end
