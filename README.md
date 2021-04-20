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
| review_text | integer    |
| favorite    | integer    |
| want        | integer    |
| movie        | references | null: false, foreign_key: true |
| user        | references | null: false, foreign_key: true |

### Association

- has_many :likes
- belongs_to :user
- belongs_to :movie
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