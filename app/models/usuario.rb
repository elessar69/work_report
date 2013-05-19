class Usuario < ActiveRecord::Base
  validates_presence_of :nombre, :apellido1,:username,  :password,  :dni, :numero_empleado
  validates :username, :dni, :numero_empleado, :uniqueness => true
  has_many :jornadas
  has_many :clientes

  authenticates_with_sorcery!


  validates_presence_of :username

 	 
  
end
