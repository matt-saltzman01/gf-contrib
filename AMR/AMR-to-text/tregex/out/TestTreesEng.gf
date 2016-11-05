--# -path=.:alltenses:../../lexicons/translator

concrete TestTreesEng of TestTrees = TestLexiconEng **
open SyntaxEng, (S = SyntaxEng), ParadigmsEng in {

	flags
		coding = utf8 ;
		language = en_US ;

	lin t01_girls_see_a_boy = (mkS (mkCl (mkNP S.a_Quant (mkCN girl_N)) (mkVP see_01_V2 (mkNP S.a_Quant (mkCN boy_N))))) ;

	lin t02_the_boy_is_seen_by_the_girls = (mkS (mkCl (mkNP S.a_Quant (mkCN girl_N)) (mkVP see_01_V2 (mkNP S.a_Quant (mkCN boy_N))))) ;

	lin t03_two_girls_see_a_boy = (mkS (mkCl (mkNP S.a_Quant (mkNum (mkDigits "2")) (mkCN girl_N)) (mkVP see_01_V2 (mkNP S.a_Quant (mkCN boy_N))))) ;

	lin t04_two_pretty_girls_see_a_boy = (mkS (mkCl (mkNP S.a_Quant (mkNum (mkDigits "2")) (mkCN pretty_A girl_N)) (mkVP see_01_V2 (mkNP S.a_Quant (mkCN boy_N))))) ;

	lin t05_the_boy_sees_the_two_pretty_girls = (mkS (mkCl (mkNP S.a_Quant (mkCN boy_N)) (mkVP see_01_V2 (mkNP S.a_Quant (mkNum (mkDigits "2")) (mkCN pretty_A girl_N))))) ;

	lin t06_girls_and_boys_play_a_game = (mkS (mkCl (mkNP S.and_Conj (mkListNP (mkNP S.a_Quant (mkCN girl_N)) (mkNP S.a_Quant (mkCN boy_N)))) (mkVP play_02_V2 (mkNP S.a_Quant (mkCN game_N))))) ;

	lin t07_boys_girls_and_a_dog_play_a_game = (mkS (mkCl (mkNP S.and_Conj (mkListNP (mkNP S.a_Quant (mkCN dog_N)) (mkListNP (mkNP S.a_Quant (mkCN boy_N)) (mkNP S.a_Quant (mkCN girl_N))))) (mkVP play_02_V2 (mkNP S.a_Quant (mkCN game_N))))) ;

	lin t08_many_persons_live = (mkS (mkCl (mkNP S.many_Det (mkCN person_N)) (mkVP live_01_V))) ;

	lin t09_some_persons_live_in_Ventspils = (mkS (mkCl (mkNP S.somePl_Det (mkCN person_N)) (mkVP (mkVP live_01_V) (S.mkAdv S.in_Prep (mkNP (mkPN "Ventspils")))))) ;

	lin t10_many_persons_live_in_Riga = (mkS (mkCl (mkNP S.many_Det (mkCN person_N)) (mkVP (mkVP live_01_V) (S.mkAdv S.in_Prep (mkNP (mkPN "Riga")))))) ;

	lin t11_more_persons_live_in_New_York = (mkS (mkCl (mkNP more_Det (mkCN person_N)) (mkVP (mkVP live_01_V) (S.mkAdv S.in_Prep (mkNP (mkPN "New York")))))) ;

	lin t13_few_persons_live_in_Riga_and_New_York = (mkS (mkCl (mkNP S.few_Det (mkCN person_N)) (mkVP (mkVP live_01_V) (S.mkAdv S.in_Prep (mkNP S.and_Conj (mkListNP (mkNP (mkPN "Riga")) (mkNP (mkPN "New York")))))))) ;

	lin t14_boys_and_girls_play_games_in_Riga = (mkS (mkCl (mkNP S.and_Conj (mkListNP (mkNP S.a_Quant (mkCN boy_N)) (mkNP S.a_Quant (mkCN girl_N)))) (mkVP (mkVP play_02_V2 (mkNP S.a_Quant (mkCN game_N))) (S.mkAdv S.in_Prep (mkNP (mkPN "Riga")))))) ;

	lin t15_boys_and_girls_play_games_in_Riga_and_New_York = (mkS (mkCl (mkNP S.and_Conj (mkListNP (mkNP S.a_Quant (mkCN boy_N)) (mkNP S.a_Quant (mkCN girl_N)))) (mkVP (mkVP play_02_V2 (mkNP S.a_Quant (mkCN game_N))) (S.mkAdv S.in_Prep (mkNP S.and_Conj (mkListNP (mkNP (mkPN "Riga")) (mkNP (mkPN "New York")))))))) ;

	lin t16_boys_see_Ann = (mkS (mkCl (mkNP S.a_Quant (mkCN boy_N)) (mkVP see_01_V2 (mkNP (mkPN "Ann"))))) ;

	lin t17_John_plays_a_game = (mkS (mkCl (mkNP (mkPN "John")) (mkVP play_02_V2 (mkNP S.a_Quant (mkCN game_N))))) ;

	lin t18_John_sees_Ann = (mkS (mkCl (mkNP (mkPN "John")) (mkVP see_01_V2 (mkNP (mkPN "Ann"))))) ;

	lin t19_girls_see_some_boys_who_play_a_game = (mkS (mkCl (mkNP S.a_Quant (mkCN girl_N)) (mkVP see_01_V2 (mkNP S.somePl_Det (mkCN (mkCN boy_N) (mkRS (mkRCl which_RP (mkVP play_02_V2 (mkNP S.a_Quant (mkCN game_N)))))))))) ;

	lin t20_girls_see_some_pretty_boys_who_play_a_ball_game = (mkS (mkCl (mkNP S.a_Quant (mkCN girl_N)) (mkVP see_01_V2 (mkNP S.somePl_Det (mkCN (mkCN pretty_A boy_N) (mkRS (mkRCl which_RP (mkVP play_02_V2 (mkNP S.a_Quant (mkCN ball_A game_N)))))))))) ;

	lin t21_girls_who_see_the_game_like_the_boys_who_play = (mkS (mkCl (mkNP S.a_Quant (mkCN (mkCN girl_N) (mkRS (mkRCl which_RP (mkVP see_01_V2 (mkNP S.a_Quant (mkCN game_N))))))) (mkVP like_01_V2 (mkNP S.a_Quant (mkCN (mkCN boy_N) (mkRS (mkRCl which_RP (mkVP play_02_V)))))))) ;

	lin t22_Assad_spoke_about_the_city = (mkS (mkCl (mkNP (mkPN "Assad")) (mkVP (mkVP speak_01_V) (S.mkAdv about_Prep (mkNP S.a_Quant (mkCN city_N)))))) ;

	lin t23_Assad_spoke_about_the_two_cities = (mkS (mkCl (mkNP (mkPN "Assad")) (mkVP (mkVP speak_01_V) (S.mkAdv about_Prep (mkNP S.a_Quant (mkNum (mkDigits "2")) (mkCN city_N)))))) ;

	lin t24_Assad_spoke_a_word_about_the_city = (mkS (mkCl (mkNP (mkPN "Assad")) (mkVP speak_01_V2 (mkNP (mkNP S.a_Quant (mkCN word_N)) (S.mkAdv about_Prep (mkNP S.a_Quant (mkCN city_N))))))) ;

	lin t25_the_boy_is_a_person = (mkS (mkCl (mkNP S.a_Quant (mkCN boy_N)) (mkNP S.a_Quant (mkCN person_N)))) ;

	lin t26_Iceland_is_a_very_interesting_example = (mkS (mkCl (mkNP (mkPN "Iceland")) (mkNP S.a_Quant (mkCN (mkCN example_N) (mkRS (mkRCl which_RP (mkAP S.very_AdA (mkAP interesting_A)))))))) ;

	lin t27_they_are_thugs_and_deserve_a_bullet = (mkS S.and_Conj (mkListS (mkS (mkCl they_NP (mkNP S.a_Quant (mkCN thug_N)))) (mkS (mkCl (mkVP deserve_01_V2 (mkNP S.a_Quant (mkCN bullet_N))))))) ;

	lin t28_China_president_urges_child_safety = (mkS (mkCl (mkNP (mkCN (mkN2 president_N of_Prep) (mkNP (mkPN "China")))) (mkVP urge_01_VV (mkVP protect_01_V2 (mkNP S.a_Quant (mkCN child_N)))))) ;

}
