class Migration < ActiveRecord::Migration[6.0]
  def change
  	change_column :alunos, :matricula, :string
  end
end
