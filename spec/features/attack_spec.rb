feature 'Attack' do
  scenario 'Player 1 attacks Player 2' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'Alex attacked Chris'
  end

  scenario 'Attack reduces opponents HP by 10' do
    sign_in_and_play
    click_link 'Attack'
    click_link 'OK'
    expect(page).not_to have_content 'Chris: 100HP'
    expect(page).to have_content 'Chris Hit Points: 90'
  end
end
