## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null:false,index:true|
|email|string|null:false,unique:true|
|password|string|null:false|

### Association
- has_many :groups,through: :groups_users
- has_many :messages
- has_many :groups_users