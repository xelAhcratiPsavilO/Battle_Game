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
    scenario 'see Player1 hit points' do
      sig_in_and_fight
      expect(page).to have_content "Hwoarang: 60HP"
    end
    scenario 'see Player2 hit points' do
      sig_in_and_fight
      expect(page).to have_content "Jinpachi: 60HP"
    end
  end

  # feature 'Attack' do
  #   scenario 'attack Player2 and receive confirmation' do
  #     sig_in_and_fight
  #     click_link('https://d1u5p3l4wpay3k.cloudfront.net/awesomenauts_gamepedia/1/1b/UI_Skillbutton_Brute_Attack.PNG')
  #     visit '/attack'
  #     expect(page).to have_content 'Hwoarang attacked Jinpachi'
  #   end
  # end

end
