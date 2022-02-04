# frozen_string_literal: true

require 'rspec'
require_relative '133_rspec'

describe 'Sklonyator' do
  it 'should do ok for nigretyat' do
    expect(Sklonyator.sklonenie(5, 'нигритёнок', 'нигритёнка', 'нигритят')).to eq 'нигритят'
  end

  it 'should do ok for nigretyat _ auto' do
    [5, 6, 7, 8, 9, 0].each do |number|
      (0..100).step(10) do |i|
        sum = i + number
        expect(
          "#{sum} #{Sklonyator.sklonenie(sum, 'нигритёнок', 'нигритёнка', 'нигритят')}"
        ).to eq "#{sum} нигритят"
      end
    end
  end

  it 'should do ok for nigretionok _ auto' do
    [1, 21, 31, 141].each do |i|
      expect(
        "#{i} #{Sklonyator.sklonenie(i, 'нигритёнок', 'нигритёнка', 'нигритят')}"
      ).to eq "#{i} нигритёнок"
    end
  end

  it 'should do ok for nigretionka _ auto' do
    [2, 3, 4, 22, 33, 144].each do |i|
      expect(
        "#{i} #{Sklonyator.sklonenie(i, 'нигритёнок', 'нигритёнка', 'нигритят')}"
      ).to eq "#{i} нигритёнка"
    end
  end

  it 'should do ok for nigretyat _ auto special' do
    [10, 11, 12, 13, 14, 111, 312, 1013, 2414].each do |i|
      expect(
        "#{i} #{Sklonyator.sklonenie(i, 'нигритёнок', 'нигритёнка', 'нигритят')}"
      ).to eq "#{i} нигритят"
    end
  end
end
