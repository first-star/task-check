require 'rails_helper'

RSpec.describe "ユーザーログイン機能", type: :system do

  it 'ログインしていない状態でトップページにアクセスした場合、サインインページに移動する' do
    visit root_path
    expect(current_path).to eq(new_user_session_path)
  end

  it 'ログインに成功し、トップページに遷移する' do
    
  end

end
