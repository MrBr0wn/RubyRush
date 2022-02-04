# frozen_string_literal: true

require 'rspec'
require_relative './modules/classes/57_game'

describe 'Hangman with exceptions' do
  it 'should be runing' do
    game = Game.new('загадка')

    expect(game.status).to eq :in_progress
  end

  it 'should returning win status' do
    game = Game.new('загадка')

    game.next_step 'з'
    game.next_step 'а'
    game.next_step 'г'
    game.next_step 'а'
    game.next_step 'д'
    game.next_step 'к'
    game.next_step 'а'

    expect(game.status).to eq 1
    expect(game.errors).to eq 0
  end

  it 'should returning lose status' do
    game = Game.new('загадка')

    game.next_step 'м'
    game.next_step 'а'
    game.next_step 'ц'
    game.next_step 'у'
    game.next_step 'м'
    game.next_step 'о'
    game.next_step 'т'
    game.next_step 'о'
    game.next_step 'ю'
    game.next_step 'к'
    game.next_step 'и'
    game.next_step 'х'
    game.next_step 'и'
    game.next_step 'р'
    game.next_step 'о'

    expect(game.status).to eq(-1)
    expect(game.errors).to eq 7
  end
end
