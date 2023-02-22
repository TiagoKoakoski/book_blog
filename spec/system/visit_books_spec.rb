require 'rails_helper'

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
  