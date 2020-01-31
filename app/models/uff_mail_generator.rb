class UffMailGenerator
  attr_accessor :opcoes

  def initialize(nome)
    @nome = nome.downcase
    self.opcoes = []

    sufixo = '@uffmail.com'
    nomes = @nome.split(' ')

    opcoes.push(nomes[0] + nomes[-1] + sufixo)
    opcoes.push(nomes[0] + '.' + nomes[-1] + sufixo)
    opcoes.push(nomes[0] + '_' + nomes[-1] + sufixo)
    opcoes.push(nomes[0].first + '.' + nomes[-1] + sufixo)
    opcoes.push(nomes[0] + '.' + nomes[-1].first + sufixo)
  end
end