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

    it 'And see registered books' do
      author = Author.create!(name: 'Stephen King')
      # author = Author.create!(name: 'Isaac Asimov')
      Book.create!(title: 'It', author_id: author.id)
  
      visit books_path
  
      expect(page).to have_content('Stephen King')
      expect(page).to have_content('It')
    end
    
    it 'And see details' do
      author = Author.create!(name: 'Stephen King')
      book = Book.create!(title: 'It', author_id: author.id)
      Book.create!(title: 'Cujo', author_id: author.id)
      
      visit books_path
      click_on 'It'
  
      expect(page).to have_content('Stephen King')
      expect(page).to have_content('It')
      expect(page).not_to have_content('Cujo')
    end
  end
  