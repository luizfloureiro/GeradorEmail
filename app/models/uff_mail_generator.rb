class UffMailGenerator
  SUFIXO ||= '@uffmail.com'

  attr_reader :opcoes

  def initialize(nome)
    @nome = nome.to_s.downcase
    @opcoes = []
    self
  end


  def gerar
    nomes = @nome.split(' ')

    opcoes.push(nomes[0] + nomes[-1] + SUFIXO)
    opcoes.push(nomes[0] + '.' + nomes[-1] + SUFIXO)
    opcoes.push(nomes[0] + '_' + nomes[-1] + SUFIXO)
    opcoes.push(nomes[0].first + '.' + nomes[-1] + SUFIXO)
    opcoes.push(nomes[0] + '.' + nomes[-1].first + SUFIXO)
  end
end