feature 'play_game' do
  # as a user
  # i would like to be able to play rock, paper, scissors
  scenario 'click on play game!' do
    sign_in_with_name
    click_button 'Play game!'
    expect(page).to have_content("Please choose rock, paper or scissors")
  end
end
