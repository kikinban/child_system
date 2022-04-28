## サイト名
「 こはた保育園 」：保育システム

## サイト概要
　保護者・保育者（管理者）が利用するサービス。
 
## 機能
※下記の機能は保護者画面の内容であり、保育者（管理者）画面はその反対の動きができる！

* 打刻システム　→　登園・降園の時刻をボタンを押して打刻。保育者側で打刻時間を確認できる。
* 変更届けシステム　→　迎えの時間・送迎者・欠席連絡を保育園に電話できない時や、閉園中に簡単に保育者へ変更を知らせることができる。
* 連絡ノート　→　ネット版ノート（朝は保護者が入力し、午後には保育園での様子を保育者が追加する）
* クラスの様子　→　保育園で過ごす子どもの姿を、写真や文字で知ることができる。
* 行事・クラス予定　→　行事日程がカレンダー形式表示され、日付ごとに確認することができる。
* 取り組み　→　保育者が子ども達の成長を見守る為取り組んでいる内容や書類などを見ることができる。
* お問い合わせ　→　要望や意見などを保育者へ気軽に伝えることができる。
* お知らせ・お願い　→　保護者へ伝えたいことを紙面での配布ではなく、ネットでいつでも見ることができる環境。

## URL
https://child-system.km-portforio.com/parent_tops

## 説明
2020年10月から、独学でプログラミングの勉強スタート！
このサイトは2つ目の作品。

### このサービスを開発しようと思った経緯
・紙面で行っている業務をサービス化して、保育者の負担を減らしたり効率化したいと思った。  
・色んな機能のあるサービスを作ってみたかった。  

### 開発中、意識したこと
・レスポンシブ対応(iphone,ipad,pc)  
・機能の充実  
・保育者と保護者（管理者）のデータの連携  

### 注目ページ
* 保護者ページ・保育者（管理者）ページ２つ用意    
https://child-system.km-portforio.com/administrators

* 連絡ノート：新規記録ページ（保育者・保護者は内容が少し違う）  
https://child-system.km-portforio.com/parents_notes    
→　ボタンを押すと詳細画面が出てくるアコーディオン機能を取り入れた。

* jQueryを利用して、画像スライド     
https://child-system.km-portforio.com/class_posts/1  

* カレンダー機能  
https://child-system.km-portforio.com/calendars?start_date=2022-03-27  

### 今後の改善と追加
・再利用性が高いコードにリファクタリングしていきたい。  
・保護者・保育者側（管理者）にもそれぞれログイン機能を設けたい。  
・保護者ページのデザインを可愛くして、動きをつけたい。保育者（管理者）ページは操作しやすさを意識してデザインしたい。  
・もっと自動化できる部分があると思う為、勉強しながらその技術を身に着けていきたい。  
・コードやコメントを他人が見ても、理解しやすくしたい。  

## 技術

* Ruby 2.6.6
* Ruby on Rails 6.1.3.1
* Sass(scss)
* MySQL  8.0
* Docker/Docker-compose 
* AWS  
・EC2  
・Route53  
・Certificate Manager

## サイトトップ
![child_system](https://user-images.githubusercontent.com/76243106/165857243-7a535b17-7226-4cee-abf9-589d96960614.png)

