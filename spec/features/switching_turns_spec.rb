feature 'switching turns' do
  scenario 'Current players turn' do
    sign_in_and_play
    expect(page).to have_content "Alex's turn"
  end

  scenario 'Next players turn' do
    sign_in_and_play
    click_link 'Attack'
    click_link 'OK'
    expect(page).to have_content "Chris's turn"
  end
end
