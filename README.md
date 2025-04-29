# c2pa-test 概要  
このリポジトリは、個人作成のお試しリポジトリです。   
画像ファイルに対してC2PA（Content Credentials Production & Authorization）の来歴情報を付与・検証するための手順をまとめました。  

### 参考資料 Adobeさんの解説ページ
https://helpx.adobe.com/jp/creative-cloud/help/content-credentials.html
## 見出し  
1. [C2PAの署名](#1-C2PAの署名)  
1. [C2PAの検証](#2-C2PAの検証)  

---

## 1. C2PAの署名
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

## 2. C2PAの検証
### 2.1 オンライン検証サイトを使う   
1. [Content Authenticity inspect](https://contentauthenticity.adobe.com/inspect) を開きます。   
1. 「ファイルを選択」またはドラッグ＆ドロップで署名済み画像をアップロードします。    
1. 検証結果画面で、署名者やタイムスタンプ、来歴情報などを確認します。   
### 2.2 Adobeさん作成のWebブラウザ拡張で手軽に確認  
1. Chrome ウェブストアから「[Adobe Content Authenticity](https://chromewebstore.google.com/detail/content-credentials/dmfbmenkapmaoldfgacgkoaoiblkimel?pli=1)」拡張機能をインストールします。  
1. 署名済み画像をブラウザで開くと、拡張のアイコンから来歴情報がポップアップ表示します。  

## サンプル署名画像があります   
1, 署名済み画像をダウンロードします。  
  [https://github.com/haruharu-1105/c2pa-test/blob/main/asset/GpOocMCbgAAaaew 2025-04-26 - 06.28.41 - Cr.jpg](https://github.com/haruharu-1105/c2pa-test/blob/main/asset/GpOocMCbgAAaaew%202025-04-26%20-%2006.28.41%20-%20Cr.jpg)  
2, [Adobe Content Authenticity inspect](https://contentauthenticity.adobe.com/inspect) を開き、ファイルをアップロードする。  

以上です。
