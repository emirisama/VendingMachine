# 自動販売機アプリ
## 仕様
- １０円、５０円、１００円、５００円をタップすると、金額を投入することができる（所持金が減る）。
- 投入金額が購入金額より上回っていれば、買うbuttonをタップし、飲み物を買うことができる（在庫数が減る）。
- 飲み物は、水、コーラ、コーヒーを買うことができる
- お釣りボタンをタップすると、投入金額が所持金に返る。

## 例外
- 所持金がないと投入することができない
- 所持金がなくなると、0となり、文字が赤くなる
- 飲み物の在庫がなくなると、買うボタンが押せなくなる

## 応用
- 飲み物を買うことができると、「水の画像が表示され、購入しましたという文字が出る」という画面に遷移する（未完成）
