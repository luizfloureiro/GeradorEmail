module AlunosHelper
  def gera_opcoes(nome)
    gerador = UffMailGenerator.new(nome)
    return gerador.opcoes
  end
end
