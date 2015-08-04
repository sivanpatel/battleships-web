feature 'starting a game' do
  scenario 'I am asked to enter my name' do
    visit '/'
    click_link 'New Game'
    expect(page).to have_content "What is your name?"
  end

  scenario 'I am to fill in a form with my name' do
    visit '/new_game'
    fill_in('name', with: 'ken')
    click_button 'Submit'
    expect(page).to have_content "Hello ken"
  end

  scenario 'takes you back if you enter no name' do
    visit '/new_game'
    fill_in('name', with: '')
    click_button 'Submit'
    expect(page).to have_content "Invalid name click here to go back"
  end

  scenario 'after entering valid name I can start game' do
    visit '/new_game'
    fill_in('name', with: 'ken')
    click_button 'Submit'
    expect(page).to have_content "Start Game"
  end
end