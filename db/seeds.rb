# 管理者
admin = User.create!(nickname:  "管理者",
  email: "admin@admin",
  password:  "katouken",
  password_confirmation: "katouken",
  admin: true)

# # ここからユーザー
User.create!(nickname:  "やまたろ",
  email: "aaa@aaa",
  password:  "aaa111",
  password_confirmation: "aaa111",
  profile: "やまたろと申します。海外ドラマ大好きです"
  )
# # ActivStorage の画像添付
user1 = User.find_by(email: "aaa@aaa")
user1.profile_image.attach(io: File.open('public/images/user1.jpeg'), filename: 'user1.jpeg')

User.create!(nickname:  "さとじろ",
  email: "bbb@bbb",
  password:  "bbb222",
  password_confirmation: "bbb222",
  profile: "アニメ大好きです。今までだとパプリカとかが一番かなー"
  )
user2 = User.find_by(email: "bbb@bbb")
user2.profile_image.attach(io: File.open('public/images/user2.jpeg'), filename: 'user2.jpeg')

User.create!(nickname:  "辛口ユーザー",
  email: "ccc@ccc",
  password:  "ccc333",
  password_confirmation: "ccc333",
  profile: "より面白いものを追い求めています！"
  )
user3 = User.find_by(email: "ccc@ccc")
user3.profile_image.attach(io: File.open('public/images/user3.jpeg'), filename: 'user3.jpeg')

User.create!(nickname:  "甘口ユーザー",
  email: "ddd@ddd",
  password:  "ddd444",
  password_confirmation: "ddd444",
  profile: "大体なんでも面白いと思ってしまいます（笑）  見ること自体が好きなのかな"
  )
user4 = User.find_by(email: "ddd@ddd")
user4.profile_image.attach(io: File.open('public/images/user4.png'), filename: 'user4.png')

User.create!(nickname:  "ストーリー重視",
  email: "eee@eee",
  password:  "eee555",
  password_confirmation: "eee555",
  profile: "ストーリーがよければ大抵面白い。話題になった作品は大体見てます！"
  )
user5 = User.find_by(email: "eee@eee")
user5.profile_image.attach(io: File.open('public/images/user5.png'), filename: 'user5.png')

User.create!(nickname:  "楽しさ重視",
  email: "fff@fff",
  password:  "fff666",
  password_confirmation: "fff666",
  profile: "面白いって個人で価値観違うよね…私は満足感重視！そしてミュージカル大好き"
  )
user6 = User.find_by(email: "fff@fff")
user6.profile_image.attach(io: File.open('public/images/user6.jpeg'), filename: 'user6.jpeg')


# ここから作品
admin.movies.create!(
  movie_title:  "MONSTER HUNTER",
  movie_text: "砂漠で偵察中のアルテミス（ミラ・ジョヴォヴィッチ）と彼女のエリート部隊は、突如起こった超巨大な砂嵐に遭遇し、必死に逃げるものの一瞬にして巻き込まれてしまう。 強烈な突風と、激しい稲光の中で気を失うアルテミス。そして目を覚ました場所は、我々の住む世界とは、全く異なる世界だった―",
  long:  "104分",
  release_date: "2021-03-26",
  producer:  "ポール・Ｗ・Ｓ・アンダーソン",
  character: "ミラ・ジョヴォヴィッチ、トニー・ジャー、ティップ・“Ｔ．Ｉ．”・ハリス、ミーガン・グッド、ディエゴ・ボネータ、山崎紘菜、ロン・パールマン",
  user_id: "1"
)
movie1 = Movie.find_by(movie_title: "MONSTER HUNTER")
movie1.movie_image.attach(io: File.open('public/images/movie1.jpeg'), filename: 'movie1.jpeg')

admin.movies.create!(
  movie_title:  "約束のネバーランド",
  movie_text: "幸せに満ち溢れた楽園のような孤児院「グレイス＝フィールドハウス」。そこで暮らす孤児たちは、母親代わりでみんなから“ママ”と呼ばれているイザベラのもと、里親に引き取られる年齢になる日を待ちわびていた。エマ（浜辺美波）、レイ（城桧吏）、ノーマン（板垣李光人）の３人も、いつか外の世界で暮らすことで、より幸せな日々がやってくると信じていた、“その日”がくるまでは…。",
  long:  "119分",
  release_date: "2020-12-18",
  producer:  "平川雄一朗",
  character: "浜辺美波、城桧吏、板垣李光人、渡辺直美、北川景子",
  user_id: "1"
)
movie2 = Movie.find_by(movie_title: "約束のネバーランド")
movie2.movie_image.attach(io: File.open('app/assets/images/movie2.jpeg'), filename: 'movie2.jpeg')

admin.movies.create!(
  movie_title:  "シン・エヴァンゲリオン劇場版",
  movie_text: "前作『Q』ラストにて地上に不時着したシンジ・アスカ・アヤナミ（『序』『破』に登場したレイとは別個体の、シンジの母ユイの複製体）の3人はヴィレと合流すべく、リリン（人類）の活動可能領域を目指してコア化した大地を歩き続けていた---",
  long:  "155分",
  release_date: "2020-03-08",
  producer:  "庵野秀明",
  character: "碇シンジ：緒方恵美、綾波レイ：林原めぐみ、式波・アスカ・ラングレー：宮村優子、真希波・マリ・イラストリアス：坂本真綾、葛城ミサト：三石琴乃、赤木リツコ：山口由里子",
  user_id: "1"
)
movie3 = Movie.find_by(movie_title: "シン・エヴァンゲリオン劇場版")
movie3.movie_image.attach(io: File.open('app/assets/images/movie3.jpeg'), filename: 'movie3.jpeg')

admin.movies.create!(
  movie_title:  "ウマ娘 プリティーダービー season2",
  movie_text: "シンボリルドルフに憧れて無敗の三冠を目指すトウカイテイオーは、次走の日本ダービーを目前に日本中の注目を集めていた。そして迎えた本番、入場規制が敷かれるほど盛り上がる中、トウカイテイオーは一番運のあるウマ娘が勝つとされるレースに挑む！",
  long:  "1話23分 全13話",
  release_date: "2020-01-02",
  producer:  "及川 啓",
  character: "トウカイテイオー：Machico、メジロマックイーン：大西 沙織、スペシャルウィーク：和氣 あず未、サイレンススズカ：高野 麻里佳、ウオッカ：大橋 彩香、ダイワスカーレット：木村 千咲、ゴールドシップ：上田 瞳",
  user_id: "1"
)
movie4 = Movie.find_by(movie_title: "ウマ娘 プリティーダービー season2")
movie4.movie_image.attach(io: File.open('app/assets/images/movie4.jpeg'), filename: 'movie4.jpeg')

admin.movies.create!(
  movie_title:  "スター・ウォーズ／スカイウォーカーの夜明け",
  movie_text: "はるか彼方の銀河系で繰り広げられる、スカイウォーカー家を中心とした壮大な＜サーガ＞の結末は、光と闇のフォースをめぐる最終決戦に託された─　果たして、彼らを待ち受ける運命とは？そして、いかなるエンディングを迎えるのか？",
  long:  "142分",
  release_date: "2019-12-20",
  producer:  "Ｊ・Ｊ・エイブラムス",
  character: "デイジー・リドリー、アダム・ドライバー、ジョン・ボイエガ、オスカー・アイザック、マーク・ハミル、ビリー・ディー・ウィリアムズ、キャリー・フィッシャー",
  user_id: "1"
)
movie5 = Movie.find_by(movie_title: "スター・ウォーズ／スカイウォーカーの夜明け")
movie5.movie_image.attach(io: File.open('app/assets/images/movie5.jpeg'), filename: 'movie5.jpeg')

admin.movies.create!(
  movie_title:  "来る",
  movie_text: "オカルトライター・野崎のもとに相談者・田原が訪れた。最近身の回りで超常現象としか言いようのない怪異な出来事が相次いで起きていると言う。田原は、妻・香奈と幼い一人娘・知紗に危害が及ぶことを恐れていた。野崎は、霊媒師の血をひくキャバ嬢・真琴とともに調査を始めるのだが、田原家に憑いている「何か」は想像をはるかに超えて強力なモノだった。民俗学者・津田によると、その「何か」とは、田原の故郷の民間伝承に由来する化け物「■■■■」ではないかと言う。対抗策を探す野崎と真琴。そして記憶を辿る田原…幼き日。「お山」と呼ばれる深い森。片足だけ遺された赤い子供靴。",
  long:  "134分",
  release_date: "2018-12-07",
  producer:  "中島哲也",
  character: "岡田准一、黒木華、小松菜奈、青木崇高、柴田理恵、太賀、志田愛珠、蜷川みほ、伊集院光、石田えり、松たか子、妻夫木聡",
  user_id: "1"
)
movie6 = Movie.find_by(movie_title: "来る")
movie6.movie_image.attach(io: File.open('app/assets/images/movie6.jpeg'), filename: 'movie6.jpeg')

admin.movies.create!(
  movie_title:  "3idiots",
  movie_text: "日の出の勢いで躍進するインドの未来を担うエリート軍団を輩出する、超難関理系大学ICE。エンジニアを目指す天才が競い合うキャンパスで、型破りな自由人のランチョー、機械より動物好きなファルハーン、なんでも神頼みの苦学生ラジューの“三バカトリオ”が、鬼学長を激怒させ、珍騒動を巻き起こす。 抱腹絶倒の学園コメディに見せつつ、行方不明のランチョーを探すミステリー仕立ての“10年後”が同時進行。根底に流れるのは学歴競争。加熱するインドの教育問題に一石を投じ、真に“今を生きる”ことを問いかける万国普遍のテーマ。",
  long:  "170分",
  release_date: "2013-05-18",
  producer:  "ラージクマール・ヒラーニ",
  character: "アーミル・カーン, カリーナ・カプール",
  user_id: "1"
)
movie7 = Movie.find_by(movie_title: "3idiots")
movie7.movie_image.attach(io: File.open('app/assets/images/movie7.png'), filename: 'movie7.png')

admin.movies.create!(
  movie_title:  "ジュラシック・パーク",
  movie_text: "コスタリカ沖の孤島につくられたテーマパーク「ジュラシック・パーク」。そこでは太古の琥珀に閉じ込められたDNAを使い、恐竜たちを蘇らせていた。前代未聞の夢の大テーマパークになる予定だったが、ある夜、安全装置が解除され、恐竜たちが柵の外へ脱走、次々と人間たちを襲っていく。島に残された人間は、島からの脱出を目指すのだが……。",
  long:  "128分",
  release_date: "1993-07-24",
  producer:  "スティーヴン・スピルバーグ",
  character: "アラン・グラント（サム・ニール・富山敬）、エリー・サトラー（ローラ・ダーン・弥永和子）、イアン・マルコム（ジェフ・ゴールドブラム・大塚芳忠）",
  user_id: "1"
)
movie8 = Movie.find_by(movie_title: "ジュラシック・パーク")
movie8.movie_image.attach(io: File.open('app/assets/images/movie8.jpeg'), filename: 'movie8.jpeg')

admin.movies.create!(
  movie_title:  "ロード・オブ・ザ・リング/王の帰還",
  movie_text: "とうとうモルドールへとたどり着いたフロド達。しかし、悪の魔の手もまた、彼らへと迫っていた。彼らの旅の行方は果たして。映画史に名を残す名作、ここに完結。",
  long:  "201分",
  release_date: "2003-12-01",
  producer:  "ピーター・ジャクソン",
  character: "フロド・バギンズ : イライジャ・ウッド（日本語吹替版：浪川大輔）、サムワイズ・ギャムジー（サム） : ショーン・アスティン（谷田真吾）、アラゴルン : ヴィゴ・モーテンセン（大塚芳忠）、ガンダルフ : イアン・マッケラン（有川博）",
  user_id: "1"
)
movie9 = Movie.find_by(movie_title: "ロード・オブ・ザ・リング/王の帰還")
movie9.movie_image.attach(io: File.open('app/assets/images/movie9.jpg'), filename: 'movie9.jpg')

admin.movies.create!(
  movie_title:  "おおかみこどもの雨と雪",
  movie_text: "大学生の花は“おおかみおとこ”に恋をし、愛しあい、ふたつの新しい命を授かった。雪の日に生まれた姉は≪雪≫、雨の日に生まれた弟は≪雨≫と名づけられた二人には、大きなヒミツがあった。人間とおおかみのふたつの顔を持つ≪おおかみこども≫として生を受けたのだ。雪と雨が≪おおかみこども≫であることを隠すため、家族4人は、都会の片隅でひっそりとつつましくも幸せに暮らしていた。永遠に続くと思われた日々は、父である“おおかみおとこ”の死によって突然奪われる。取り残された、花と雪と雨の3人。幼いふたりの子供と幸せに生きるため、母は決断する。都会の人の目を離れて、厳しくも豊かな自然に囲まれた田舎町に移り住むことを・・",
  long:  "117分",
  release_date: "2012-07-21",
  producer:  "細田守",
  character: "声：宮崎あおい、大沢たかお",
  user_id: "1"
)
movie10 = Movie.find_by(movie_title: "おおかみこどもの雨と雪")
movie10.movie_image.attach(io: File.open('app/assets/images/movie10.jpg'), filename: 'movie10.jpg')

admin.movies.create!(
  movie_title:  "バイオハザード",
  movie_text: "ある日、アリスは記憶が曖昧な状態で目覚める。さ迷っていると、突然謎の特殊舞台に拘束され、地下施設に連れて行かれる。そこはアメリカ最大の製薬会社アンブレラの地下研究所「ハイブ」だった。研究所では、人類をアンデッド化（ゾンビ化）してしまう恐ろしい生物兵器T-ウィルスが漏洩するバイオハザードが発生---",
  long:  "100分",
  release_date: "2002-08-31",
  producer:  "ポール・W・S・アンダーソン",
  character: "アリス・アバーナシー：ミラ・ジョヴォヴィッチ(本田貴子)、マット・アディソン：エリック・メビウス(宮本充)、レイン・オカンポ：ミシェル・ロドリゲス(朴璐美)",
  user_id: "1"
)
movie11 = Movie.find_by(movie_title: "バイオハザード")
movie11.movie_image.attach(io: File.open('app/assets/images/movie11.jpeg'), filename: 'movie11.jpeg')

admin.movies.create!(
  movie_title:  "THE GREATEST SHOWMAN",
  movie_text: "主人公のP.T.バーナムは＜ショービジネス＞の概念を生み出した男。誰もがオンリーワンになれる場所をエンターテインメントの世界に作り出し、人々の人生を勇気と希望で照らした実在の人物だ。そんなバーナムを支えたのは、どんな時も彼の味方であり続けた幼なじみの妻チャリティ。彼女の愛を心の糧に、仲間たちの友情を原動力に、バーナムはショーの成功に向かってひたむきに歩む。",
  long:  "104",
  release_date: "2018-02-16",
  producer:  "マイケル・グレイシー",
  character: "ヒュー・ジャックマン、ザック・エフロン、ミシェル・ウィリアムズ、レベッカ・ファーガソン、ゼンデイヤ",
  user_id: "1"
)
movie12 = Movie.find_by(movie_title: "THE GREATEST SHOWMAN")
movie12.movie_image.attach(io: File.open('app/assets/images/movie12.jpg'), filename: 'movie12.jpg')


# ここからレビュー
movie9.reviews.create!(
  review_text: "指輪物語ファンで見ていたが、余計な部分を深掘りしすぎている感が否めない",
  movie_id: "9",
  user_id: "4"
)
review1 = Review.find_by(id: 1)

review1.create_review_status!(
  review_story:  "2",
  review_impact: "4",
  review_impressed:  "3",
  review_happy: "5",
  review_character:  "7",
  review_beautiful: "6",
  review_score: "30",
  review_id: "1"
)
review_status1 = ReviewStatus.find_by(id: 1)

user4.create_user_status!(
  user_story:  (review_status1.review_story.to_i - 5).abs,
  user_impact: (review_status1.review_impact.to_i - 5).abs,
  user_impressed: (review_status1.review_impressed.to_i - 5).abs,
  user_happy: (review_status1.review_happy.to_i - 5).abs,
  user_character: (review_status1.review_character.to_i - 5).abs,
  user_beautiful: (review_status1.review_beautiful.to_i - 5).abs,
  user_score: review_status1.review_score.to_i,
  user_id: "4"
)


movie6.reviews.create!(
  review_text: "最後の展開わかりにくすぎ、結局霊媒師がどうなったのか描写するべき！！",
  movie_id: "6",
  user_id: "4"
)
review2 = Review.find_by(id: 2)

review2.create_review_status!(
  review_story:  "3",
  review_impact: "6",
  review_impressed:  "6",
  review_happy: "5",
  review_character:  "8",
  review_beautiful: "5",
  review_score: "20",
  review_id: "2"
)
review_status2 = ReviewStatus.find_by(id: 2)

user4.create_user_status!(
  user_story:  (review_status2.review_story.to_i - 5).abs,
  user_impact: (review_status2.review_impact.to_i - 5).abs,
  user_impressed: (review_status2.review_impressed.to_i - 5).abs,
  user_happy: (review_status2.review_happy.to_i - 5).abs,
  user_character: (review_status2.review_character.to_i - 5).abs,
  user_beautiful: (review_status2.review_beautiful.to_i - 5).abs,
  user_score: review_status2.review_score.to_i,
  user_id: "4"
)


movie5.reviews.create!(
  review_text: "うーん、ダースベーダーの代わりは難しい。そしてスターデストロイヤー量産は冷めた",
  movie_id: "5",
  user_id: "4"
)
review3 = Review.find_by(id: 3)

review3.create_review_status!(
  review_story:  "5",
  review_impact: "4",
  review_impressed:  "2",
  review_happy: "4",
  review_character:  "1",
  review_beautiful: "8",
  review_score: "30",
  review_id: "3"
)
review_status3 = ReviewStatus.find_by(id: 3)

user4.create_user_status!(
  user_story:  (review_status3.review_story.to_i - 5).abs,
  user_impact: (review_status3.review_impact.to_i - 5).abs,
  user_impressed: (review_status3.review_impressed.to_i - 5).abs,
  user_happy: (review_status3.review_happy.to_i - 5).abs,
  user_character: (review_status3.review_character.to_i - 5).abs,
  user_beautiful: (review_status3.review_beautiful.to_i - 5).abs,
  user_score: review_status3.review_score.to_i,
  user_id: "4"
)