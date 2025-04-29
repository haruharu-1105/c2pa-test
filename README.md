# c2pa-test 概要  
このリポジトリは、個人作成のお試しリポジトリです。   
臥像ファイルに対してC2PA（Content Credentials Production & Authorization）の来歴情報を付与・検証するための手順をまとめたお試し用リポジトリです。  
C2PAにより、来歴情報を画像に埋め込み、後から改ざんの有無や真正性を確認できるようになります。  

## C2PAをざっくり説明  
C2PAは、ファイルに来歴情報を格納します。  
同じ用にメタ領域に格納する物の例）JPEGのEXIFやWebUIのPNGInfoが該当します。  
画像ファイルに含まれる[C2PA](https://c2pa.org/specifications/specifications/2.1/index.html)の来歴情報の確認手順を記載しています。   

## 署名方法
Adobeのオンライン署名サービスを使う
1. ブラウザで [Adobe Content Authenticity](https://contentauthenticity.adobe.com/) を開きます。
1. 【Preferencesタブ】署名に含める情報を設定します。 (初回設定)
   1. 署名に含める情報を設定します。（SNS垢など) AI学習拒否を宣言したい場合は、SNS垢の連携設定が必要です。
   1. Preferencesタブ下部の「Apply」ボタンを押すとAppleyタブに繊維します。
1. 【Applyタブ】署名対象ファイルの追加  
   1. 対象ファイルをアップロードします。  
     ⚠TIPS⚠ 画像ファイル名が、署名内容に含まれます。
   1. 画面下部の「I acknowledge that I own the selected content or have permission to apply Content Credentials.」をチェックし、「Apply」を押します。
1. 署名後のファイルをダウンロードします。  
   TIPS 署名対象ファイル名 - 西暦日付 - 時間 - Cr.元の拡張子 です。  

## 3. 検証方法
### 3.1 オンライン検証サイトを使う   
1. [Content Authenticity inspect](https://contentauthenticity.adobe.com/inspect) を開きます。   
1. 「ファイルを選択」またはドラッグ＆ドロップで署名済み画像をアップロードします。    
1. 検証結果画面で、署名者やタイムスタンプ、来歴情報などを確認します。   
### 3.2 Adobeさん作成のWebブラウザ拡張で手軽に確認  
1. Chrome ウェブストアから「[Adobe Content Authenticity](https://chromewebstore.google.com/detail/content-credentials/dmfbmenkapmaoldfgacgkoaoiblkimel?pli=1)」拡張機能をインストールします。  
1. 署名済み画像をブラウザで開くと、拡張のアイコンから来歴情報がポップアップ表示します。  

## サンプル署名画像があります   
1, 署名済み画像をダウンロードします。  
  [https://github.com/haruharu-1105/c2pa-test/blob/main/asset/GpOocMCbgAAaaew 2025-04-26 - 06.28.41 - Cr.jpg](https://github.com/haruharu-1105/c2pa-test/blob/main/asset/GpOocMCbgAAaaew%202025-04-26%20-%2006.28.41%20-%20Cr.jpg)  
2, [Adobe Content Authenticity inspect](https://contentauthenticity.adobe.com/inspect) を開き、ファイルをアップロードする。  

以上です。
