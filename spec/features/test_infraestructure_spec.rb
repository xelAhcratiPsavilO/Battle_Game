require 'app'

describe Battle do

  before do
    visit '/'
  end

  feature 'Homepage' do
    scenario 'checks if hompage says Welcome to the Iron Fist Tournament!' do
      expect(page).to have_content 'Welcome to the Iron Fist Tournament!'
    end
  end

  feature 'Names getting' do
    scenario 'checks if users can introduce their names' do
      sig_in_and_fight
      expect(page).to have_content "------------------------------ Hwoarang VS Jinpachi ------------------------------"
    end
  end

  feature 'View HP' do
    scenario 'see Player 2 hit points' do
      sig_in_and_fight
      expect(page).to have_content "Jinpachi: 60HP"
    end
    scenario 'see Player 1 hit points' do
      sig_in_and_fight
      expect(page).to have_content "Hwoarang: 60HP"
    end
  end

end
