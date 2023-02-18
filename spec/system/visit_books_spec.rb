require 'rails_helper'

# require "cpf_cnpj"

# print 'Digite o seu CPF: '
# cpf = CPF.new(gets.chomp.to_i)

# if cpf.valid?
#   puts "O CPF #{cpf.formatted} informado é valido"
# else
#   puts "O CPF #{cpf.formatted} informado é invalido"
# end


describe 'Visit books index' do
    it 'Successfull' do
      # Arrange
      # Act
      visit root_path
      click_on 'books'
      # Assert
      expect(page).to have_content('Books')
    end
  end
  