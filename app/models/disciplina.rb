class Disciplina < ApplicationRecord
  has_and_belongs_to_many :discentes, -> { distinct }
  belongs_to :docente, optional: true
  before_destroy { discentes.clear }
end