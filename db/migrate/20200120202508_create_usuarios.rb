class CreateUsuarios < ActiveRecord::Migration[6.0]
  def change
    create_table :usuarios do |t|
      t.string :username
      t.string :password

      t.timestamps
    end
  end
end
