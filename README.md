# README

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false, unique: ture|
|password|string|null: false|
|name|string|null: false|
### Association
- has_many :groups_users
- has_many :groups, through:  :groups_users
- has_many :comments

## groupsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
### Association
- has_many :groups_users
- has_many :users, through:  :groups_users
- has_many :comments

## groups_usersテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :group

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|text|string|null: false|
|image|string|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :group
- belongs_to :user