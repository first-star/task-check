require 'rails_helper'

RSpec.describe "リスト作成機能", type: :system do
  before do
    @user = FactoryBot.create(:user)
    @list_title = Faker::Lorem.sentence
  end


  context 'リスト作成に成功したとき' do
    it 'リスト作成に成功すると、トップページに戻りリスト一覧が表示される' do
      sign_in(@user)
      expect(page).to have_content('リストを作成')
      visit new_list_path
      fill_in 'list_title', with: @list_title
      expect{
      find('input[name="commit"]').click
      }.to change { List.count }.by(1)
      expect(current_path).to eq(root_path)
      expect(page).to have_content(@list_title)
    end
  end

  context 'リスト作成に失敗したとき' do
    it 'ログインしていないとリスト作成ページに遷移できない' do
      visit root_path
      expect(page).to have_no_content('リストを作成')
    end
  end
end


RSpec.describe "リスト編集機能", type: :system do
  before do
    @list1 = FactoryBot.create(:list)
    @list2 = FactoryBot.create(:list)
  end
  context 'リストを編集できるとき' do
     it 'ログインしたユーザーは自分が作成したリストの編集ができる' do
      sign_in(@list1.user)
      visit edit_list_path(@list1)
      expect(
        find('#list_title').value
      ).to eq(@list1.title)
      fill_in 'list_title', with: "#{@list1.title}+編集したテキスト"

      expect{
        find('input[name="commit"]').click
      }.to change { List.count }.by(0)

      expect(current_path).to eq(root_path)

      expect(page).to have_content("#{@list1.title}+編集したテキスト")
    end
  end

  context 'リスト編集ができないとき' do
    it 'ログインしていないとリストの編集画面には遷移できない' do
      visit root_path
      expect(page).to have_no_content('svg-inline--fa fa-pen fa-w-16')
    end
  end
end


RSpec.describe 'リスト削除', type: :system do
  before do
    @list = FactoryBot.create(:list)
    @list.cards.create(title: 'RSpec必勝法', memo: 'あとで書く')
  end
  context 'リスト削除ができるとき' do
    it 'ログインしたユーザーはリストの削除ができる' do
      sign_in(@list.user)
      expect{ @list.destroy}.to change{ List.count }.by(-1)
    end

    it 'リストを削除すればリストに書かれたカードも削除される' do
      sign_in(@list.user)
      expect{ @list.destroy}.to change{ Card.count}.by(-1)
    end

  end

  context 'リスト削除ができないとき' do
    it 'ログインしていないとツイートの削除ボタンがない' do
      visit root_path
      expect(page).to have_no_content('svg-inline--fa fa-trash fa-w-14')
    end
  end
end






