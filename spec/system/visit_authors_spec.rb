require 'rails_helper'

describe 'Visit authors index' do
  it 'Successfull' do
    # Arrange
    # Act
    visit root_path
    click_on 'authors'
    # Assert
    expect(page).to have_content('Authors')
  end

  it 'And see registered authors' do
    Author.create!(name: 'Stephen King')
    Author.create!(name: 'Isaac Asimov')

    visit authors_path

    expect(page).to have_content('Stephen King')
    expect(page).to have_content('Isaac Asimov')
  end
end
  