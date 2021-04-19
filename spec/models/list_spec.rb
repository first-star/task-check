require 'rails_helper'

RSpec.describe List, type: :model do
  describe '#create' do
    before do
      @list = FactoryBot.build(:list)
    end


    it 'titleの値が存在すれば登録できること' do
      expect(@list).to be_valid
    end

    it 'titleが空では登録できないこと' do
      @list.title = ''
      @list.valid?
      expect(@list.errors.full_messages).to include("Title can't be blank")
    end


    it 'userに紐づいてないと登録できないこと' do
      @list.user = nil
      @list.valid?
      expect(@list.errors.full_messages).to include("User must exist")
    end


  end


end
