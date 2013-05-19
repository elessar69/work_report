class Cliente < ActiveRecord::Base
  attr_accessible :direccion_servicio, :nombre_cliente
  validates_presence_of :direccion_servicio, :nombre_cliente
  validates :direccion_servicio, :nombre_cliente, :uniqueness => true
  has_many :jornadas
  has_many :usuarios
end
