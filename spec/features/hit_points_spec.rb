# As Player 1,
# So I can see how close I am to winning
# I want to see Player 2's Hit Points

feature 'Hit points' do
  scenario 'seeing player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Chris Hit Points: 100'
  end

  scenario 'seeing player 1 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Alex Hit Points: 100'
  end
end
