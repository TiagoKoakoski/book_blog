require 'rails_helper'

describe 'Create book' do
  it 'Successfull' do
    # Arrange
    Author.create!(name: 'Stephen King')
    # Act
    visit books_path
    click_on 'New'
    fill_in 'Title', with: 'It'
    select 'Stephen King', from: 'Author'
    
    click_on 'Save'
    # Assert
    expect(page).to have_content('It - Stephen King')
  end

end
  