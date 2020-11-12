feature 'switching turns' do
  scenario 'Current players turn' do
    sign_in_and_play
    expect(page).to have_content "Alex's turn"
  end

  scenario 'Next players turn' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'OK'
    expect(page).to have_content "Chris's turn"
  end
end
