# 管理者
admin = User.create!(nickname:  "管理者",
  email: "admin@admin",
  password:  "adminadmin",
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
user4 = User.find_by(email: "ccc@ccc")
user4.profile_image.attach(io: File.open('public/images/user3.jpeg'), filename: 'user3.jpeg')

User.create!(nickname:  "甘口ユーザー",
  email: "ddd@ddd",
  password:  "ddd444",
  password_confirmation: "ddd444",
  profile: "大体なんでも面白いと思ってしまいます（笑）  見ること自体が好きなのかな"
  )
user5 = User.find_by(email: "ddd@ddd")
user5.profile_image.attach(io: File.open('public/images/user4.png'), filename: 'user4.png')

User.create!(nickname:  "ストーリー重視",
  email: "eee@eee",
  password:  "eee555",
  password_confirmation: "eee555",
  profile: "ストーリーがよければ大抵面白い。話題になった作品は大体見てます！"
  )
user6 = User.find_by(email: "eee@eee")
user6.profile_image.attach(io: File.open('public/images/user5.png'), filename: 'user5.png')

User.create!(nickname:  "楽しさ重視",
  email: "fff@fff",
  password:  "fff666",
  password_confirmation: "fff666",
  profile: "面白いって個人で価値観違うよね…私は満足感重視！そしてミュージカル大好き"
  )
user7 = User.find_by(email: "fff@fff")
user7.profile_image.attach(io: File.open('public/images/user6.jpeg'), filename: 'user6.jpeg')

User.create!(nickname:  "加藤健",
  email: "ggg@ggg",
  password:  "ggg777",
  password_confirmation: "ggg777",
  profile: "アニメ、話題になった映画大抵見てます。若干評論家気取りです。"
  )
user8 = User.find_by(email: "ggg@ggg")
user8.profile_image.attach(io: File.open('public/images/user7.jpeg'), filename: 'user7.jpeg')


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

movie1.tag_list.add "映画", "モンスターハンター", "ホラー", "サバイバル", "ゲーム"
movie1.save

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

movie2.tag_list.add "映画", "日本", "ミステリー", "ホラー", "漫画"
movie2.save

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

movie3.tag_list.add "映画", "アニメ", "日本", "庵野秀明", "神話"
movie3.save

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

movie4.tag_list.add "テレビアニメ", "アニメ", "競馬", "スポーツ", "歴史"
movie4.save

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

movie5.tag_list.add "映画", "有名タイトル", "SF", "シリーズ", "宇宙"
movie5.save

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

movie6.tag_list.add "映画", "ホラー", "日本", "ジャパニーズホラー", "サスペンス"
movie6.save

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

movie7.tag_list.add "映画", "学び", "きっと、うまくいく", "インド", "ミュージカル"
movie7.save

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

movie8.tag_list.add "映画", "SF", "恐竜", "スティーヴン・スピルバーグ", "大ヒットタイトル"
movie8.save

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

movie9.tag_list.add "映画", "冒険", "指輪物語", "ファンタジー", "有名タイトル"
movie9.save

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

movie10.tag_list.add "映画", "アニメ", "日本", "細田守", "感動"
movie10.save

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

movie11.tag_list.add "映画", "SF", "ホラー", "アクション", "ゲーム"
movie11.save

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

movie12.tag_list.add "映画", "ミュージカル", "歴史", "グレイテスト・ショーマン", "歌"
movie12.save

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

UserStatus.create!(
  user_story:  (review_status1.review_story.to_i - 5).abs * 2,
  user_impact: (review_status1.review_impact.to_i - 5).abs * 2,
  user_impressed: (review_status1.review_impressed.to_i - 5).abs * 2,
  user_happy: (review_status1.review_happy.to_i - 5).abs * 2,
  user_character: (review_status1.review_character.to_i - 5).abs * 2,
  user_beautiful: (review_status1.review_beautiful.to_i - 5).abs * 2,
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

UserStatus.create!(
  user_story:  (review_status2.review_story.to_i - 5).abs * 2,
  user_impact: (review_status2.review_impact.to_i - 5).abs * 2,
  user_impressed: (review_status2.review_impressed.to_i - 5).abs * 2,
  user_happy: (review_status2.review_happy.to_i - 5).abs * 2,
  user_character: (review_status2.review_character.to_i - 5).abs * 2,
  user_beautiful: (review_status2.review_beautiful.to_i - 5).abs * 2,
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

UserStatus.create!(
  user_story:  (review_status3.review_story.to_i - 5).abs * 2,
  user_impact: (review_status3.review_impact.to_i - 5).abs * 2,
  user_impressed: (review_status3.review_impressed.to_i - 5).abs * 2,
  user_happy: (review_status3.review_happy.to_i - 5).abs * 2,
  user_character: (review_status3.review_character.to_i - 5).abs * 2,
  user_beautiful: (review_status3.review_beautiful.to_i - 5).abs * 2,
  user_score: review_status3.review_score.to_i,
  user_id: "4"
)


movie2.reviews.create!(
  review_text: "まぁアニメの実写化ってこんなものだよね",
  movie_id: "2",
  user_id: "4"
)
review4 = Review.find_by(id: 4)

review4.create_review_status!(
  review_story:  "4",
  review_impact: "4",
  review_impressed:  "5",
  review_happy: "4",
  review_character:  "7",
  review_beautiful: "2",
  review_score: "20",
  review_id: "4"
)
review_status4 = ReviewStatus.find_by(id: 4)

UserStatus.create!(
  user_story:  (review_status4.review_story.to_i - 5).abs * 2,
  user_impact: (review_status4.review_impact.to_i - 5).abs * 2,
  user_impressed: (review_status4.review_impressed.to_i - 5).abs * 2,
  user_happy: (review_status4.review_happy.to_i - 5).abs * 2,
  user_character: (review_status4.review_character.to_i - 5).abs * 2,
  user_beautiful: (review_status4.review_beautiful.to_i - 5).abs * 2,
  user_score: review_status4.review_score.to_i,
  user_id: "4"
)


movie11.reviews.create!(
  review_text: "原作のバイオと登場人物もストーリーもかなり違ったけど、面白かった",
  movie_id: "11",
  user_id: "5"
)
review5 = Review.find_by(id: 5)

review5.create_review_status!(
  review_story:  "8",
  review_impact: "9",
  review_impressed:  "7",
  review_happy: "4",
  review_character:  "6",
  review_beautiful: "7",
  review_score: "90",
  review_id: "5"
)
review_status5 = ReviewStatus.find_by(id: 5)

UserStatus.create!(
  user_story:  (review_status5.review_story.to_i - 5).abs * 2,
  user_impact: (review_status5.review_impact.to_i - 5).abs * 2,
  user_impressed: (review_status5.review_impressed.to_i - 5).abs * 2,
  user_happy: (review_status5.review_happy.to_i - 5).abs * 2,
  user_character: (review_status5.review_character.to_i - 5).abs * 2,
  user_beautiful: (review_status5.review_beautiful.to_i - 5).abs * 2,
  user_score: review_status5.review_score.to_i,
  user_id: "5"
)


movie10.reviews.create!(
  review_text: "花が雪を送り出すシーンは泣いた。雨と雪の立場が逆転していくのが面白かった",
  movie_id: "10",
  user_id: "5"
)
review6 = Review.find_by(id: 6)

review6.create_review_status!(
  review_story:  "10",
  review_impact: "7",
  review_impressed:  "10",
  review_happy: "6",
  review_character:  "7",
  review_beautiful: "9",
  review_score: "100",
  review_id: "6"
)
review_status6 = ReviewStatus.find_by(id: 6)

UserStatus.create!(
  user_story:  (review_status6.review_story.to_i - 5).abs * 2,
  user_impact: (review_status6.review_impact.to_i - 5).abs * 2,
  user_impressed: (review_status6.review_impressed.to_i - 5).abs * 2,
  user_happy: (review_status6.review_happy.to_i - 5).abs * 2,
  user_character: (review_status6.review_character.to_i - 5).abs * 2,
  user_beautiful: (review_status6.review_beautiful.to_i - 5).abs * 2,
  user_score: review_status6.review_score.to_i,
  user_id: "5"
)


movie6.reviews.create!(
  review_text: "霊媒師の総力戦は面白かった。予想以上に人が死んでビビッた",
  movie_id: "6",
  user_id: "5"
)
review7 = Review.find_by(id: 7)

review7.create_review_status!(
  review_story:  "7",
  review_impact: "9",
  review_impressed:  "5",
  review_happy: "7",
  review_character:  "10",
  review_beautiful: "3",
  review_score: "70",
  review_id: "7"
)
review_status7 = ReviewStatus.find_by(id: 7)

UserStatus.create!(
  user_story:  (review_status7.review_story.to_i - 5).abs * 2,
  user_impact: (review_status7.review_impact.to_i - 5).abs * 2,
  user_impressed: (review_status7.review_impressed.to_i - 5).abs * 2,
  user_happy: (review_status7.review_happy.to_i - 5).abs * 2,
  user_character: (review_status7.review_character.to_i - 5).abs * 2,
  user_beautiful: (review_status7.review_beautiful.to_i - 5).abs * 2,
  user_score: review_status7.review_score.to_i,
  user_id: "5"
)


movie3.reviews.create!(
  review_text: "前半ちょっと眠かったけど、とりあえずシリーズ完結して満足。庵野監督お疲れ様！！",
  movie_id: "3",
  user_id: "5"
)
review8 = Review.find_by(id: 8)

review8.create_review_status!(
  review_story:  "7",
  review_impact: "6",
  review_impressed:  "8",
  review_happy: "7",
  review_character:  "9",
  review_beautiful: "10",
  review_score: "90",
  review_id: "8"
)
review_status8 = ReviewStatus.find_by(id: 8)

UserStatus.create!(
  user_story:  (review_status8.review_story.to_i - 5).abs * 2,
  user_impact: (review_status8.review_impact.to_i - 5).abs * 2,
  user_impressed: (review_status8.review_impressed.to_i - 5).abs * 2,
  user_happy: (review_status8.review_happy.to_i - 5).abs * 2,
  user_character: (review_status8.review_character.to_i - 5).abs * 2,
  user_beautiful: (review_status8.review_beautiful.to_i - 5).abs * 2,
  user_score: review_status8.review_score.to_i,
  user_id: "5"
)


movie1.reviews.create!(
  review_text: "ゲームの映画化ということでかなりハードル下げて見たら、思ったより面白かった！",
  movie_id: "1",
  user_id: "5"
)
review9 = Review.find_by(id: 9)

review9.create_review_status!(
  review_story:  "7",
  review_impact: "7",
  review_impressed:  "5",
  review_happy: "6",
  review_character:  "3",
  review_beautiful: "8",
  review_score: "70",
  review_id: "9"
)
review_status9 = ReviewStatus.find_by(id: 9)

UserStatus.create!(
  user_story:  (review_status9.review_story.to_i - 5).abs * 2,
  user_impact: (review_status9.review_impact.to_i - 5).abs * 2,
  user_impressed: (review_status9.review_impressed.to_i - 5).abs * 2,
  user_happy: (review_status9.review_happy.to_i - 5).abs * 2,
  user_character: (review_status9.review_character.to_i - 5).abs * 2,
  user_beautiful: (review_status9.review_beautiful.to_i - 5).abs * 2,
  user_score: review_status9.review_score.to_i,
  user_id: "5"
)


movie12.reviews.create!(
  review_text: "バーナムさんの史実に基づいてるとはいえ、展開に中だるみがあったと思う。",
  movie_id: "12",
  user_id: "6"
)
review10 = Review.find_by(id: 10)

review10.create_review_status!(
  review_story:  "2",
  review_impact: "7",
  review_impressed:  "7",
  review_happy: "8",
  review_character:  "7",
  review_beautiful: "7",
  review_score: "60",
  review_id: "10"
)
review_status10 = ReviewStatus.find_by(id: 10)

UserStatus.create!(
  user_story:  (review_status10.review_story.to_i - 5).abs * 2,
  user_impact: (review_status10.review_impact.to_i - 5).abs * 2,
  user_impressed: (review_status10.review_impressed.to_i - 5).abs * 2,
  user_happy: (review_status10.review_happy.to_i - 5).abs * 2,
  user_character: (review_status10.review_character.to_i - 5).abs * 2,
  user_beautiful: (review_status10.review_beautiful.to_i - 5).abs * 2,
  user_score: review_status10.review_score.to_i,
  user_id: "6"
)


movie9.reviews.create!(
  review_text: "幽霊に助けられるのは予想できたけど、最終盤って感じがしてよかった",
  movie_id: "9",
  user_id: "6"
)
review11 = Review.find_by(id: 11)

review11.create_review_status!(
  review_story:  "9",
  review_impact: "7",
  review_impressed:  "6",
  review_happy: "5",
  review_character:  "8",
  review_beautiful: "10",
  review_score: "70",
  review_id: "11"
)
review_status11 = ReviewStatus.find_by(id: 11)

UserStatus.create!(
  user_story:  (review_status11.review_story.to_i - 5).abs * 2,
  user_impact: (review_status11.review_impact.to_i - 5).abs * 2,
  user_impressed: (review_status11.review_impressed.to_i - 5).abs * 2,
  user_happy: (review_status11.review_happy.to_i - 5).abs * 2,
  user_character: (review_status11.review_character.to_i - 5).abs * 2,
  user_beautiful: (review_status11.review_beautiful.to_i - 5).abs * 2,
  user_score: review_status11.review_score.to_i,
  user_id: "6"
)


movie8.reviews.create!(
  review_text: "原点にして頂点。やっぱスティーブンスピルバーグ最高だわ",
  movie_id: "8",
  user_id: "6"
)
review12 = Review.find_by(id: 12)

review12.create_review_status!(
  review_story:  "8",
  review_impact: "8",
  review_impressed:  "8",
  review_happy: "7",
  review_character:  "8",
  review_beautiful: "9",
  review_score: "90",
  review_id: "12"
)
review_status12 = ReviewStatus.find_by(id: 12)

UserStatus.create!(
  user_story:  (review_status12.review_story.to_i - 5).abs * 2,
  user_impact: (review_status12.review_impact.to_i - 5).abs * 2,
  user_impressed: (review_status12.review_impressed.to_i - 5).abs * 2,
  user_happy: (review_status12.review_happy.to_i - 5).abs * 2,
  user_character: (review_status12.review_character.to_i - 5).abs * 2,
  user_beautiful: (review_status12.review_beautiful.to_i - 5).abs * 2,
  user_score: review_status12.review_score.to_i,
  user_id: "6"
)


movie6.reviews.create!(
  review_text: "ストーリー自体は面白かった。ただ最後の展開が残念",
  movie_id: "6",
  user_id: "6"
)
review13 = Review.find_by(id: 13)

review13.create_review_status!(
  review_story:  "1",
  review_impact: "8",
  review_impressed:  "5",
  review_happy: "4",
  review_character:  "6",
  review_beautiful: "3",
  review_score: "50",
  review_id: "13"
)
review_status13 = ReviewStatus.find_by(id: 13)

UserStatus.create!(
  user_story:  (review_status13.review_story.to_i - 5).abs * 2,
  user_impact: (review_status13.review_impact.to_i - 5).abs * 2,
  user_impressed: (review_status13.review_impressed.to_i - 5).abs * 2,
  user_happy: (review_status13.review_happy.to_i - 5).abs * 2,
  user_character: (review_status13.review_character.to_i - 5).abs * 2,
  user_beautiful: (review_status13.review_beautiful.to_i - 5).abs * 2,
  user_score: review_status13.review_score.to_i,
  user_id: "6"
)


movie2.reviews.create!(
  review_text: "ダイジェスト版かよ。ストーリーになにも重みがなくて頭に入ってこなかった。。。",
  movie_id: "2",
  user_id: "6"
)
review14 = Review.find_by(id: 14)

review14.create_review_status!(
  review_story:  "1",
  review_impact: "7",
  review_impressed:  "5",
  review_happy: "5",
  review_character:  "8",
  review_beautiful: "4",
  review_score: "40",
  review_id: "14"
)
review_status14 = ReviewStatus.find_by(id: 14)

UserStatus.create!(
  user_story:  (review_status14.review_story.to_i - 5).abs * 2,
  user_impact: (review_status14.review_impact.to_i - 5).abs * 2,
  user_impressed: (review_status14.review_impressed.to_i - 5).abs * 2,
  user_happy: (review_status14.review_happy.to_i - 5).abs * 2,
  user_character: (review_status14.review_character.to_i - 5).abs * 2,
  user_beautiful: (review_status14.review_beautiful.to_i - 5).abs * 2,
  user_score: review_status14.review_score.to_i,
  user_id: "6"
)


movie12.reviews.create!(
  review_text: "まず劇中歌が最高！！もっと多くの人が見るべき！ララランドと比較にならない",
  movie_id: "12",
  user_id: "7"
)
review15 = Review.find_by(id: 15)

review15.create_review_status!(
  review_story:  "7",
  review_impact: "9",
  review_impressed:  "9",
  review_happy: "10",
  review_character:  "7",
  review_beautiful: "8",
  review_score: "100",
  review_id: "15"
)
review_status15 = ReviewStatus.find_by(id: 15)

UserStatus.create!(
  user_story:  (review_status15.review_story.to_i - 5).abs * 2,
  user_impact: (review_status15.review_impact.to_i - 5).abs * 2,
  user_impressed: (review_status15.review_impressed.to_i - 5).abs * 2,
  user_happy: (review_status15.review_happy.to_i - 5).abs * 2,
  user_character: (review_status15.review_character.to_i - 5).abs * 2,
  user_beautiful: (review_status15.review_beautiful.to_i - 5).abs * 2,
  user_score: review_status15.review_score.to_i,
  user_id: "7"
)


movie5.reviews.create!(
  review_text: "まさに大団円という感じ、スターウォーズってだけで楽しい！！",
  movie_id: "5",
  user_id: "7"
)
review16 = Review.find_by(id: 16)

review16.create_review_status!(
  review_story:  "8",
  review_impact: "7",
  review_impressed:  "7",
  review_happy: "9",
  review_character:  "8",
  review_beautiful: "9",
  review_score: "70",
  review_id: "16"
)
review_status16 = ReviewStatus.find_by(id: 16)

UserStatus.create!(
  user_story:  (review_status16.review_story.to_i - 5).abs * 2,
  user_impact: (review_status16.review_impact.to_i - 5).abs * 2,
  user_impressed: (review_status16.review_impressed.to_i - 5).abs * 2,
  user_happy: (review_status16.review_happy.to_i - 5).abs * 2,
  user_character: (review_status16.review_character.to_i - 5).abs * 2,
  user_beautiful: (review_status16.review_beautiful.to_i - 5).abs * 2,
  user_score: review_status16.review_score.to_i,
  user_id: "7"
)


movie4.reviews.create!(
  review_text: "トーカイテイオーの史実だけあって、話が全体的に重かった",
  movie_id: "4",
  user_id: "7"
)
review17 = Review.find_by(id: 17)

review17.create_review_status!(
  review_story:  "8",
  review_impact: "6",
  review_impressed:  "9",
  review_happy: "1",
  review_character:  "8",
  review_beautiful: "8",
  review_score: "50",
  review_id: "17"
)
review_status17 = ReviewStatus.find_by(id: 17)

UserStatus.create!(
  user_story:  (review_status17.review_story.to_i - 5).abs * 2,
  user_impact: (review_status17.review_impact.to_i - 5).abs * 2,
  user_impressed: (review_status17.review_impressed.to_i - 5).abs * 2,
  user_happy: (review_status17.review_happy.to_i - 5).abs * 2,
  user_character: (review_status17.review_character.to_i - 5).abs * 2,
  user_beautiful: (review_status17.review_beautiful.to_i - 5).abs * 2,
  user_score: review_status17.review_score.to_i,
  user_id: "7"
)


movie1.reviews.create!(
  review_text: "モンハンである必要を感じなかったが、アイルーが可愛かったので全て許せる！",
  movie_id: "1",
  user_id: "7"
)
review18 = Review.find_by(id: 18)

review18.create_review_status!(
  review_story:  "8",
  review_impact: "6",
  review_impressed:  "5",
  review_happy: "9",
  review_character:  "2",
  review_beautiful: "7",
  review_score: "60",
  review_id: "18"
)
review_status18 = ReviewStatus.find_by(id: 18)

UserStatus.create!(
  user_story:  (review_status18.review_story.to_i - 5).abs * 2,
  user_impact: (review_status18.review_impact.to_i - 5).abs * 2,
  user_impressed: (review_status18.review_impressed.to_i - 5).abs * 2,
  user_happy: (review_status18.review_happy.to_i - 5).abs * 2,
  user_character: (review_status18.review_character.to_i - 5).abs * 2,
  user_beautiful: (review_status18.review_beautiful.to_i - 5).abs * 2,
  user_score: review_status18.review_score.to_i,
  user_id: "7"
)


Review.create!(
  review_text: "もともとゲームのファンだったが、ゲームの要素がほぼほぼなくてちょっとがっかりした。",
  movie_id: "1",
  user_id: "8"
)

ReviewStatus.create!(
  review_story:  "8",
  review_impact: "9",
  review_impressed:  "4",
  review_happy: "5",
  review_character:  "3",
  review_beautiful: "8",
  review_score: "70",
  review_id: "19"
)
review_status19 = ReviewStatus.find_by(id: 19)

UserStatus.create!(
  user_story:  (review_status19.review_story.to_i - 5).abs * 2,
  user_impact: (review_status19.review_impact.to_i - 5).abs * 2,
  user_impressed: (review_status19.review_impressed.to_i - 5).abs * 2,
  user_happy: (review_status19.review_happy.to_i - 5).abs * 2,
  user_character: (review_status19.review_character.to_i - 5).abs * 2,
  user_beautiful: (review_status19.review_beautiful.to_i - 5).abs * 2,
  user_score: review_status19.review_score.to_i,
  user_id: "8"
)


Review.create!(
  review_text: "原作、アニメを見ていたが、この実写映画が一番出来が悪い。所詮アニメの実写化は成功確率低い",
  movie_id: "2",
  user_id: "8"
)

ReviewStatus.create!(
  review_story:  "7",
  review_impact: "3",
  review_impressed:  "2",
  review_happy: "3",
  review_character:  "8",
  review_beautiful: "1",
  review_score: "30",
  review_id: "20"
)
review_status20 = ReviewStatus.find_by(id: 20)

UserStatus.create!(
  user_story:  (review_status20.review_story.to_i - 5).abs * 2,
  user_impact: (review_status20.review_impact.to_i - 5).abs * 2,
  user_impressed: (review_status20.review_impressed.to_i - 5).abs * 2,
  user_happy: (review_status20.review_happy.to_i - 5).abs * 2,
  user_character: (review_status20.review_character.to_i - 5).abs * 2,
  user_beautiful: (review_status20.review_beautiful.to_i - 5).abs * 2,
  user_score: review_status20.review_score.to_i,
  user_id: "8"
)


Review.create!(
  review_text: "庵野監督20年以上のエヴァの呪縛お疲れ様でした。満点という出来ではなかったけど、それだけで満足です。",
  movie_id: "3",
  user_id: "8"
)

ReviewStatus.create!(
  review_story:  "6",
  review_impact: "9",
  review_impressed:  "10",
  review_happy: "7",
  review_character:  "9",
  review_beautiful: "9",
  review_score: "90",
  review_id: "21"
)
review_status21 = ReviewStatus.find_by(id: 21)

UserStatus.create!(
  user_story:  (review_status21.review_story.to_i - 5).abs * 2,
  user_impact: (review_status21.review_impact.to_i - 5).abs * 2,
  user_impressed: (review_status21.review_impressed.to_i - 5).abs * 2,
  user_happy: (review_status21.review_happy.to_i - 5).abs * 2,
  user_character: (review_status21.review_character.to_i - 5).abs * 2,
  user_beautiful: (review_status21.review_beautiful.to_i - 5).abs * 2,
  user_score: review_status21.review_score.to_i,
  user_id: "8"
)


Review.create!(
  review_text: "２話のナイスネイチャが「テイオーがいたらなんて言わせない！！」というセリフで全部持って行かれた！！感動のシーンが多いのが印象的",
  movie_id: "4",
  user_id: "8"
)

ReviewStatus.create!(
  review_story:  "9",
  review_impact: "8",
  review_impressed:  "10",
  review_happy: "8",
  review_character:  "9",
  review_beautiful: "7",
  review_score: "80",
  review_id: "22"
)
review_status22 = ReviewStatus.find_by(id: 22)

UserStatus.create!(
  user_story:  (review_status22.review_story.to_i - 5).abs * 2,
  user_impact: (review_status22.review_impact.to_i - 5).abs * 2,
  user_impressed: (review_status22.review_impressed.to_i - 5).abs * 2,
  user_happy: (review_status22.review_happy.to_i - 5).abs * 2,
  user_character: (review_status22.review_character.to_i - 5).abs * 2,
  user_beautiful: (review_status22.review_beautiful.to_i - 5).abs * 2,
  user_score: review_status22.review_score.to_i,
  user_id: "8"
)


Review.create!(
  review_text: "パルパティーン議員との関連性を無理矢理つなげすぎ。ちょっと展開が強引だった。",
  movie_id: "5",
  user_id: "8"
)

ReviewStatus.create!(
  review_story:  "2",
  review_impact: "6",
  review_impressed:  "3",
  review_happy: "5",
  review_character:  "7",
  review_beautiful: "9",
  review_score: "40",
  review_id: "23"
)
review_status23 = ReviewStatus.find_by(id: 23)

UserStatus.create!(
  user_story:  (review_status23.review_story.to_i - 5).abs * 2,
  user_impact: (review_status23.review_impact.to_i - 5).abs * 2,
  user_impressed: (review_status23.review_impressed.to_i - 5).abs * 2,
  user_happy: (review_status23.review_happy.to_i - 5).abs * 2,
  user_character: (review_status23.review_character.to_i - 5).abs * 2,
  user_beautiful: (review_status23.review_beautiful.to_i - 5).abs * 2,
  user_score: review_status23.review_score.to_i,
  user_id: "8"
)


Review.create!(
  review_text: "最後のオムライスのシーンで、やっとボギワンを追い払ったなんて原作未読の人何人わかるよ。。。ちょっと最後の描写が酷かった。",
  movie_id: "6",
  user_id: "8"
)

ReviewStatus.create!(
  review_story:  "3",
  review_impact: "8",
  review_impressed:  "4",
  review_happy: "2",
  review_character:  "9",
  review_beautiful: "1",
  review_score: "30",
  review_id: "24"
)
review_status24 = ReviewStatus.find_by(id: 24)

UserStatus.create!(
  user_story:  (review_status24.review_story.to_i - 5).abs * 2,
  user_impact: (review_status24.review_impact.to_i - 5).abs * 2,
  user_impressed: (review_status24.review_impressed.to_i - 5).abs * 2,
  user_happy: (review_status24.review_happy.to_i - 5).abs * 2,
  user_character: (review_status24.review_character.to_i - 5).abs * 2,
  user_beautiful: (review_status24.review_beautiful.to_i - 5).abs * 2,
  user_score: review_status24.review_score.to_i,
  user_id: "8"
)


Review.create!(
  review_text: "all is wellという言葉が好きになった。ストーリーは完璧。面白いし度肝を抜かれた。ただ、少し長かった。",
  movie_id: "7",
  user_id: "8"
)

ReviewStatus.create!(
  review_story:  "9",
  review_impact: "9",
  review_impressed:  "7",
  review_happy: "10",
  review_character:  "8",
  review_beautiful: "3",
  review_score: "90",
  review_id: "25"
)
review_status25 = ReviewStatus.find_by(id: 25)

UserStatus.create!(
  user_story:  (review_status25.review_story.to_i - 5).abs * 2,
  user_impact: (review_status25.review_impact.to_i - 5).abs * 2,
  user_impressed: (review_status25.review_impressed.to_i - 5).abs * 2,
  user_happy: (review_status25.review_happy.to_i - 5).abs * 2,
  user_character: (review_status25.review_character.to_i - 5).abs * 2,
  user_beautiful: (review_status25.review_beautiful.to_i - 5).abs * 2,
  user_score: review_status25.review_score.to_i,
  user_id: "8"
)


Review.create!(
  review_text: "不朽の名作。初めてのCG映画にしてはクオリティ高すぎ。そして迫力ストーリーまで完璧",
  movie_id: "8",
  user_id: "8"
)

ReviewStatus.create!(
  review_story:  "8",
  review_impact: "9",
  review_impressed:  "6",
  review_happy: "5",
  review_character:  "7",
  review_beautiful: "10",
  review_score: "80",
  review_id: "26"
)
review_status26 = ReviewStatus.find_by(id: 26)

UserStatus.create!(
  user_story:  (review_status26.review_story.to_i - 5).abs * 2,
  user_impact: (review_status26.review_impact.to_i - 5).abs * 2,
  user_impressed: (review_status26.review_impressed.to_i - 5).abs * 2,
  user_happy: (review_status26.review_happy.to_i - 5).abs * 2,
  user_character: (review_status26.review_character.to_i - 5).abs * 2,
  user_beautiful: (review_status26.review_beautiful.to_i - 5).abs * 2,
  user_score: review_status26.review_score.to_i,
  user_id: "8"
)


Review.create!(
  review_text: "ロードオブザリングは二つの塔あたりから、迷走して気がする。まあ完結したからよし",
  movie_id: "9",
  user_id: "8"
)

ReviewStatus.create!(
  review_story:  "2",
  review_impact: "6",
  review_impressed:  "6",
  review_happy: "6",
  review_character:  "8",
  review_beautiful: "9",
  review_score: "40",
  review_id: "27"
)
review_status27 = ReviewStatus.find_by(id: 27)

UserStatus.create!(
  user_story:  (review_status27.review_story.to_i - 5).abs * 2,
  user_impact: (review_status27.review_impact.to_i - 5).abs * 2,
  user_impressed: (review_status27.review_impressed.to_i - 5).abs * 2,
  user_happy: (review_status27.review_happy.to_i - 5).abs * 2,
  user_character: (review_status27.review_character.to_i - 5).abs * 2,
  user_beautiful: (review_status27.review_beautiful.to_i - 5).abs * 2,
  user_score: review_status27.review_score.to_i,
  user_id: "8"
)


Review.create!(
  review_text: "雨を生んでいきなり父親がいなくなるシーンは驚いたが、全体的にストーリーが最高。正直、最後泣いた",
  movie_id: "10",
  user_id: "8"
)

ReviewStatus.create!(
  review_story:  "9",
  review_impact: "7",
  review_impressed:  "10",
  review_happy: "8",
  review_character:  "9",
  review_beautiful: "10",
  review_score: "100",
  review_id: "28"
)
review_status28 = ReviewStatus.find_by(id: 28)

UserStatus.create!(
  user_story:  (review_status28.review_story.to_i - 5).abs * 2,
  user_impact: (review_status28.review_impact.to_i - 5).abs * 2,
  user_impressed: (review_status28.review_impressed.to_i - 5).abs * 2,
  user_happy: (review_status28.review_happy.to_i - 5).abs * 2,
  user_character: (review_status28.review_character.to_i - 5).abs * 2,
  user_beautiful: (review_status28.review_beautiful.to_i - 5).abs * 2,
  user_score: review_status28.review_score.to_i,
  user_id: "8"
)


Review.create!(
  review_text: "やっぱ原作とかなり設定が違ったのがファンがゲンナリしてもったいないとは思ったが、ストーリー自体は面白かった。",
  movie_id: "11",
  user_id: "8"
)

ReviewStatus.create!(
  review_story:  "8",
  review_impact: "9",
  review_impressed:  "6",
  review_happy: "5",
  review_character:  "6",
  review_beautiful: "8",
  review_score: "60",
  review_id: "29"
)
review_status29 = ReviewStatus.find_by(id: 29)

UserStatus.create!(
  user_story:  (review_status29.review_story.to_i - 5).abs * 2,
  user_impact: (review_status29.review_impact.to_i - 5).abs * 2,
  user_impressed: (review_status29.review_impressed.to_i - 5).abs * 2,
  user_happy: (review_status29.review_happy.to_i - 5).abs * 2,
  user_character: (review_status29.review_character.to_i - 5).abs * 2,
  user_beautiful: (review_status29.review_beautiful.to_i - 5).abs * 2,
  user_score: review_status29.review_score.to_i,
  user_id: "8"
)


Review.create!(
  review_text: "迫力とミュージカルのシーンは良かった。ただストーリーがありきたりなのが気になった。",
  movie_id: "12",
  user_id: "8"
)

ReviewStatus.create!(
  review_story:  "1",
  review_impact: "9",
  review_impressed:  "7",
  review_happy: "10",
  review_character:  "8",
  review_beautiful: "9",
  review_score: "60",
  review_id: "30"
)
review_status30 = ReviewStatus.find_by(id: 30)

UserStatus.create!(
  user_story:  (review_status30.review_story.to_i - 5).abs * 2,
  user_impact: (review_status30.review_impact.to_i - 5).abs * 2,
  user_impressed: (review_status30.review_impressed.to_i - 5).abs * 2,
  user_happy: (review_status30.review_happy.to_i - 5).abs * 2,
  user_character: (review_status30.review_character.to_i - 5).abs * 2,
  user_beautiful: (review_status30.review_beautiful.to_i - 5).abs * 2,
  user_score: review_status30.review_score.to_i,
  user_id: "8"
)