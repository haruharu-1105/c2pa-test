# c2pa-test 概要  
個人的に画像に「C2PA署名（来歴情報）」をつける・確認するためのお試し手順をまとめたものです。  
目的：Adobeさんのオンラインサービスを使って、誰がいつ作った画像かなどの情報（コンテンツ資格情報）を埋め込めます。  
注意点💡:
 - 署名時に生成されるサムネイルとメタデータは Adobe のContent Credentials クラウドに保存され、保存オフ設定は無しです。  
   サムネ画像：最大800 x 800px、署名する画像ファイル名    
   > Content Credential の保存方法  
   > (前略)  
   > アドビのパブリック Content Credentials クラウドに公開：ファイルの Content Credentials は、ファイルの小さなサムネイルコピーとともに、アドビのパブリック Content Credentials クラウドに保存されます。  
   > https://helpx.adobe.com/jp/creative-cloud/help/cai/use-content-credentials.html
 - Q. 署名済みファイルから電子透かしを完全に消去する方法  
   A. 私が知る限り存在しません。  

### 参考資料 Adobeさんの解説ページ
https://helpx.adobe.com/jp/creative-cloud/help/content-credentials.html
## 目次  
1. [C2PAの署名](#1-C2PAの署名)  
1. [C2PAの検証](#2-C2PAの検証)  

---

## 1. C2PAの署名  
### Adobeのオンライン署名サービスを使います    
1. サイトにアクセス
   - ブラウザで [Adobe Content Authenticity](https://contentauthenticity.adobe.com/) を開きます。
1. Preferencesタブで署名情報を設定  
   - 初回利用時は、署名に含める情報を設定します。
      - AIへの学習拒否を**指定したい場合**、名前を確認するか、少なくとも 1 つのSNS垢を接続後でのみ設定が可能です。
      - 署名時の情報（ニックネームなど）は、(署名ファイルに対して)**後から変更できません。**   
   - 設定後、画面右下の「Apply」ボタンをクリックすると、Applyタブに移動します。
3. Applyタブでファイルをアップロードし署名を適用
   1. 署名対象のファイルをアップロードします。  
      ※アップロードしたファイル名は、**署名内容に含まれます。**   
   1. 画面右下の「Apply」をクリックし署名を開始します。
      > 「I acknowledge that I own the selected content or have permission to apply Content Credentials.  
      > 私は、選択したコンテンツを所有していること、またはコンテンツ資格情報を適用する許可を得ていることを認めます。  
   1. 署名処理は約10秒で完了します。  
      署名処理中は、画面中央に「Signing your content」の文字が表示されます。
1. 署名済みファイルのダウンロード
   1. 画面右下の「DownLoad」ボタンより署名済ファイルをダウンロードします。
   - ファイル名の末尾に「- 日付 - 時刻 - Cr.jpg」のような名前が付きます。

注意事項まとめ💡
- サムネイル（最大800×800px）とファイル名が公開クラウドに保存されます。
- クラウドへ保存のOFF設定なしです。
- 電子透かしの完全削除方法は不明です。  
  ※正確には、C2PAの来歴情報のメタデータは削除できます。画像に埋め込まれた電子透かしを削除する方法は、不明です。
- 署名前ファイルは大切にバックアップ保管してくださいな。

## 2. C2PAの検証
### 2.1 オンライン検証サイトを使います。   
1. [Content Authenticity inspect](https://contentauthenticity.adobe.com/inspect) を開きます。   
1. 「ファイルを選択」またはドラッグ＆ドロップで署名済み画像をアップロードします。    
1. 検証結果画面で、署名者やタイムスタンプ、来歴情報などを確認します。   
### 2.2 Adobeさん作成のWebブラウザ拡張で手軽に確認します。  
1. Chrome ウェブストアから「[Adobe Content Authenticity](https://chromewebstore.google.com/detail/content-credentials/dmfbmenkapmaoldfgacgkoaoiblkimel?pli=1)」拡張機能をインストールします。  
1. 署名済み画像をブラウザで開くと、拡張のアイコンから来歴情報がポップアップ表示します。  

## 🎁 サンプル画像で試してみる  
1, 署名済みのサンプル画像をこちらからダウンロードします。  
👉 サンプル画像 [GpOocMCbgAAaaew 2025-04-26 - 06.28.41 - Cr.jpg](https://github.com/haruharu-1105/c2pa-test/blob/main/asset/GpOocMCbgAAaaew%202025-04-26%20-%2006.28.41%20-%20Cr.jpg)  
2, 上で紹介した検証ページ[Adobe Content Authenticity inspect](https://contentauthenticity.adobe.com/inspect) にアップロードして内容を確認できます。  

以上です。
