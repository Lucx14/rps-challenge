feature 'play_game' do
  # as a user
  # i would like to be able to play rock, paper, scissors
  scenario 'click on play game!' do
    visit('/')
    fill_in :player_1_name, with: 'Luc'
    click_button 'Submit'
    click_button 'Play game!'
    expect(page).to have_content("Please choose rock, paper or scissors")
  end
end
