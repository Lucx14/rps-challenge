feature 'Click to play' do  
  # As a marketeer
  # So that I can enjoy myself away from the daily grind
  # I would like to be able to play rock/paper/scissors
  scenario 'user will see a welcome page and click button to start game' do
    sign_in_with_name
    expect(page).to have_selector(:link_or_button, "Play game!")
  end

  scenario 'user will see a welcome page and click button to start game' do
    sign_in_with_name
    click_button('Play game!')
    expect(page).to have_content('choose')
  end
end
