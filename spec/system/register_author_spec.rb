require 'rails_helper'

describe 'Create author' do
  it 'Successfull' do
    # Arrange
    # Act
    visit authors_path
    click_on 'New'
    fill_in 'Name', with: 'Stephen King'
    click_on 'Save'
    # Assert
    expect(page).to have_content('Stephen King')
  end

  it 'And name is mandatory' do
    # Arrange
    # Act
    visit authors_path
    click_on 'New'
    fill_in 'Name', with: ''
    click_on 'Save'
    # Assert
    expect(page).to have_content('Failed')
  end

end
  