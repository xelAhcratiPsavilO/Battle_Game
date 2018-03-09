def sig_in_and_fight
  visit '/players'
  fill_in 'name1', with: 'Hwoarang'
  fill_in 'name2', with: 'Jinpachi'
  click_button 'Fighters selected'  
end
