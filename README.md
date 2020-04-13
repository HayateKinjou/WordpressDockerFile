# WordpressDockerFile

# Wordpressのセットアップに使えるDockerファイル

## 各バージョン情報
Wordpress : 最新のものを取得
mysql version : 5.7

## 各コマンド等

### Docker起動
docker-compose run -d

### Docker削除
docker-compose down

### Docker SSH接続
docker-compose exec wordpress_custom bash

### Docker起動後のアクセス先
デフォルトポート : 8000
http://localhost:8000/

### 初回起動時のみWordpress側の設定が必要

### 自前のテーマやプラグイン等は各フォルダに格納
./plugins 自前のプラグインを入れる
./themes  自前のテーマを入れる

