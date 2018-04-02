echo "このshはmastodonのアプリとアカウントの関連付を対話形式で行うshです"
echo "つまりトークンを取得します"
echo "Ctrl+Cでいつでもキャンセルできます"
echo '入力は"で囲まないでください'
echo "開始しますか？(y/n)"
read yn
if [ ! $yn = "y" ];then
echo '(＄・・)/~~~'
exit 0
fi
echo "インスタンスのURLを入力してください"
echo "https://[この部分のみ]/"
read url
echo "クライアントIDを入力してください"
read id
echo "クライアントシークレットを入力してください"
read secret
echo "https://$url/oauth/authorize?client_id=$id&response_type=code&redirect_uri=urn:ietf:wg:oauth:2.0:oob&scope=read%20write%20follow"
echo "上記のURLにアクセスして表示された認証コードを入力してください"
read code
echo "取得を開始します..."
curl -X POST -sS https://$url/oauth/token \
  -F "grant_type=authorization_code" \
  -F "redirect_uris=urn:ietf:wg:oauth:2.0:oob" \
  -F "client_id=$id" \
  -F "client_secret=$secret" \
  -F "code=$code"
