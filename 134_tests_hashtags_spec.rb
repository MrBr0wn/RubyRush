# frozen_string_literal: true

require 'rspec'
require_relative '134_tests_hashtags'

describe 'Seahch hashtags' do
  string = 'Lorem ipsum dolor sit amet, consectetur #anime #аниме sit amet,
  consectetur #fyp! #otaku #weeb? adipisicing elit, sed do eiusmod
  tempor #f-mab #fullmetal_alchemist'
  simple_string = 'Lorem ipsum dolor sit amet'
  one_tag_string = 'Lorem ipsum dolor sit amet, consectetur #anime'
  rus_tag_string = 'Lorem ipsum dolor sit amet, consectetur #аниме'
  snake_case_tag_string = 'Lorem ipsum adipisicing elit, #fullmetal_alchemist'
  minus_tag_string = 'Lorem ipsum dolor sit amet, consectetur #f-mab'
  question_tag_string = 'sit amet, consectetur #weeb?'
  exclamation_tag_string = 'consectetur sit amet, consectetur #fyp!'

  it 'should returning Array' do
    expect(hashtags(simple_string).is_a?(Array)).to eq true
  end

  it 'should grab one #tag' do
    expect(hashtags(one_tag_string).size).to eq 1
  end

  it 'should should grab several #tags' do
    expect(hashtags(string).size).to be > 1
  end

  it 'should should grab #tag rus' do
    expect(hashtags(rus_tag_string).size).to eq 1
  end

  it 'should should grab #ta_g with snake_case' do
    expect(hashtags(snake_case_tag_string).size).to eq 1
  end

  it 'should should grab #ta-g with minus' do
    expect(hashtags(minus_tag_string).size).to eq 1
  end

  it 'should should grab #tag? with ?' do
    expect(hashtags(question_tag_string).size).to eq 1
  end

  it 'should should grab #tag! with !' do
    expect(hashtags(exclamation_tag_string).size).to eq 1
  end
end
