unko# this-is-me DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null:false|
|email|string|null:false|
|password|string|null:false|
|sexual|integer|null:false|
|birthday|date|null:false|
|admin|boolean||
### Association
- has_many : comments
- has_many : answers

## comments テーブル
|Column|Type|Options|
|------|----|-------|
|user|reference|foreign_key:true|
|text|text||
|status|text|null:false|
### Association
- belongs_to : user

## answers テーブル
|Column|Type|Options|
|------|----|-------|
|user|reference|foreign_key:true|
|question|reference|foreign_key:true|
|reason|text|null:false|
|rank_number|integer|null:false|
### Association
- belongs_to : user
- belongs_to : question

## questionsテーブル
|Column|Type|Options|
|------|----|-------|
|content|text|null: false|
|rank|integer|null: false|
|status|integer|null: false|
### Association