# User Authentication

ユーザ認証アプリケーション。

## 利用技術

* Rails 5
* RSpec
* Capybara

## インストール & セットアップ

```
$ cd example-apps/user-authentication
$ bundle
$ rails db:setup
```

## 起動

```
$ rails s # http://localhost:3000
```

## シナリオ

* サインイン画面 (`/session/new`) に移動
* Email: `user@ex.com` を入力
* Password: `pass` を入力
* `Sign in` ボタンを押下
* ページテキストに `Success` が表示される

## テスト

```
$ rails spec
```
