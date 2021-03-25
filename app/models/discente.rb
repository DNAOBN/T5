class Discente < ApplicationRecord
  has_and_belongs_to_many :disciplinas, -> { distinct }
  has_one :identidade
  before_destroy { disciplinas.clear }
end
