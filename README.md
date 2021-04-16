# テーブル設計

## admins テーブル

| Column             | Type     | Options     |
| ------------------ | -------- | ----------- |
| admin_name         | string   | null: false |
| email              | string   | null: false, unique:true |
| encrypted_password | string   | null: false |
| deleted_at         | datetime |

### Association

- has_many :works


## users テーブル

| Column             | Type     | Options     |
| ------------------ | -------- | ----------- |
| nickname           | string   | null: false |
| email              | string   | null: false, unique:true |
| encrypted_password | string   | null: false |
| profile            | string   | null: false |
| profile_image      | 
| deleted_at         | datetime |

### Association

- has_many :likes
- has_many :bookmarks
- has_many :work_reviews
- has_one :user_status


## user_statues テーブル

| Column     | Type       | Options     |
| ---------- | ---------- | ----------- |
| story      | integer    |
| impact     | integer    |
| unexpected | integer    |
| impressed  | integer    |
| thrill     | integer    |
| laugh      | integer    |
| character  | integer    |
| happy      | integer    |
| beautiful  | integer    |
| heal       | integer    |
| total      | integer    | null: false |
| user       | references | null: false, foreign_key: true |

### Association

- belongs_to :user


## work テーブル

| Column       | Type       | Options     |
| ------------ | ---------- | ----------- |
| work_title   | string     | null: false |
| work_text    | string     | null: false |
| work_image   |            | null: false |
| long         | string     | null: false |
| release_date | date       | null: false |
| producer     | string     | null: false |
| deleted_at   | datetime   |
| admin        | references | null: false, foreign_key: true |

### Association

- has_many :reviews
- has_many :bookmarks
- belongs_to :admin


## review テーブル

| Column      | Type       | Options     |
| ----------  | ---------- | ----------- |
| review_text | integer    |
| favorite    | integer    |
| want        | integer    |
| work        | references | null: false, foreign_key: true |
| user        | references | null: false, foreign_key: true |

### Association

- has_many :likes
- belongs_to :user
- belongs_to :work
- has_one :review_statues


## review_statues テーブル

| Column     | Type       | Options     |
| ---------- | ---------- | ----------- |
| story      | integer    |
| impact     | integer    |
| unexpected | integer    |
| impressed  | integer    |
| thrill     | integer    |
| laugh      | integer    |
| character  | integer    |
| happy      | integer    |
| beautiful  | integer    |
| heal       | integer    |
| total      | integer    | null: false |
| review      | references | null: false, foreign_key: true |

### Association

- belongs_to :review