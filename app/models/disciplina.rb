require 'active_record'

class Disciplina < ActiveRecord::Base
  has_and_belongs_to_many :discentes, -> { distinct }
  belongs_to :docente
  before_destroy { discentes.clear }
end