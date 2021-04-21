function review() {
	// ストーリーレビュー
	// class = "ratings"の子要素を取得
	const story_stars = document.querySelector(".story_ratings").children;
	// const story_stars = document.getElementsByClassName("ratings").children;
	// id = "rating-value"の要素を取得
	const story_ratingValue = document.getElementById("story_rating-value");
	// id = "rating-value-display"の要素を取得
	const story_ratingValueDisplay = document.getElementById("story_rating-value-display");
	// story_indexという変数を定義
	let story_index;

	// reveiwの投稿ページに遷移するとstars.lengthの値（5）だけ繰り返し
	for(let i=0; i<story_stars.length; i++){
		console.log(story_stars.length)
		// 星にカーソルが乗ったときに実行する関数を定義
		story_stars[i].addEventListener("mouseover", function () {
			// story_stars.lengthの値（5）だけ繰り返し
			// つまり、星カーソルが乗った時、5回繰り返される
			for(let j=0; j<story_stars.length; j++){
				console.log(story_stars.length)
				// まず全て星をくり抜く
				story_stars[j].classList.remove("fa-star");
				story_stars[j].classList.add("fa-star-o");
			}
			// そのあと星の数だけ以下の関数が繰り返される。
			for(let j=0; j<=i; j++){
				console.log(story_stars.length)
				story_stars[j].classList.remove("fa-star-o");
				// カーソルが乗った星まで星を塗りつぶす
				story_stars[j].classList.add("fa-star");
			}
		})
		// クリックされた星の番号+1をratingValueに代入
		story_stars[i].addEventListener("click",function(){
			story_ratingValue.value = i+1;
			story_ratingValueDisplay.textContent = story_ratingValue.value;
			// story_indexにクリックされた星の番号を代入
			story_index = i;
		})
		// 星からカーソルが離れたときに実行される関数
		story_stars[i].addEventListener("mouseout",function(){
			// まず5回繰り返す
			for(let j=0; j<story_stars.length; j++){
				// まず全ての星をくり抜く
				story_stars[j].classList.remove("fa-star");
				story_stars[j].classList.add("fa-star-o");
			}
			for(let j=0; j<=story_index; j++){
				// クリックされている星まで塗りつぶす
				story_stars[j].classList.remove("fa-star-o");
				story_stars[j].classList.add("fa-star");
			}
		})
	}
	// ストーリーレビュー
	// インパクトレビュー
	const impact_stars = document.querySelector(".impact_ratings").children;
	const impact_ratingValue = document.getElementById("impact_rating-value");
	const impact_ratingValueDisplay = document.getElementById("impact_rating-value-display");
	let impact_index;

	for(let i=0; i<impact_stars.length; i++){
		console.log(impact_stars.length)
		impact_stars[i].addEventListener("mouseover", function () {
			for(let j=0; j<impact_stars.length; j++){
				console.log(impact_stars.length)
				impact_stars[j].classList.remove("fa-star");
				impact_stars[j].classList.add("fa-star-o");
			}
			for(let j=0; j<=i; j++){
				console.log(impact_stars.length)
				impact_stars[j].classList.remove("fa-star-o");
				impact_stars[j].classList.add("fa-star");
			}
		})
		impact_stars[i].addEventListener("click",function(){
			impact_ratingValue.value = i+1;
			impact_ratingValueDisplay.textContent = impact_ratingValue.value;
			impact_index = i;
		})
		impact_stars[i].addEventListener("mouseout",function(){
			for(let j=0; j<impact_stars.length; j++){
				impact_stars[j].classList.remove("fa-star");
				impact_stars[j].classList.add("fa-star-o");
			}
			for(let j=0; j<=impact_index; j++){
				impact_stars[j].classList.remove("fa-star-o");
				impact_stars[j].classList.add("fa-star");
			}
		})
	}
	// インパクトレビュー
	// 感動レビュー
	const impressed_stars = document.querySelector(".impressed_ratings").children;
	const impressed_ratingValue = document.getElementById("impressed_rating-value");
	const impressed_ratingValueDisplay = document.getElementById("impressed_rating-value-display");
	let impressed_index;

	for(let i=0; i<impressed_stars.length; i++){
		console.log(impressed_stars.length)
		impressed_stars[i].addEventListener("mouseover", function () {
			for(let j=0; j<impressed_stars.length; j++){
				console.log(impressed_stars.length)
				impressed_stars[j].classList.remove("fa-star");
				impressed_stars[j].classList.add("fa-star-o");
			}
			for(let j=0; j<=i; j++){
				console.log(impressed_stars.length)
				impressed_stars[j].classList.remove("fa-star-o");
				impressed_stars[j].classList.add("fa-star");
			}
		})
		impressed_stars[i].addEventListener("click",function(){
			impressed_ratingValue.value = i+1;
			impressed_ratingValueDisplay.textContent = impressed_ratingValue.value;
			impressed_index = i;
		})
		impressed_stars[i].addEventListener("mouseout",function(){
			for(let j=0; j<impressed_stars.length; j++){
				impressed_stars[j].classList.remove("fa-star");
				impressed_stars[j].classList.add("fa-star-o");
			}
			for(let j=0; j<=impressed_index; j++){
				impressed_stars[j].classList.remove("fa-star-o");
				impressed_stars[j].classList.add("fa-star");
			}
		})
	}
	// 感動レビュー
	// 楽しさレビュー
	const happy_stars = document.querySelector(".happy_ratings").children;
	const happy_ratingValue = document.getElementById("happy_rating-value");
	const happy_ratingValueDisplay = document.getElementById("happy_rating-value-display");
	let happy_index;

	for(let i=0; i<happy_stars.length; i++){
		console.log(happy_stars.length)
		happy_stars[i].addEventListener("mouseover", function () {
			for(let j=0; j<happy_stars.length; j++){
				console.log(happy_stars.length)
				happy_stars[j].classList.remove("fa-star");
				happy_stars[j].classList.add("fa-star-o");
			}
			for(let j=0; j<=i; j++){
				console.log(happy_stars.length)
				happy_stars[j].classList.remove("fa-star-o");
				happy_stars[j].classList.add("fa-star");
			}
		})
		happy_stars[i].addEventListener("click",function(){
			happy_ratingValue.value = i+1;
			happy_ratingValueDisplay.textContent = happy_ratingValue.value;
			happy_index = i;
		})
		happy_stars[i].addEventListener("mouseout",function(){
			for(let j=0; j<happy_stars.length; j++){
				happy_stars[j].classList.remove("fa-star");
				happy_stars[j].classList.add("fa-star-o");
			}
			for(let j=0; j<=happy_index; j++){
				happy_stars[j].classList.remove("fa-star-o");
				happy_stars[j].classList.add("fa-star");
			}
		})
	}
	// 楽しさレビュー
	// キャラクターレビュー
	const character_stars = document.querySelector(".character_ratings").children;
	const character_ratingValue = document.getElementById("character_rating-value");
	const character_ratingValueDisplay = document.getElementById("character_rating-value-display");
	let character_index;

	for(let i=0; i<character_stars.length; i++){
		console.log(character_stars.length)
		character_stars[i].addEventListener("mouseover", function () {
			for(let j=0; j<character_stars.length; j++){
				console.log(character_stars.length)
				character_stars[j].classList.remove("fa-star");
				character_stars[j].classList.add("fa-star-o");
			}
			for(let j=0; j<=i; j++){
				console.log(character_stars.length)
				character_stars[j].classList.remove("fa-star-o");
				character_stars[j].classList.add("fa-star");
			}
		})
		character_stars[i].addEventListener("click",function(){
			character_ratingValue.value = i+1;
			character_ratingValueDisplay.textContent = character_ratingValue.value;
			character_index = i;
		})
		character_stars[i].addEventListener("mouseout",function(){
			for(let j=0; j<character_stars.length; j++){
				character_stars[j].classList.remove("fa-star");
				character_stars[j].classList.add("fa-star-o");
			}
			for(let j=0; j<=character_index; j++){
				character_stars[j].classList.remove("fa-star-o");
				character_stars[j].classList.add("fa-star");
			}
		})
	}
	// キャラクターレビュー
	// 美しさレビュー
	const beautiful_stars = document.querySelector(".beautiful_ratings").children;
	const beautiful_ratingValue = document.getElementById("beautiful_rating-value");
	const beautiful_ratingValueDisplay = document.getElementById("beautiful_rating-value-display");
	let beautiful_index;

	for(let i=0; i<beautiful_stars.length; i++){
		console.log(beautiful_stars.length)
		beautiful_stars[i].addEventListener("mouseover", function () {
			for(let j=0; j<beautiful_stars.length; j++){
				console.log(beautiful_stars.length)
				beautiful_stars[j].classList.remove("fa-star");
				beautiful_stars[j].classList.add("fa-star-o");
			}
			for(let j=0; j<=i; j++){
				console.log(beautiful_stars.length)
				beautiful_stars[j].classList.remove("fa-star-o");
				beautiful_stars[j].classList.add("fa-star");
			}
		})
		beautiful_stars[i].addEventListener("click",function(){
			beautiful_ratingValue.value = i+1;
			beautiful_ratingValueDisplay.textContent = beautiful_ratingValue.value;
			beautiful_index = i;
		})
		beautiful_stars[i].addEventListener("mouseout",function(){
			for(let j=0; j<beautiful_stars.length; j++){
				beautiful_stars[j].classList.remove("fa-star");
				beautiful_stars[j].classList.add("fa-star-o");
			}
			for(let j=0; j<=beautiful_index; j++){
				beautiful_stars[j].classList.remove("fa-star-o");
				beautiful_stars[j].classList.add("fa-star");
			}
		})
	}
	// 美しさレビュー
}
window.addEventListener('load', review)