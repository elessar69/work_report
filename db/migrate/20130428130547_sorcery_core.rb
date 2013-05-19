class SorceryCore < ActiveRecord::Migration
  def self.up
    create_table :usuarios do |t|
      t.string :username,         :null => false  # if you use another field as a username, for example email, you can safely remove this field.
      t.string :email,            :default => nil # if you use this field as a username, you might want to make it :null => false.
      t.string :crypted_password, :default => nil
      t.string :salt,             :default => nil
      t.string :nombre
      t.string :apellido1
      t.string :apellido2
      t.string :numero_empleado
      t.string :dni
      t.boolean :derechos
      t.string :unidad
      t.string :gestor

      t.timestamps
    end
  end

  def self.down
    drop_table :usuarios
  end
end