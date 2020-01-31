class AdicionaRefUsuarioEmAlunos < ActiveRecord::Migration[6.0]
  def change
    add_reference :usuarios, :aluno, foreign_key: true
  end
end
