module AlunosHelper
  def gera_opcoes(nome)
    UffMailGenerator.new(nome).gerar
  end
end
