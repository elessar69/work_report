class AddFechaColumnToJornadas < ActiveRecord::Migration
  def change
    add_column :jornadas, :fecha, :date
  end
end
