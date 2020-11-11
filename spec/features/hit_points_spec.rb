# As Player 1,
# So I can see how close I am to winning
# I want to see Player 2's Hit Points

feature 'Hit points' do
  scenario 'seeing player 2 hit points' do
    visit('/')
    fill_in :player_1_name, with: 'Alex'
    fill_in :player_2_name, with: 'Chris'
    click_button 'Submit'
    expect(page).to have_content 'Chris Hit Points: 69'
  end
end
