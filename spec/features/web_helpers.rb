def sign_in_with_name
  visit('/')
  fill_in :player_1_name, with: 'Luc'
  click_button 'Submit'
end
