class AddClienteIdToJornadas < ActiveRecord::Migration
  def change
    add_column :jornadas, :cliente_id, :integer
  end
end
