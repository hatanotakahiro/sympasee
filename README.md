# テーブル設計

## users テーブル

| Column             | Type     | Options     |
| ------------------ | -------- | ----------- |
| nickname           | string   | null: false |
| email              | string   | null: false, unique:true |
| encrypted_password | string   | null: false |
| profile            | string   |
| profile_image      | 
| admin              | boolean  |
| deleted_at         | datetime |

### Association

- has_many :likes
- has_many :bookmarks
- has_many :movie_reviews
- has_many :movies
- has_one :user_status


## user_statues テーブル

| Column            | Type       | Options     |
| ----------------- | ---------- | ----------- |
| user_story        | integer    | null: false |
| user_impact       | integer    | null: false |
| user_impressed    | integer    | null: false |
| user_happy        | integer    | null: false |
| user_character    | integer    | null: false |
| user_beautiful    | integer    | null: false |
| user_score        | integer    | null: false |
| user              | references | null: false, foreign_key: true |

### Association

- belongs_to :user


## movie テーブル

| Column       | Type       | Options     |
| ------------ | ---------- | ----------- |
| movie_title  | string     | null: false |
| movie_text   | text       | null: false |
| movie_image  |            | null: false |
| long         | string     | null: false |
| release_date | date       |
| producer     | string     | null: false |
| character    | string     | null: false |
| deleted_at   | datetime   |
| user        | references | null: false, foreign_key: true |

### Association

- has_many :reviews
- has_many :bookmarks
- belongs_to :user


## review テーブル

| Column      | Type       | Options     |
| ----------  | ---------- | ----------- |
| review_text | integer    | null: false |
| deleted_at  | datetime   |
| movie       | references | null: false, foreign_key: true |
| user        | references | null: false, foreign_key: true |

### Association

- has_many :likes
- belongs_to :user
- belongs_to :movie
- has_one :review_statues


## review_statues テーブル

| Column            | Type       | Options     |
| ----------------- | ---------- | ----------- |
| review_story      | integer    | null: false |
| review_impact     | integer    | null: false |
| review_impressed  | integer    | null: false |
| review_happy      | integer    | null: false |
| review_character  | integer    | null: false |
| review_beautiful  | integer    | null: false |
| review_score      | integer    | null: false |
| review            | references | null: false, foreign_key: true |

### Association

- belongs_to :review