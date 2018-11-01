
feature 'Play game' do
  # I would like to be able to play rock/paper/scissors
  PLAY_SEED = 399_399
  before do
    sign_in_with_name
    click_button("Play game!")
  end

  # 1) the marketeer will be presented the choices (rock, paper and scissors)
  scenario 'the user is able to see the choices' do
    expect(page).to have_button("Rock")
    expect(page).to have_button("Paper")
    expect(page).to have_button("Scissors")
  end

  # 2) the marketeer can choose one option
  scenario 'the user can click on one of the buttons to make a choice of weapon' do
    click_button('Rock')
    expect(page).to have_content("You chose Rock")
  end

  # 3) the game will choose a random option ( - there is a computer choice )
  scenario 'the computer can make a choice' do
    click_button('Rock')
    message = find(:css, "#comp").text
    expect(possible_messages).to include(message)
  end

  # 4) the computer will chose a weapon at random
  scenario 'the computer can make a random choice' do
    srand(PLAY_SEED)
    click_button('Rock')
    expect(page).to have_content("Computer chose Paper")
  end

  # 5) Winner will be declared

  context 'decide winner' do

    before do
      srand(PLAY_SEED)
    end

    scenario 'I win' do
      click_button("Scissors")
      expect(page).to have_content("You win!")
    end

    scenario 'I lose' do
      click_button("Rock")
      expect(page).to have_content("You lose!")
    end

    scenario 'I draw' do
      click_button("Paper")
      expect(page).to have_content("You draw!")
    end
  end
end
