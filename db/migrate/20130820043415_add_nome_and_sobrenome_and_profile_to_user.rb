class AddNomeAndSobrenomeAndProfileToUser < ActiveRecord::Migration
  def change
  	add_column :users, :nome, :string
  	add_column :users, :sobrenome, :string
  	add_column :users, :profile, :string
  end
end
