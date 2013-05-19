class AddPilarColumnToJornadas < ActiveRecord::Migration
  def change
    add_column :jornadas, :pilar, :string
  end
end
