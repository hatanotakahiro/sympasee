# 管理者
User.create!(nickname:  "管理者",
  email: "admin@admin",
  password:  "katouken",
  password_confirmation: "katouken",
  admin: true)

# ここからユーザー
User.create!(nickname:  "やまたろ",
  email: "aaa@aaa",
  password:  "aaa111",
  password_confirmation: "aaa111",
  profile: "やまたろと申します。海外ドラマ大好きです"
  )
# ActivStorage の画像添付
user1 = User.find_by(email: "aaa@aaa")
user1.profile_image.attach(io: File.open('app/assets/images/katouken2.jpeg'), filename: 'katouken2.jpeg')

User.create!(nickname:  "さとじろ",
  email: "bbb@bbb",
  password:  "bbb222",
  password_confirmation: "bbb222",
  profile: "アニメ大好きです。今までだとパプリカとかが一番かなー"
  )
user2 = User.find_by(email: "bbb@bbb")
user2.profile_image.attach(io: File.open('app/assets/images/neko.jpeg'), filename: 'neko.jpeg')

# ここから作品
Movie.create!(
  movie_title:  "作品テスト１",
  movie_text: "テストテストテストテストテスト",
  long:  "90",
  release_date: "2011-07-06",
  producer:  "アラン・ドゥー",
  character: "ミラジョボビッチ",
  user_id: "1"
)