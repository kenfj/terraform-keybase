
# Terraform IAM password encryption by Keybase

* Keybase を使い Terraform で IAM ユーザーのパスワードを暗号化するサンプル
* tfstate には暗号化されたパスワードが記録される


## Prerequisites

* https://keybase.io/ にてアカウントと PGP key を作成


## Usage

* IAM ユーザー作成
```bash
# edit terraform.tfvars
terraform plan
terraform apply
```

* 復号化
```
terraform output password | base64 --decode | keybase pgp decrypt
terraform output secret | base64 --decode | keybase pgp decrypt
```


## Reference

* https://www.terraform.io/docs/providers/aws/r/iam_user_login_profile.html
* https://www.terraform.io/docs/providers/aws/r/iam_access_key.html
* https://qiita.com/digitalpeak/items/62f7efb282eb946ac8d3
