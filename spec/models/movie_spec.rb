require 'rails_helper'

RSpec.describe Movie, type: :model do
  describe '#create' do
    before do
      @movie = FactoryBot.build(:movie)
    end

    context '登録できる場合' do
      it '映像作品情報が揃っていれば登録できること' do
        expect(@movie).to be_valid
      end

    end
    context '登録できない場合' do
      it 'movie＿titleが空では登録できないこと' do
        @movie.movie_title = ''
        @movie.valid?
        expect(@movie.errors.full_messages).to include("Movie title can't be blank")
      end

      it 'movie_textが空では登録できないこと' do
        @movie.movie_text = ''
        @movie.valid?
        expect(@movie.errors.full_messages).to include("Movie text can't be blank")
      end

      it 'longが空では登録できないこと' do
        @movie.long = ''
        @movie.valid?
        expect(@movie.errors.full_messages).to include("Long can't be blank")
      end

      it 'producerが空では登録できないこと' do
        @movie.producer = ''
        @movie.valid?
        expect(@movie.errors.full_messages).to include("Producer can't be blank")
      end

      it 'characterが空では登録できないこと' do
        @movie.character = ''
        @movie.valid?
        expect(@movie.errors.full_messages).to include("Character can't be blank")
      end

      it '映像作品サムネイル画像が空では登録できること' do
        @movie.movie_image = nil
        @movie.valid?
        expect(@movie.errors.full_messages).to include("Movie image can't be blank")
      end  
      it 'userが紐付いていないと保存できないこと' do
        @movie.user = nil
        @movie.valid?
        expect(@movie.errors.full_messages).to include('User must exist')
      end
    end
  end
end
