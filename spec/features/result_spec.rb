feature 'show results' do
# as a user
# so i can enjoy time away from the daily grind
# i would like to be able to play rock paper scissors
  scenario 'seeing choices and results/winner' do
    sign_in_with_name
    click_button 'Play game!'
    fill_in :user_choice, with: 'rock'
    click_button 'Submit'
    expect(page).to have_content("Player choice is rock")
  end

  scenario 'seeing choices and results/winner' do
    sign_in_with_name
    click_button 'Play game!'
    fill_in :user_choice, with: 'rock'
    click_button 'Submit'
    expect(page).to have_content("Computer choice is ")
  end


end
