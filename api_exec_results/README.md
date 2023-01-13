# API実行方法
## Googleのサービスアカウントの認証ファイルを配置
1. Googleサービスアカウントの認証ファイルをダウンロード
1. credentialsディレクトリに配置
1. .env.sampleをコピーして.envを作成
1. .envファイルのGOOGLE_APPLICATION_CREDENTIALSのjsonファイルの名前をダウンロードしたファイルに変更

## API実行
今回は自然言語APIを例に実行していきます

```
$ docker-compose up -d
$ docker exec -it google_api bash
$ ruby api_exec_results/natural_language/analyze_entities.rb
```