require 'spec_helper'

feature 'starting a game' do
  scenario 'I am asked to enter my name' do
    visit '/'
    click_button 'New Game'
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
    expect(page).to have_button 'Start Game'
  end

  scenario 'shows I can have single player' do
    visit '/start_game'
    expect(page).to have_button 'Single Player'
  end
end