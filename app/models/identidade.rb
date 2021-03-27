class Identidade < ApplicationRecord
  belongs_to :discente
  def formatted_cpf
    "#{cpf.gsub(/(\d{3})(\d{3})(\d{3})(\d{2})/, '\1.\2.\3-\4')}"
  end
  def string_id
    "#{grr} / #{cpf.gsub(/(\d{3})(\d{3})(\d{3})(\d{2})/, '\1.\2.\3-\4')}"
  end
end
