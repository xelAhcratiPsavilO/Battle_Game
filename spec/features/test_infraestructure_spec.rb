require 'app'

describe Battle do

  before do
    visit '/'
  end

  feature 'home' do

    scenario 'checks if hompage says Welcome to the Iron Fist Tournament!' do
      expect(page).to have_content 'Welcome to the Iron Fist Tournament!'
    end

    scenario 'checks if users can introduce their names' do
      visit '/players'
      fill_in 'name1', with: 'Hwoarang'
      fill_in 'name2', with: 'Jinpachi'
      click_button 'Fighters selected'
      expect(page).to have_content 'Round one Hwoarang VS Jinpachi FIGHT!'
    end

  end

end
