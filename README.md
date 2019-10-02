# README

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false, unique: ture|
|password|string|null: false|
|username|string|null: false|
### Association
- has_many :groups, through:  :posts_tags
- has_many :comments

## groupsテーブル
|Column|Type|Options|
|------|----|-------|
|title|text|null: false|
|text|text|null: false|
|user_id|integer|null: false, foreign_key: true|
### Association
- has_many :users, through:  :posts_tags
- has_many :comments

## groups_userssテーブル
|Column|Type|Options|
|------|----|-------|
|post_id|integer|null: false, foreign_key: true|
|tag_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :group

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :group
- belongs_to :user