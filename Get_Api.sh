echo "このshはmastodonのクライアントの登録を対話形式で行うshです"
echo "Ctrl+Cでいつでもキャンセルできます"
echo '入力は"で囲まないでください'
echo "開始しますか？(y/n)"
read yn
if [ ! $yn = "y" ];then
echo '(＄・・)/~~~'
exit 0
fi
echo "クライアントの登録を行います"
echo "インスタンスのURLを入力してください"
echo "https://[この部分のみ]/"
read url
echo "クライアントにつけたい名前を半角英数で入力してください"
read name
echo "スコープを入力してください"
echo "read write follow ... のようにスペース区切りで入力してください"
read scope
echo "取得を開始します..."
curl -X POST -sS https://$url/api/v1/apps \
  -F "client_name=$name" \
  -F "redirect_uris=urn:ietf:wg:oauth:2.0:oob" \
  -F "scopes=$scope"
