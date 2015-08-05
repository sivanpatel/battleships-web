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
    expect(page).to have_content "Hello Ken"
  end

  scenario 'after entering valid name I can start game' do
    visit '/new_game'
    fill_in('name', with: 'ken')
    click_button 'Submit'
    click_button 'Start Game'
    expect(current_path).to eq '/start_game'
  end

  scenario 'shows I can have single player' do
    visit '/start_game'
    click_button 'Single Player'
    expect(current_path).to eq '/single_player'
  end
end