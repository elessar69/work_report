class Jornada < ActiveRecord::Base
  attr_accessible :horas, :incidencia, :observaciones, :fecha, :pilar, :usuario_id, :cliente_id
  validates_presence_of :horas, :fecha, :pilar, :usuario_id, :cliente_id, :incidencia,
  belongs_to :usuario
  belongs_to :cliente
end
