# AWS Infrastructure with Terraform

## 概要
このリポジトリは、AWSインフラをTerraformで構築・管理するためのコードです。
学習目的で作成し、本番運用を意識した設計を心がけています。

## 構成図
- `作成中`

## 使用技術
- AWS（VPC, EC2, ALB, RDS, S3, CloudFront, Lambda, API Gateway）
- Terraform v1.x
- GitHub Actions

## 特徴
- モジュール化による再利用性の確保
- dev/prod環境の分離
- S3 + DynamoDBによるtfstate管理
- GitHub ActionsによるCI/CD

## ディレクトリ構成
```
aws-terraform-portfolio/
├── README.md                 # プロジェクト概要（最重要）
├── docs/
│   ├── architecture.png      # 構成図
│   └── learning-notes.md     # 学習メモ
├── modules/
│   ├── vpc/
│   ├── ec2/
│   ├── alb/
│   └── rds/
├── environments/
│   ├── dev/
│   └── prod/
├── .github/
│   └── workflows/
│       └── terraform.yml
└── .gitignore

```

## 学習カリキュラム
- 以下に基づいて学習を行っています。
[AWS + Terraform 学習カリキュラム](https://helpful-thumb-fea.notion.site/AWS-Terraform-2e7d7527ef18805498cbfd5a3248cb3a?source=copy_link)