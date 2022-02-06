# frozen_string_literal: true

require 'rspec'
require_relative '134_tests_hashtags'

# TODO: Refactor this with subject, before, context, let, specify,

describe HashTag do
  describe '#has_any_hashtag' do
    subject { hashtag }
    # before { hashtag.has_any_hashtag? }
    # after { hashtag.has_any_hashtag? }

    context 'main context' do
      let(:hashtag) { HashTag.new }
      let!(:string) do
        'Lorem ipsum dolor sit amet, consectetur #anime #аниме sit amet,
   consectetur #fyp! #otaku #weeb? adipisicing elit, sed do eiusmod
   tempor #f-mab #fullmetal_alchemist'
      end

      let!(:simple_string) do
        'Lorem ipsum dolor sit amet'
      end

      let!(:one_tag_string) do
        'Lorem ipsum dolor sit amet, consectetur #anime'
      end

      let!(:rus_tag_string) do
        'Lorem ipsum dolor sit amet, consectetur #аниме'
      end

      let!(:snake_case_tag_string) do
        'Lorem ipsum adipisicing elit, #fullmetal_alchemist'
      end

      let!(:minus_tag_string) do
        'Lorem ipsum dolor sit amet, consectetur #f-mab'
      end

      let!(:question_tag_string) do
        'sit amet, consectetur #weeb?'
      end

      let!(:exclamation_tag_string) do
        'consectetur sit amet, consectetur #fyp!'
      end

      specify { should_not have_any_hashtag }

      it 'should returning Array' do
        expect(hashtag.hashtags(simple_string).is_a?(Array)).to eq true
        should_not have_any_hashtag
      end

      it 'should grab one #tag' do
        expect(hashtag.hashtags(one_tag_string).size).to eq 1
        should have_any_hashtag
      end

      it 'should should grab several #tags' do
        expect(hashtag.hashtags(string).size).to be > 1
      end

      it 'should should grab #tag rus' do
        expect(hashtag.hashtags(rus_tag_string).size).to eq 1
      end

      it 'should should grab #ta_g with snake_case' do
        expect(hashtag.hashtags(snake_case_tag_string).size).to eq 1
      end

      it 'should should grab #ta-g with minus' do
        expect(hashtag.hashtags(minus_tag_string).size).to eq 1
      end

      it 'should should grab #tag? with ?' do
        expect(hashtag.hashtags(question_tag_string).size).to eq 1
      end

      it 'should should grab #tag! with !' do
        expect(hashtag.hashtags(exclamation_tag_string).size).to eq 1
      end
    end
  end
end
