#  アプリ名： Task-Head
<br>
<br>

# 概要実装機能
Trelloに似たタスク管理アプリ。タスクを細分化し管理できる。
<br>
<br>


# 制作背景 
タスクにおいて、何をいつまでにどの程度まで進めなければいけないか管理することを目的としました。また、タスクをより効率化するためにタスク細分化機能を実装しました。
<br>
<br>


# 実装機能 
* ユーザー管理機能(gem:devise)
* リスト機能
* カード機能
<br>
<br>

# テストコード
  * 単体テスト  

    > モデル  
      >> [ユーザー機能](https://github.com/first-star/task-check/blob/master/spec/models/user_spec.rb) 実装済み  
      >> [リスト機能](https://github.com/first-star/task-check/blob/master/spec/models/list_spec.rb) 実装済み  
      >> [カード機能](https://github.com/first-star/task-check/blob/master/spec/models/user_spec.rb) 実装済み  

  * 結合テスト  

      > [ユーザー機能](https://github.com/first-star/task-check/blob/master/spec/system/users_spec.rb) 実装済み  
      > [リスト機能](https://github.com/first-star/task-check/blob/master/spec/system/lists_spec.rb) 実装済み  
      > [カード機能](https://github.com/first-star/task-check/blob/master/spec/system/cards_spec.rb) 実装済み  


<br>
<br>


# 本番環境（デプロイ先とテストアカウント＆ID) 
* GitHub: https://github.com/first-star/task-check
* デプロイ先: https://trello-like-task-checker.herokuapp.com/
* テストアカウント: Email: test@gmail.com / Password: test1122
<br>
<br>

# DEMO 
# トップ画面 
![](https://i.gyazo.com/48330290817e153fa193c18342b16e6e.png)  
<br>
<br>


# リスト作成画面 
![](https://i.gyazo.com/4391f77405d57967a22c5608079a8abc.png)  
![](https://i.gyazo.com/6ff9e3d3717df7471d4a8df504d037cc.png)  
<br>
<br>


# リスト編集画面 
![](https://i.gyazo.com/22a300afd4cbca54adb563f9f61e1b16.png)  
![](https://i.gyazo.com/756ce158865871daa27ace040e3aff8a.png)  
![](https://i.gyazo.com/e64e398797ec9274f432decad6e80649.png)  
<br>
<br>


# カード作成画面 
![](https://i.gyazo.com/ec59fdc8675b25ee5fbde4eb3cbf5cbd.png)  
![](https://i.gyazo.com/199d73c601d0f394142192cb8069f06a.png)  
<br>
<br>


# カード編集画面 
![](https://i.gyazo.com/2fd15d6a4c2dd02f49728438702a03e7.png)  
![](https://i.gyazo.com/c1e7a32f5def70404d113d22b3fef06f.png)  
<br>
<br>


# ユーザー登録画面 
![](https://i.gyazo.com/433d54c6c9a4b7c7d5fecf3a6a921cb1.png)  
![](https://i.gyazo.com/271f9fa07010b01e9771c27aa7d80b37.png)  
<br>
<br>


# 工夫したポイント 
* カードを望むリストに移行できる機能を追加したこと。カード編集画面から移行したいリストを選べる。  
* Font Awesomeを導入し、分かりやすいデザインにしたこと。  
<br>
<br>


# 使用技術(開発環境) 
* 言語：SCSS,Ruby,jQuery, Bootstrap  
* フレームワーク：Ruby on Rails  
* DB：mysql  
* サーバー：heroku  
<br>
<br>


# 課題や今後実装したい実装したい機能 
> カード移動操作をドラッグでできるようにしたい  
> サインインはSNSアカウントを利用してできるようにしたい  
> モチベーションの維持を目的にタスク達成率をグラフ化したい  
<br>
<br>


# DB設計 
![](https://i.gyazo.com/102c23482e58bd7c15ea5067bb9026d9.png)

