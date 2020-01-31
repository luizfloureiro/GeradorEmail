class RemoveColunaUsuario < ActiveRecord::Migration[6.0]
  def change
    remove_column :usuarios, :aluno_id
  end
end
