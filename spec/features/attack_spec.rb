feature 'Attack' do
  scenario 'Player 1 attacks Player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Alex attacked Chris'
  end

  scenario 'Attack reduces opponents HP by 10' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'OK'
    expect(page).not_to have_content 'Chris: 100HP'
    expect(page).to have_content 'Chris Hit Points: 90'
  end

  scenario 'be attacked by Player 2' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'OK'
    click_button 'Attack'
    expect(page).to have_content 'Chris attacked Alex'
  end

  scenario 'reduce Player 1 HP by 10' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'OK'
    click_button 'Attack'
    click_button 'OK'
    expect(page).not_to have_content 'Alex: 100HP'
    expect(page).to have_content 'Alex Hit Points: 90'
  end
end
