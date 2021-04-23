require 'rails_helper'

RSpec.describe "カード作成機能", type: :system do

  before do
    @user = FactoryBot.create(:user)
    @list_title = Faker::Lorem.sentence
    @card = FactoryBot.create(:card)
    @card_title = Faker::Lorem.sentence
    @card_memo = Faker::Lorem.sentence
  end


  context 'カード作成に成功したとき' do
    it 'タイトルとメモがある時' do
      sign_in(@user)
      expect(page).to have_content('リストを作成')
      visit new_list_path
      fill_in 'list_title', with: @list_title
      expect{
      find('input[name="commit"]').click
      }.to change { List.count }.by(1)
      expect(current_path).to eq(root_path)
      expect(page).to have_content(@list_title)

      expect(page).to have_content('さらにカードを追加')
      click_on('さらにカードを追加')
      fill_in 'card_title', with: @card_title
      fill_in 'card_memo', with: @card_memo
      expect{
      find('input[name="commit"]').click
      }.to change { Card.count }.by(1)

      expect(current_path).to eq(root_path)
      expect(page).to have_content(@card_title)
    end

    it 'タイトルがある時' do
      sign_in(@user)
      expect(page).to have_content('リストを作成')
      visit new_list_path
      fill_in 'list_title', with: @list_title
      expect{
      find('input[name="commit"]').click
      }.to change { List.count }.by(1)
      expect(current_path).to eq(root_path)
      expect(page).to have_content(@list_title)

      expect(page).to have_content('さらにカードを追加')
      click_on('さらにカードを追加')
      fill_in 'card_title', with: @card_title
      expect{
      find('input[name="commit"]').click
      }.to change { Card.count }.by(1)

      expect(current_path).to eq(root_path)
      expect(page).to have_content(@card_title)
    end
  end

  context 'カード作成に失敗したとき' do
    it 'ログインしていないとカード作成ページにいけない' do
      visit root_path
      expect(page).to have_no_content('さらにカードを追加')
    end
  end
end
