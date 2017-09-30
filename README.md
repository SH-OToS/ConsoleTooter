# ConsoleTooter
## 説明
コンソールで作業中にちょっとTootしたくなったときに使えます      
## コマンドの書式
* toot [内容]       
* command | toot --pipe                  
* toot  
### Option
```
--help         helpを表示します                 
--direct       公開範囲、ダイレクトでtootします                              
--private      公開範囲、非公開でtootします                                      
--unlisted     公開範囲、未収載でtootします                                
--public       公開範囲、公開でtootします                                 
--cw           CWありでtootします
--pipe         パイプから取得した文字列をtootします
```
## 使い方
1. まず適当にパスが通っている場所にtootを置きます
2. お好きなインスタンスのアクセストークンを取得します
3. tootのURLにhttps://[インスタンスのドメイン]/api/v1/statusesと入れます
4. tootのtokenにトークンを入れます
5. コマンド感覚でTootできます
## 欠点
1. 通知が見れない
2. シェルやcurlに突っ込むと怒られる内容は使えない
3. 一部の文字列を""なしスペース区切りで投稿すると投稿内容がおかしくなる
4. タイムラインなんてなかった

## Get_Api.shについて
### 説明
Get_Api.shは対話形式でAPIを取れるだけのshです

使用する場合は自己責任でお願いします
