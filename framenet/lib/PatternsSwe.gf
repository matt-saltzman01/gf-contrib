concrete PatternsSwe of Patterns = ElementsSwe ** open SyntaxSwe, Maybe in {

	flags coding = utf8 ;

	lin
		--
		-- Abandonment
		--

		Abandonment_V2 agent_np theme_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP theme_np)
		} ;
		-- <Agent>[Besättningen på Skandia] tvingades att [ÖVERGE] <Theme>[båten]

		Abandonment_V2_Pass theme_np v2 = lin Clause {
			np = fromMaybe NP emptyNP theme_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)
		} ;
		-- <Theme>[En sju dagar gammal pojke] [LÄMNADES KVAR]

		--
		-- Abounding_with
		--

		Abounding_with_V location_np theme_adv v = lin Clause {
			np = fromMaybe NP emptyNP location_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv theme_adv)
		} ;
		-- <Location>[Hela huset] [VIMLAR] <Theme>[av folk]

		--
		-- Absorb_heat
		--

		Absorb_heat_V entity_np heat_source_adv v = lin Clause {
			np = fromMaybe NP emptyNP entity_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv heat_source_adv)
		} ;
		-- <Entity>[Den] får [SJUDA] <Heat_source>[i ugnen]

		--
		-- Abundance
		--

		Abundance_V collection_np place_adv v = lin Clause {
			np = fromMaybe NP emptyNP collection_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv place_adv)
		} ;
		-- <Collection>[Myror och kackerlackor] [KRYLLAR] <Place>[i det gigantiska växthuset i Arizonas öken]

		--
		-- Abusing
		--

		Abusing_V2 abuser_np victim_np v2 = lin Clause {
			np = fromMaybe NP emptyNP abuser_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP victim_np)
		} ;
		-- <Abuser>[en kvinna] [MISSHANDLAR] <Victim>[en man]

		--
		-- Accomplishment
		--

		Accomplishment_V2 agent_np goal_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP goal_np)
		} ;
		-- <Agent>[ett brittiskt plan] bomber över Lund och [ÅSTADKOMMER] <Goal>[förödelse]

		Accomplishment_V2_Pass goal_np v2 = lin Clause {
			np = fromMaybe NP emptyNP goal_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)
		} ;
		-- <Goal>[Prövningen] [GENOMFÖRDES]

		--
		-- Achieving_first
		--

		Achieving_first_V2 cognizer_np new_idea_np v2 = lin Clause {
			np = fromMaybe NP emptyNP cognizer_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP new_idea_np)
		} ;
		-- <Cognizer>[Carl Bildt] [MYNTADE] <New_idea>[uttrycket ' skvalpvaluta ']

		Achieving_first_VS cognizer_np new_idea_s vs = lin Clause {
			np = fromMaybe NP emptyNP cognizer_np ;
			vp = mkVP vs (fromMaybe S emptyS new_idea_s)
		} ;
		-- <Cognizer>[Forskarna] [UPPTÄCKTE] <New_idea>[att bakterien Rickettsia finns i svenska fästingar]

		--
		-- Activity_finish
		--

		Activity_finish_V2 activity_np agent_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP activity_np)
		} ;
		-- <Agent>[Han] [FULLGJORDE] <Activity>[sin värnplikt]

		Activity_finish_V2_Pass activity_np v2 = lin Clause {
			np = fromMaybe NP emptyNP activity_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)
		} ;
		-- <Activity>[västvärldens kärnkraft] ska [FASAS UT]

		--
		-- Activity_ongoing
		--

		Activity_ongoing_VV activity_vp agent_np vv = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP vv (fromMaybe VP emptyVP activity_vp)
		} ;
		-- <Agent>[Hon] [FORTSATTE] <Activity>[att plocka de glänsande sillarna ur näten]

		--
		-- Activity_pause
		--

		Activity_pause_V2 activity_np agent_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP activity_np)
		} ;
		-- <Agent>[Iran] åtog sig då att [FRYSA] <Activity>[all verksamhet som relaterar till anrikning av uran , däribland framställning av urangas och tillverkning av gascentrifuger]

		--
		-- Activity_prepare
		--

		Activity_prepare_V activity_adv agent_np v = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv activity_adv)
		} ;
		-- <Agent>[laget] hade börjat [FÖRBEREDA SIG] <Activity>[för kval]

		--
		-- Activity_resume
		--

		Activity_resume_V2 activity_np agent_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP activity_np)
		} ;
		-- <Agent>[Hon] ville [ÅTERUPPTA] <Activity>[sin ridning]

		Activity_resume_V2_Pass activity_np v2 = lin Clause {
			np = fromMaybe NP emptyNP activity_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)
		} ;
		-- <Activity>[Behandlingen med östrogenhämmande läkemedel] [ÅTERUPPTOGS]

		--
		-- Activity_start
		--

		Activity_start_V activity_adv v = lin Clause {
			np = emptyNP ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv activity_adv)
		} ;
		-- [BÖRJADE] <Activity>[med tv- reklam och animation]

		Activity_start_V2 activity_np agent_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP activity_np)
		} ;
		-- <Agent>[Han och hans bröder] flyttade till El Salvador 1896 för att [SLÅ SIG PÅ] <Activity>[sockerodling]

		Activity_start_VV activity_vp agent_np vv = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP vv (fromMaybe VP emptyVP activity_vp)
		} ;
		-- <Agent>[hon] [KOM] <Activity>[att tänka på det uttalandet]

		Activity_start_V2_Pass activity_np v2 = lin Clause {
			np = fromMaybe NP emptyNP activity_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)
		} ;
		-- [UPPTOGS] <Activity>[vägarbetena]

		--
		-- Activity_stop
		--

		Activity_stop_V2 activity_np agent_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP activity_np)
		} ;
		-- <Agent>[GM] börjar [STÄLLA IN] <Activity>[betalningar till återförsäljare i USA]

		Activity_stop_VV activity_vp agent_np vv = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP vv (fromMaybe VP emptyVP activity_vp)
		} ;
		-- <Agent>[många av dem] att [SLUTA] <Activity>[arbeta]

		Activity_stop_V2_Pass activity_np v2 = lin Clause {
			np = fromMaybe NP emptyNP activity_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)
		} ;
		-- <Activity>[Patientens diuretikaterapi] [SEPONERAS]

		--
		-- Adding_up
		--

		Adding_up_V2_1 numbers_np v2 = lin Clause {
			np = emptyNP ;
			vp = mkVP v2 (fromMaybe NP emptyNP numbers_np)
		} ;
		-- [RÄKNA IHOP] <Numbers>[5438799+]

		Adding_up_V2_2 result_np v2 = lin Clause {
			np = emptyNP ;
			vp = mkVP v2 (fromMaybe NP emptyNP result_np)
		} ;
		-- [RÄKNA SAMMAN] <Result>[publikens poäng]

		--
		-- Adducing
		--

		Adducing_V2 speaker_np specified_entity_np v2 = lin Clause {
			np = fromMaybe NP emptyNP speaker_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP specified_entity_np)
		} ;
		-- <Speaker>[åklagarna] kommer att [ÅBEROPA] <Specified_entity>[taxichaufförens uppgifter]

		Adducing_V2_Pass specified_entity_np v2 = lin Clause {
			np = fromMaybe NP emptyNP specified_entity_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)
		} ;
		-- <Specified_entity>[Några omständigheter] brukar dock [ANDRAGAS]

		--
		-- Adjusting
		--

		Adjusting_V part_np v = lin Clause {
			np = fromMaybe NP emptyNP part_np ;
			vp = mkVP v
		} ;
		-- [STÄLLA OM] <Part>[telefonen]

		Adjusting_V2_1 agent_np feature_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP feature_np)
		} ;
		-- <Agent>[vi] kan [STÄLLA IN] <Feature>[temperatur]

		Adjusting_V2_2 agent_np part_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP part_np)
		} ;
		-- <Agent>[Nasa] ska nu använda bilderna för att [KALIBRERA] <Part>[kamerorna]

		Adjusting_V2_Pass part_np v2 = lin Clause {
			np = fromMaybe NP emptyNP part_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)
		} ;
		-- <Part>[Varje gasmätare] [KALIBRERADES]

		--
		-- Adopt_selection
		--

		Adopt_selection_V2 agent_np value_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP value_np)
		} ;
		-- <Agent>[göteborgarna] kommer att [OMFAMNA] <Value>[de nya stadsdelsnamnen]

		Adopt_selection_V2_Pass value_np v2 = lin Clause {
			np = fromMaybe NP emptyNP value_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)
		} ;
		-- <Value>[Näringslivets processer] [ADOPTERAS]

		--
		-- Adorning
		--

		Adorning_V2 location_np theme_np v2 = lin Clause {
			np = fromMaybe NP emptyNP theme_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP location_np)
		} ;
		-- <Theme>[Motorbåtar från USA , snabba , fräcka , lyxiga] , väntas [ÖVERSVÄMMA] <Location>[marknaden]

		Adorning_V2_Pass location_np theme_np v2 = lin Clause {
			np = fromMaybe NP emptyNP location_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep (fromMaybe NP emptyNP theme_np))
		} ;
		-- <Location>[väggar , golv och möbler] [TÄCKS] <Theme>[av det ätbara och knastriga materialet]

		--
		-- Aging
		--

		Aging_V entity_np v = lin Clause {
			np = fromMaybe NP emptyNP entity_np ;
			vp = mkVP v
		} ;
		-- <Entity>[de] inte [EFTERMOGNAR]

		Aging_V2_Pass entity_np v2 = lin Clause {
			np = fromMaybe NP emptyNP entity_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)
		} ;
		-- <Entity>[kroppen] [ÅLDRAS]

		--
		-- Agree_or_refuse_to_act
		--

		Agree_or_refuse_to_act_VV proposed_action_vp speaker_np vv = lin Clause {
			np = fromMaybe NP emptyNP speaker_np ;
			vp = mkVP vv (fromMaybe VP emptyVP proposed_action_vp)
		} ;
		-- <Speaker>[Mannen] [VÄGRADE] <Proposed_action>[släppa kniven]

		--
		-- Agriculture
		--

		Agriculture_V2 agriculturist_np ground_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agriculturist_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP ground_np)
		} ;
		-- <Agriculturist>[Vi] [BRUKAR] <Ground>[jorden]

		--
		-- Aiming
		--

		Aiming_V2 agent_np instrument_np targeted_adv v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP instrument_np)) (fromMaybe Adv emptyAdv targeted_adv)
		} ;
		-- <Agent>[Utredningen] [RIKTAR IN] <Instrument>[utvecklingen] <Targeted>[mot tydliga regionala parlament och regeringar]

		--
		-- Amassing
		--

		Amassing_V2 mass_theme_np recipient_np v2 = lin Clause {
			np = fromMaybe NP emptyNP recipient_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP mass_theme_np)
		} ;
		-- <Recipient>[Honan] kan nämligen [LAGRA] <Mass_theme>[hannens spermier]

		Amassing_V2_Pass mass_theme_np v2 = lin Clause {
			np = fromMaybe NP emptyNP mass_theme_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)
		} ;
		-- <Mass_theme>[kvicksilver] [ANSAMLAS]

		--
		-- Amounting_to
		--

		Amounting_to_V attribute_np value_adv v = lin Clause {
			np = fromMaybe NP emptyNP attribute_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv value_adv)
		} ;
		-- <Attribute>[De samlade resurser som vi ger i detta sammanhang] [BELÖPER SIG] i det närmaste <Value>[till 300 milj]

		--
		-- Appeal
		--

		Appeal_V convict_np decision_adv v = lin Clause {
			np = fromMaybe NP emptyNP convict_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv decision_adv)
		} ;
		-- <Convict>[FPA] kan [BESVÄRA SIG] <Decision>[över beslutet]

		--
		-- Apply_heat
		--

		Apply_heat_V2_1 container_adv food_np v2 = lin Clause {
			np = emptyNP ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP food_np)) (fromMaybe Adv emptyAdv container_adv)
		} ;
		-- [STEKA] <Food>[kött] <Container>[i en värmetålig stekpåse]

		Apply_heat_V2_2 cook_np food_np heating_instrument_adv v2 = lin Clause {
			np = fromMaybe NP emptyNP cook_np ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP food_np)) (fromMaybe Adv emptyAdv heating_instrument_adv)
		} ;
		-- <Cook>[Du] kan även [STEKA] <Food>[kött] <Heating_instrument>[i ugn]

		Apply_heat_V2_3 food_np temperature_setting_adv v2 = lin Clause {
			np = emptyNP ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP food_np)) (fromMaybe Adv emptyAdv temperature_setting_adv)
		} ;
		-- <Temperature_setting>[varm] [RÖKA] <Food>[min hemgjorda ost]

		Apply_heat_V2_Pass food_np v2 = lin Clause {
			np = fromMaybe NP emptyNP food_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)
		} ;
		-- <Food>[frukt] [KOKAS]

		--
		-- Appointing
		--

		Appointing_V2_Pass official_np role_adv v2 = lin Clause {
			np = fromMaybe NP emptyNP official_np ;
			vp = mkVP (mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)) (fromMaybe Adv emptyAdv role_adv)
		} ;
		-- <Official>[Ambassadörer] [ACKREDITERAS] <Role>[till statschefer]

		--
		-- Arranging
		--

		Arranging_V2 agent_np configuration_adv theme_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP theme_np)) (fromMaybe Adv emptyAdv configuration_adv)
		} ;
		-- <Agent>[Man] kan även [LÄGGA UPP] <Theme>[ett tak] <Configuration>[i form av en segelduk eller ett vackert parasoll]

		--
		-- Arrest
		--

		Arrest_V2 authorities_np suspect_np v2 = lin Clause {
			np = fromMaybe NP emptyNP authorities_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP suspect_np)
		} ;
		-- <Authorities>[polisen , som] lyckas komma tillräckligt snabbt för att [GRIPA] <Suspect>[tjuven]

		--
		-- Arriving
		--

		Arriving_V goal_adv theme_np v = lin Clause {
			np = fromMaybe NP emptyNP theme_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv goal_adv)
		} ;
		-- <Theme>[vi] [SMITER IN] <Goal>[på en krog där vi blir ensamma]

		--
		-- Assemble
		--

		Assemble_V group_np v = lin Clause {
			np = fromMaybe NP emptyNP group_np ;
			vp = mkVP v
		} ;
		-- <Group>[Forskningsrådet] kommer att [SAMMANTRÄDA]

		--
		-- Assessing
		--

		Assessing_V2 assessor_np phenomenon_np v2 = lin Clause {
			np = fromMaybe NP emptyNP assessor_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP phenomenon_np)
		} ;
		-- <Assessor>[Han] [ESTIMERADE] <Phenomenon>[vikten]

		Assessing_V2_Pass assessor_np phenomenon_np v2 = lin Clause {
			np = fromMaybe NP emptyNP phenomenon_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep (fromMaybe NP emptyNP assessor_np))
		} ;
		-- <Phenomenon>[Ansökningarna] [EVALUERADES] <Assessor>[av program kommittén för delprogrammet]

		--
		-- Assistance
		--

		Assistance_V2 benefited_party_np focal_entity_adv helper_np v2 = lin Clause {
			np = fromMaybe NP emptyNP helper_np ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP benefited_party_np)) (fromMaybe Adv emptyAdv focal_entity_adv)
		} ;
		-- <Helper>[Du] ska [STÖDJA] <Benefited_party>[mig] <Focal_entity>[i allt jag gör]

		Assistance_V2V benefited_party_np goal_vp helper_np v2v = lin Clause {
			np = fromMaybe NP emptyNP helper_np ;
			vp = mkVP v2v (fromMaybe NP emptyNP benefited_party_np) (fromMaybe VP emptyVP goal_vp)
		} ;
		-- <Helper>[sanden] [HJÄLPER] <Benefited_party>[dig] <Goal>[att flyta]

		--
		-- Atonement
		--

		Atonement_V2 agent_np wrong_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP wrong_np)
		} ;
		-- <Agent>[Jag] vill härmed [GOTTGÖRA] <Wrong>[denna försummelse]

		Atonement_V2_Pass amends_adv wrong_np v2 = lin Clause {
			np = fromMaybe NP emptyNP wrong_np ;
			vp = mkVP (mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)) (fromMaybe Adv emptyAdv amends_adv)
		} ;
		-- <Wrong>[brottet] [SONAS] först <Amends>[genom att synas]

		--
		-- Attaching
		--

		Attaching_V2_1 agent_np goal_adv item_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP item_np)) (fromMaybe Adv emptyAdv goal_adv)
		} ;
		-- <Agent>[Vi] flyttade bort boden , rev bort masoniten och [SPIKADE FAST] <Item>[hattlist] <Goal>[på ytterväggarna]

		Attaching_V2_2 agent_np items_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP items_np)
		} ;
		-- <Agent>[entreprenörerna Staffan Jonasson och Magnus Westin] på att [KOPPLA IHOP] <Items>[kablar]

		Attaching_V2_3 connector_adv goal_adv item_np v2 = lin Clause {
			np = emptyNP ;
			vp = mkVP (mkVP (mkVP v2 (fromMaybe NP emptyNP item_np)) (fromMaybe Adv emptyAdv goal_adv)) (fromMaybe Adv emptyAdv connector_adv)
		} ;
		-- [SLÅ FAST] <Item>[ramarna] <Goal>[i den] <Connector>[med spik]

		Attaching_V2_Pass connector_adv goal_adv item_np v2 = lin Clause {
			np = fromMaybe NP emptyNP item_np ;
			vp = mkVP (mkVP (mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)) (fromMaybe Adv emptyAdv connector_adv)) (fromMaybe Adv emptyAdv goal_adv)
		} ;
		-- <Item>[bogvisiret] [DRAS FAST] <Connector>[med vantskruvar] <Goal>[i durken]

		--
		-- Attack
		--

		Attack_V2 assailant_np victim_np v2 = lin Clause {
			np = fromMaybe NP emptyNP assailant_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP victim_np)
		} ;
		-- <Assailant>[Mannen] [GAV SIG PÅ] <Victim>[60-åringen]

		--
		-- Attempt
		--

		Attempt_V agent_np goal_adv v = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv goal_adv)
		} ;
		-- <Agent>[Hon] [ANSTRÄNGER SIG] <Goal>[för att ta seden dit hon kommer]

		Attempt_VV agent_np goal_vp vv = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP vv (fromMaybe VP emptyVP goal_vp)
		} ;
		-- <Agent>[dem , som med den bästa ambition och redlighet] vilja [SÖKA] <Goal>[göra sitt bästa]

		--
		-- Attempt_means
		--

		Attempt_means_V2 agent_np means_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP means_np)
		} ;
		-- <Agent>[Naturvårdsverket] [PRÖVAR] <Means>[dumpning i havet]

		Attempt_means_VV means_vp vv = lin Clause {
			np = emptyNP ;
			vp = mkVP vv (fromMaybe VP emptyVP means_vp)
		} ;
		-- [FÖRSÖKT] med att <Means>[gå ut med rabatterade biljetter]

		--
		-- Attempt_suasion
		--

		Attempt_suasion_V content_adv speaker_np v = lin Clause {
			np = fromMaybe NP emptyNP speaker_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv content_adv)
		} ;
		-- <Speaker>[Bilindustrin] började [LOBBA] <Content>[för statliga hjälpinsatser]

		Attempt_suasion_V2_1 addressee_np speaker_np v2 = lin Clause {
			np = fromMaybe NP emptyNP speaker_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP addressee_np)
		} ;
		-- <Speaker>[Anders] [PRESSAR] <Addressee>[Annika]

		Attempt_suasion_V2_2 content_np speaker_np v2 = lin Clause {
			np = fromMaybe NP emptyNP speaker_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP content_np)
		} ;
		-- [FÖRESLÅR] <Speaker>[regeringen] <Content>[införande av en 18-årsgräns för köp av receptfria läkemedel utanför apotek]

		--
		-- Attending
		--

		Attending_V2 agent_np event_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP event_np)
		} ;
		-- <Agent>[Disponenten] var på väg till skolhuset för att [ÖVERVARA] och leda <Event>[Norra Sandsjö skyttegilles årsmöte]

		--
		-- Avoiding
		--

		Avoiding_V2 agent_np undesirable_situation_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP undesirable_situation_np)
		} ;
		-- <Agent>[jag] [UNDVIKA] <Undesirable_situation>[dessa smärtor]

		Avoiding_VV agent_np undesirable_situation_vp vv = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP vv (fromMaybe VP emptyVP undesirable_situation_vp)
		} ;
		-- <Agent>[vi] kunnat [UNDGÅ] <Undesirable_situation>[att bli indragna i 1900-talets båda världskrig]

		--
		-- Awareness
		--

		Awareness_V cognizer_np content_adv v = lin Clause {
			np = fromMaybe NP emptyNP cognizer_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv content_adv)
		} ;
		-- <Cognizer>[vi] [VET] inte <Content>[om framtidens apparater kan avläsa det vi arkiverar i dag]

		Awareness_V2 cognizer_np content_np v2 = lin Clause {
			np = fromMaybe NP emptyNP cognizer_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP content_np)
		} ;
		-- [TRODDE] <Cognizer>[jag] <Content>[hon var kär i mig]

		Awareness_VS cognizer_np content_s vs = lin Clause {
			np = fromMaybe NP emptyNP cognizer_np ;
			vp = mkVP vs (fromMaybe S emptyS content_s)
		} ;
		-- <Cognizer>[Jag] [VET] inte <Content>[om det finns någon röd tråd]

		Awareness_VV cognizer_np content_vp vv = lin Clause {
			np = fromMaybe NP emptyNP cognizer_np ;
			vp = mkVP vv (fromMaybe VP emptyVP content_vp)
		} ;
		-- <Content>[Att beta cellernas funktion haltar när genen för glukokinas muteras] kunde <Cognizer>[man] väl [FÖRESTÄLLA SIG]

		--
		-- Be_in_agreement_on_assessment
		--

		Be_in_agreement_on_assessment_V cognizer_1_np cognizer_2_adv v = lin Clause {
			np = fromMaybe NP emptyNP cognizer_1_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv cognizer_2_adv)
		} ;
		-- <Cognizer_1>[vi] [FICK MEDHÅLL] <Cognizer_2>[från några trevliga holländare som satt vid bordet intill vårt]

		--
		-- Beat_opponent
		--

		Beat_opponent_V2 loser_np winner_np v2 = lin Clause {
			np = fromMaybe NP emptyNP winner_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP loser_np)
		} ;
		-- <Winner>[Italien] igen och [UTKLASSADE] <Loser>[Egypten]

		--
		-- Become_silent
		--

		Become_silent_V speaker_np v = lin Clause {
			np = fromMaybe NP emptyNP speaker_np ;
			vp = mkVP v
		} ;
		-- [TEG] <Speaker>[Johansson]

		--
		-- Becoming
		--

		Becoming_V entity_np final_state_adv v = lin Clause {
			np = fromMaybe NP emptyNP entity_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv final_state_adv)
		} ;
		-- <Entity>[allt] har [UTFALLIT] <Final_state>[väl]

		Becoming_V2 entity_np final_category_np v2 = lin Clause {
			np = fromMaybe NP emptyNP entity_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP final_category_np)
		} ;
		-- <Entity>[jag] [BLEV] <Final_category>[artist]

		--
		-- Becoming_a_member
		--

		Becoming_a_member_V group_adv new_member_np v = lin Clause {
			np = fromMaybe NP emptyNP new_member_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv group_adv)
		} ;
		-- <Group>[Till deras lilla trupp] [ANSLUTER SIG] <New_member>[fler personer]

		Becoming_a_member_V2 group_np new_member_np v2 = lin Clause {
			np = fromMaybe NP emptyNP new_member_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP group_np)
		} ;
		-- <New_member>[Maria] hade varit <New_member>[hon] [GICK MED I] <Group>[kristdemokraterna]

		--
		-- Becoming_aware
		--

		Becoming_aware_V cognizer_np phenomenon_adv v = lin Clause {
			np = fromMaybe NP emptyNP cognizer_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv phenomenon_adv)
		} ;
		-- <Cognizer>[Jag] har [BLIVIT VARSE] <Phenomenon>[om att tid verkligen kan vara en bristvara]

		Becoming_aware_V2 cognizer_np phenomenon_np v2 = lin Clause {
			np = fromMaybe NP emptyNP cognizer_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP phenomenon_np)
		} ;
		-- <Cognizer>[man] ska [VARSNA] <Phenomenon>[faran]

		Becoming_aware_VQ cognizer_np phenomenon_qs vq = lin Clause {
			np = fromMaybe NP emptyNP cognizer_np ;
			vp = mkVP vq (fromMaybe QS emptyQS phenomenon_qs)
		} ;
		-- <Cognizer>[du] att [LÄGGA MÄRKE TILL] <Phenomenon>[hur all ansträngning och anspänning försvinner]

		Becoming_aware_VS phenomenon_s vs = lin Clause {
			np = emptyNP ;
			vp = mkVP vs (fromMaybe S emptyS phenomenon_s)
		} ;
		-- [UPPTÄCKA] , <Phenomenon>[att den man trott på inte håller måttet]

		--
		-- Becoming_detached
		--

		Becoming_detached_V item_np source_adv v = lin Clause {
			np = fromMaybe NP emptyNP item_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv source_adv)
		} ;
		-- <Item>[Linan] skar in i halsen men [SLÄPPTE] <Source>[från staketet]

		--
		-- Becoming_dry
		--

		Becoming_dry_V entity_np v = lin Clause {
			np = fromMaybe NP emptyNP entity_np ;
			vp = mkVP v
		} ;
		-- <Entity>[Floderna vi passerar] har [TORKAT UT]

		--
		-- Becoming_separated
		--

		Becoming_separated_V parts_adv whole_np v = lin Clause {
			np = fromMaybe NP emptyNP whole_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv parts_adv)
		} ;
		-- <Whole>[kräftan] [DELAR SIG] <Parts>[i två halvor]

		--
		-- Behind_the_scenes
		--

		Behind_the_scenes_V2_1 artist_np production_np v2 = lin Clause {
			np = fromMaybe NP emptyNP artist_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP production_np)
		} ;
		-- <Artist>[Anna] [ROLLBESATTE] <Production>[Vita lögner]

		Behind_the_scenes_V2_2 artist_np scene_np v2 = lin Clause {
			np = fromMaybe NP emptyNP artist_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP scene_np)
		} ;
		-- <Artist>[Konstgrafikern Tuulikki Pietilä] [SMALFILMADE] <Scene>[parets vistelse och hur de bar sig åt på ön]

		--
		-- Being_attached
		--

		Being_attached_V goal_adv item_np v = lin Clause {
			np = fromMaybe NP emptyNP item_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv goal_adv)
		} ;
		-- <Item>[dykparen] hela tiden [HÅLLER IHOP] <Goal>[med linan]

		--
		-- Being_born
		--

		Being_born_V2_Pass child_np v2 = lin Clause {
			np = fromMaybe NP emptyNP child_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)
		} ;
		-- <Child>[Jag] [FÖDDES]

		--
		-- Being_employed
		--

		Being_employed_V employee_np place_of_employment_adv v = lin Clause {
			np = fromMaybe NP emptyNP employee_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv place_of_employment_adv)
		} ;
		-- <Employee>[Hon] har [JOBBAT] <Place_of_employment>[på arkivet]

		--
		-- Being_located
		--

		Being_located_V location_adv theme_np v = lin Clause {
			np = fromMaybe NP emptyNP theme_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv location_adv)
		} ;
		-- <Location>[På bordet] [STÅR] <Theme>[en tidstypisk bag]

		--
		-- Besieging
		--

		Besieging_V2 assailant_np victim_np v2 = lin Clause {
			np = fromMaybe NP emptyNP assailant_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP victim_np)
		} ;
		-- [INRINGAR] <Assailant>[den kommunistiska gerillarörelsen Vietminh] <Victim>[den franska fästningen Dien Bien Phu]

		--
		-- Board_vehicle
		--

		Board_vehicle_V2 traveller_np vehicle_np v2 = lin Clause {
			np = fromMaybe NP emptyNP traveller_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP vehicle_np)
		} ;
		-- <Traveller>[alla] att [STIGA PÅ] <Vehicle>[bussen]

		--
		-- Body_movement
		--

		Body_movement_V agent_np body_part_adv v = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv body_part_adv)
		} ;
		-- <Agent>[Jag] tror att jag hjälpte genom att sitta och [JUCKA] <Body_part>[med rumpan]

		Body_movement_V2 agent_np body_part_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP body_part_np)
		} ;
		-- <Agent>[Hon] [KORSAR] <Body_part>[armarna]

		--
		-- Bond_maturation
		--

		Bond_maturation_V financial_instrument_np v = lin Clause {
			np = fromMaybe NP emptyNP financial_instrument_np ;
			vp = mkVP v
		} ;
		-- <Financial_instrument>[obligationen] [LÖPER UT]

		--
		-- Bragging
		--

		Bragging_V speaker_np topic_adv v = lin Clause {
			np = fromMaybe NP emptyNP speaker_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv topic_adv)
		} ;
		-- <Speaker>[Jag] vill inte [SKRYTA] <Topic>[om nånting]

		--
		-- Breathing
		--

		Breathing_V2 agent_np air_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP air_np)
		} ;
		-- <Agent>[hon] ertappats med att [INHALERA] <Air>[lustgas]

		Breathing_V2_Pass air_np v2 = lin Clause {
			np = fromMaybe NP emptyNP air_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)
		} ;
		-- <Air>[Vissa mediciner] [INHALERAS] , d.v.s [ANDAS IN]

		--
		-- Bringing
		--

		Bringing_V2_1 agent_np goal_adv theme_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP theme_np)) (fromMaybe Adv emptyAdv goal_adv)
		} ;
		-- [FORSLAR] <Agent>[de] <Goal>[dit] <Theme>[flera kubik med sand]

		Bringing_V2_2 carrier_np goal_adv theme_np v2 = lin Clause {
			np = fromMaybe NP emptyNP carrier_np ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP theme_np)) (fromMaybe Adv emptyAdv goal_adv)
		} ;
		-- <Carrier>[Bussen] [KÖR] <Theme>[oss] <Goal>[till Katrineholm där ett nytt tåg står och väntar]

		Bringing_V2_Pass path_adv theme_np v2 = lin Clause {
			np = fromMaybe NP emptyNP theme_np ;
			vp = mkVP (mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)) (fromMaybe Adv emptyAdv path_adv)
		} ;
		-- <Theme>[de 23 från 89:e våningen] [FORSLADES NED] <Path>[genom trapporna och ut ur den brinnande byggnaden]

		--
		-- Building
		--

		Building_V2_1 agent_np components_adv created_entity_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP created_entity_np)) (fromMaybe Adv emptyAdv components_adv)
		} ;
		-- <Agent>[Möbelakrobaterna] [GÖR] <Created_entity>[möbler] <Components>[av slitna skor och gamla badkar]

		Building_V2_2 agent_np components_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP components_np)
		} ;
		-- <Agent>[vi] däremot [SÄTTER SAMMAN] <Components>[delarna till ett hus eller en motor]

		--
		-- Bungling
		--

		Bungling_V2 agent_np patient_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP patient_np)
		} ;
		-- <Agent>[ni] [BLANDAR IHOP] <Patient>[kommunikation och dialog]

		Bungling_V2_Pass patient_np v2 = lin Clause {
			np = fromMaybe NP emptyNP patient_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)
		} ;
		-- <Patient>[Hallströms samer] [SJABBLAS BORT]

		--
		-- Carry_goods
		--

		Carry_goods_V2 distributor_np goods_np v2 = lin Clause {
			np = fromMaybe NP emptyNP distributor_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP goods_np)
		} ;
		-- <Distributor>[de] [FÖR] inte <Goods>[försvarets hudsalva]

		Carry_goods_V2_Pass goods_np v2 = lin Clause {
			np = fromMaybe NP emptyNP goods_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)
		} ;
		-- <Goods>[dagens alla kramgoa nallebjörnar som] [SALUFÖRS]

		--
		-- Catastrophe
		--

		Catastrophe_V undergoer_np undesirable_event_adv v = lin Clause {
			np = fromMaybe NP emptyNP undergoer_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv undesirable_event_adv)
		} ;
		-- <Undergoer>[hundarna] [RÅKA UT] <Undesirable_Event>[för en massa svansolyckor]

		Catastrophe_V2 undergoer_np undesirable_event_np v2 = lin Clause {
			np = fromMaybe NP emptyNP undesirable_event_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP undergoer_np)
		} ;
		-- <Undesirable_Event>[Fusionen] kommer att [DRABBA] <Undergoer>[en tredjedel av de sammanlagt 18500 anställda i bankerna]

		--
		-- Categorization
		--

		Categorization_V2 cognizer_np item_np v2 = lin Clause {
			np = fromMaybe NP emptyNP cognizer_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP item_np)
		} ;
		-- <Cognizer>[Experten Mikael Krikorev] berättar och [ARTBESTÄMMER] <Item>[besökarnas egna svampar]

		Categorization_V2_Pass criteria_adv item_np v2 = lin Clause {
			np = fromMaybe NP emptyNP item_np ;
			vp = mkVP (mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)) (fromMaybe Adv emptyAdv criteria_adv)
		} ;
		-- <Item>[Orkaners styrka] [KATEGORISERAS] <Criteria>[enligt ett system som kallas Saffir-Simpsonskalan]

		--
		-- Causation
		--

		Causation_V cause_np effect_adv v = lin Clause {
			np = fromMaybe NP emptyNP cause_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv effect_adv)
		} ;
		-- <Cause>[Bedrägerier] [LEDDE] <Effect>[till fängelse]

		Causation_V2_1 actor_np affected_adv effect_np v2 = lin Clause {
			np = fromMaybe NP emptyNP actor_np ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP effect_np)) (fromMaybe Adv emptyAdv affected_adv)
		} ;
		-- <Actor>[Hajar] har setts använda för att [ÅSAMKA] <Effect>[skada] <Affected>[på sina bytesdjur]

		Causation_V2_2 actor_np affected_np effect_adv v2 = lin Clause {
			np = fromMaybe NP emptyNP actor_np ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP affected_np)) (fromMaybe Adv emptyAdv effect_adv)
		} ;
		-- <Actor>[Du] [GJORDE] <Affected>[mig] <Effect>[jätteglad]

		Causation_V2_3 cause_np effect_np v2 = lin Clause {
			np = fromMaybe NP emptyNP cause_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP effect_np)
		} ;
		-- <Cause>[Hängdrivor] kan också [UTLÖSA] <Effect>[laviner]

		Causation_V2V affected_np cause_np effect_vp v2v = lin Clause {
			np = fromMaybe NP emptyNP cause_np ;
			vp = mkVP v2v (fromMaybe NP emptyNP affected_np) (fromMaybe VP emptyVP effect_vp)
		} ;
		-- <Cause>[Bostadsbristen] [TVINGADE] <Affected>[henne] <Effect>[flytta]

		--
		-- Cause_change
		--

		Cause_change_V2_1 agent_np attribute_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP attribute_np)
		} ;
		-- <Agent>[Han] skrev musiken till kända filmer som Mannen på taket ( 1976 ) och Jägarna ( 1996 ) samt komponerade och [ARRANGERADE] <Attribute>[musik för radio , tv och teater]

		Cause_change_V2_2 agent_np entity_np final_category_adv v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP entity_np)) (fromMaybe Adv emptyAdv final_category_adv)
		} ;
		-- <Agent>[Jag] vill också [GÖRA] <Entity>[världen] <Final_category>[till en lite bättre plats]

		Cause_change_V2_3 cause_np entity_np v2 = lin Clause {
			np = fromMaybe NP emptyNP cause_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP entity_np)
		} ;
		-- <Cause>[Denna teknik] [FÖRÄNDRAR] <Entity>[vårt emotionella tillstånd]

		Cause_change_V2_Pass entity_np final_category_adv v2 = lin Clause {
			np = fromMaybe NP emptyNP entity_np ;
			vp = mkVP (mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)) (fromMaybe Adv emptyAdv final_category_adv)
		} ;
		-- <Entity>[de] [OMVANDLAS] <Final_category>[till ännu finare smycken]

		--
		-- Cause_change_of_consistency
		--

		Cause_change_of_consistency_V2 agent_np undergoer_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP undergoer_np)
		} ;
		-- <Agent>[man] behöver göra är att [LÖSA] <Undergoer>[pigmentet]

		Cause_change_of_consistency_V2_Pass undergoer_np v2 = lin Clause {
			np = fromMaybe NP emptyNP undergoer_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)
		} ;
		-- <Undergoer>[Tabletten är en brustablett som] ska [LÖSAS UPP]

		--
		-- Cause_change_of_phase
		--

		Cause_change_of_phase_V2 agent_np undergoer_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP undergoer_np)
		} ;
		-- <Agent>[Arkeologerna] för att [TINA UPP] <Undergoer>[tjälen]

		Cause_change_of_phase_V2_Pass undergoer_np v2 = lin Clause {
			np = fromMaybe NP emptyNP undergoer_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)
		} ;
		-- <Undergoer>[Metalliskt bly] [FÖRÅNGAS]

		--
		-- Cause_change_of_strength
		--

		Cause_change_of_strength_V2_1 agent_np patient_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP patient_np)
		} ;
		-- <Agent>[politikerna och tjänstemännen] [FÖRSTÄRKER] <Patient>[vårdkedjan]

		Cause_change_of_strength_V2_2 cause_np patient_np v2 = lin Clause {
			np = fromMaybe NP emptyNP cause_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP patient_np)
		} ;
		-- <Cause>[Vi har en cancerkris orsakad av hiv , som] [FÖRSVAGAR] <Patient>[kroppens immunförsvar]

		Cause_change_of_strength_V2_Pass patient_np v2 = lin Clause {
			np = fromMaybe NP emptyNP patient_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)
		} ;
		-- <Patient>[symtomen] kan stå oförändrade eller till och med [AGGRAVERAS]

		--
		-- Cause_emotion
		--

		Cause_emotion_V2 agent_np experiencer_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP experiencer_np)
		} ;
		-- <Agent>[Man] ska lyfta fram sitt lag och [SMÄDA] <Experiencer>[motståndarna]

		Cause_emotion_V2_Pass experiencer_np v2 = lin Clause {
			np = fromMaybe NP emptyNP experiencer_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)
		} ;
		-- <Experiencer>[engelsmannen Steve Galloway i Djurgården som] [SMÄDADES]

		--
		-- Cause_fluidic_motion
		--

		Cause_fluidic_motion_V2 agent_np fluid_np goal_adv v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP fluid_np)) (fromMaybe Adv emptyAdv goal_adv)
		} ;
		-- <Agent>[den förste libanesiske vintillverkare som] [TAPPADE] <Fluid>[vin] <Goal>[på flaska]

		--
		-- Cause_harm
		--

		Cause_harm_V agent_np victim_adv v = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv victim_adv)
		} ;
		-- [HUGGER] <Agent>[hon] <Victim>[på honom]

		Cause_harm_V2 agent_np body_part_adv victim_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP victim_np)) (fromMaybe Adv emptyAdv body_part_adv)
		} ;
		-- <Agent>[en av dem] hann [SLÅ] <Victim>[festdeltagaren] <Body_part>[i huvudet]

		Cause_harm_V2_Pass agent_np victim_np v2 = lin Clause {
			np = fromMaybe NP emptyNP victim_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep (fromMaybe NP emptyNP agent_np))
		} ;
		-- <Victim>[En man] har [SLAGITS] <Agent>[av ett par andra män]

		--
		-- Cause_impact
		--

		Cause_impact_V agent_np impactee_adv impactor_adv v = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP (mkVP (mkVP v) (fromMaybe Adv emptyAdv impactor_adv)) (fromMaybe Adv emptyAdv impactee_adv)
		} ;
		-- [BANKAR] <Agent>[man] <Impactor>[med lämplig tillhygge] <Impactee>[på den tjocka nedre delen]

		Cause_impact_V2_1 agent_np impactee_adv impactor_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP impactor_np)) (fromMaybe Adv emptyAdv impactee_adv)
		} ;
		-- <Agent>[Soldat] [DRÄMDE] <Impactor>[dörr] <Impactee>[på sin fru]

		Cause_impact_V2_2 agent_np impactee_np impactor_adv v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP impactee_np)) (fromMaybe Adv emptyAdv impactor_adv)
		} ;
		-- <Agent>[Jag] ropade på hjälp och [DRÄMDE TILL] <Impactee>[honom] <Impactor>[med armbågen]

		Cause_impact_V2_3 agent_np impactors_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP impactors_np)
		} ;
		-- <Agent>[Frieda] [SLOG IHOP] <Impactors>[händerna]

		Cause_impact_V2_Pass impactor_np v2 = lin Clause {
			np = fromMaybe NP emptyNP impactor_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)
		} ;
		-- [KÖRS] <Impactor>[nålen]

		--
		-- Cause_motion
		--

		Cause_motion_V theme_np v = lin Clause {
			np = fromMaybe NP emptyNP theme_np ;
			vp = mkVP v
		} ;
		-- [TOPPAR] <Theme>[bollen]

		Cause_motion_V2_1 agent_np area_adv theme_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP theme_np)) (fromMaybe Adv emptyAdv area_adv)
		} ;
		-- <Agent>[De] [SKJUTER] <Area>[omkring] <Theme>[bordet och sängen]

		Cause_motion_V2_2 agent_np goal_adv source_adv theme_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP (mkVP (mkVP v2 (fromMaybe NP emptyNP theme_np)) (fromMaybe Adv emptyAdv source_adv)) (fromMaybe Adv emptyAdv goal_adv)
		} ;
		-- <Agent>[Min pappa och jag] [BOGSERADE] <Theme>[Forden] <Source>[från verkstaden] <Goal>[till min arbetskamrat]

		Cause_motion_V2_3 agent_np path_adv theme_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP theme_np)) (fromMaybe Adv emptyAdv path_adv)
		} ;
		-- <Agent>[Hon] vinner tekningen , [SKJUTER] <Theme>[pucken] <Path>[mellan sina gul- och blåklädda spelare]

		Cause_motion_V2_4 cause_np goal_adv theme_np v2 = lin Clause {
			np = fromMaybe NP emptyNP cause_np ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP theme_np)) (fromMaybe Adv emptyAdv goal_adv)
		} ;
		-- <Cause>[Vågorna] [KASTADE] <Theme>[båten] <Goal>[mot klipporna]

		Cause_motion_V3 agent_np theme_np v3 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v3 (fromMaybe NP emptyNP theme_np) emptyNP
		} ;
		-- <Agent>[jag] [TOPPAR] <Theme>[bollen]

		Cause_motion_V2_Pass theme_np v2 = lin Clause {
			np = fromMaybe NP emptyNP theme_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)
		} ;
		-- <Theme>[Flaggan] [HALAS]

		--
		-- Cause_temperature_change
		--

		Cause_temperature_change_V2_1 agent_np hot_cold_source_adv item_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP item_np)) (fromMaybe Adv emptyAdv hot_cold_source_adv)
		} ;
		-- <Agent>[Allt fler] [VÄRMER UPP] <Item>[huset] <Hot_Cold_source>[med ved]

		Cause_temperature_change_V2_2 cause_np item_np v2 = lin Clause {
			np = fromMaybe NP emptyNP cause_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP item_np)
		} ;
		-- <Cause>[solen] [VÄRMDE] <Item>[barackväggarna]

		--
		-- Cause_to_amalgamate
		--

		Cause_to_amalgamate_V2_1 agent_np part_1_np part_2_adv v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP part_1_np)) (fromMaybe Adv emptyAdv part_2_adv)
		} ;
		-- <Agent>[Hon] [FÖRENAR] <Part_1>[drömmen] <Part_2>[med verkligheten] , <Part_1>[natten] <Part_2>[med dagen]

		Cause_to_amalgamate_V2_2 agent_np parts_np whole_adv v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP parts_np)) (fromMaybe Adv emptyAdv whole_adv)
		} ;
		-- <Agent>[USA] har [BUNTAT IHOP] <Parts>[Irak , Iran och Nordkorea] <Whole>[till " ondskans axelmakter "]

		Cause_to_amalgamate_V2_Pass part_1_np part_2_adv v2 = lin Clause {
			np = fromMaybe NP emptyNP part_1_np ;
			vp = mkVP (mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)) (fromMaybe Adv emptyAdv part_2_adv)
		} ;
		-- [KORSADES] även <Part_1>[deras hästar] <Part_2>[med större ridhästar som de arabiska fullbloden och andra orientaliska ökenhästar]

		--
		-- Cause_to_be_dry
		--

		Cause_to_be_dry_V2_1 agent_np dryee_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP dryee_np)
		} ;
		-- <Agent>[Jag] brukar skära bort fettet och [UGNSTORKA] <Dryee>[bacon]

		Cause_to_be_dry_V2_2 cause_np dryee_np v2 = lin Clause {
			np = fromMaybe NP emptyNP cause_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP dryee_np)
		} ;
		-- <Cause>[Låsspray] kan [TORKA UT] <Dryee>[låsen]

		Cause_to_be_dry_V2_Pass dryee_np v2 = lin Clause {
			np = fromMaybe NP emptyNP dryee_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)
		} ;
		-- <Dryee>[75 % av vattenhalten i frukt och grönsaker] [TORKAS BORT]

		--
		-- Cause_to_be_included
		--

		Cause_to_be_included_V2 agent_np group_adv new_member_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP new_member_np)) (fromMaybe Adv emptyAdv group_adv)
		} ;
		-- <Agent>[tsaren] tänkte inte [INFÖRLIVA] <New_member>[östra rikshalvan] <Group>[med Ryssland]

		Cause_to_be_included_V2_Pass group_adv new_member_np v2 = lin Clause {
			np = fromMaybe NP emptyNP new_member_np ;
			vp = mkVP (mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)) (fromMaybe Adv emptyAdv group_adv)
		} ;
		-- <New_member>[Den som] [UPPTOGS] <Group>[i klostret]

		--
		-- Cause_to_be_sharp
		--

		Cause_to_be_sharp_V2 agent_np patient_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP patient_np)
		} ;
		-- <Agent>[Chili-Nisse] kommer att älska att [VÄSSA] <Patient>[klorna]

		--
		-- Cause_to_be_wet
		--

		Cause_to_be_wet_V2 agent_np liquid_adv undergoer_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP undergoer_np)) (fromMaybe Adv emptyAdv liquid_adv)
		} ;
		-- <Agent>[Vi] kommer att [DRÄNKA] <Undergoer>[området kring vagnarna] <Liquid>[med vatten]

		Cause_to_be_wet_V2_Pass liquid_adv undergoer_np v2 = lin Clause {
			np = fromMaybe NP emptyNP undergoer_np ;
			vp = mkVP (mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)) (fromMaybe Adv emptyAdv liquid_adv)
		} ;
		-- <Undergoer>[Sälgsnåren] [BEVATTNAS] <Liquid>[med tippens starkt kvävehaltiga lakvatten]

		--
		-- Cause_to_continue
		--

		Cause_to_continue_VV agent_np process_vp vv = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP vv (fromMaybe VP emptyVP process_vp)
		} ;
		-- <Agent>[de] [FORTSÄTTER] <Process>[att driva en eurostödslinje man för stunden inte kan omfatta]

		--
		-- Cause_to_end
		--

		Cause_to_end_V2_1 agent_np process_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP process_np)
		} ;
		-- <Agent>[hon] kan inte [FUSKA BORT] <Process>[timmar]

		Cause_to_end_V2_2 agent_np state_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP state_np)
		} ;
		-- <Agent>[Florence] [SLÅR UPP] <State>[sin förlovning med ' Stilton ']

		--
		-- Cause_to_experience
		--

		Cause_to_experience_V2 agent_np experiencer_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP experiencer_np)
		} ;
		-- <Agent>[En man i Linköping] döms till fyra månaders fängelse för att ha [TERRORISERAT] <Experiencer>[sin före detta flickvän]

		--
		-- Cause_to_fragment
		--

		Cause_to_fragment_V2 agent_np whole_patient_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP whole_patient_np)
		} ;
		-- <Agent>[Han] börjar [SLÅ SÖNDER] <Whole_patient>[allt han kommer över]

		--
		-- Cause_to_make_noise
		--

		Cause_to_make_noise_V2 agent_np sound_maker_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP sound_maker_np)
		} ;
		-- <Agent>[Mr Gillis] [SPELAR] <Sound_maker>[skivor]

		--
		-- Cause_to_make_progress
		--

		Cause_to_make_progress_V2 agent_np project_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP project_np)
		} ;
		-- <Agent>[arbetare som] [ÖKAR VÄRDET PÅ] <Project>[det arbete som utförs av andra]

		Cause_to_make_progress_V2_Pass project_np v2 = lin Clause {
			np = fromMaybe NP emptyNP project_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)
		} ;
		-- <Project>[Svenskan i Finland] ska inte bli ett eget språk utan [UTVECKLAS]

		--
		-- Cause_to_move_in_place
		--

		Cause_to_move_in_place_V2 agent_np theme_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP theme_np)
		} ;
		-- <Agent>[Love] [VICKAR] <Theme>[stolen]

		Cause_to_move_in_place_V2_Pass theme_np v2 = lin Clause {
			np = fromMaybe NP emptyNP theme_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)
		} ;
		-- <Theme>[Bilden] [ROTERAS]

		--
		-- Cause_to_perceive
		--

		Cause_to_perceive_V2 phenomenon_np v2 = lin Clause {
			np = emptyNP ;
			vp = mkVP v2 (fromMaybe NP emptyNP phenomenon_np)
		} ;
		-- [FÖREVISAR] <Phenomenon>[stjärnhimlen]

		--
		-- Cause_to_resume
		--

		Cause_to_resume_V2 agent_np process_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP process_np)
		} ;
		-- <Agent>[jag] tänkt gå upp i vettig tid , [STARTA OM] <Process>[den biologiska klockan]

		--
		-- Cause_to_start
		--

		Cause_to_start_V2 cause_np effect_np v2 = lin Clause {
			np = fromMaybe NP emptyNP cause_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP effect_np)
		} ;
		-- <Cause>[Gnistan] hade [TÄNT] <Effect>[ilska hos många muslimer]

		Cause_to_start_V2_Pass cause_np effect_np v2 = lin Clause {
			np = fromMaybe NP emptyNP effect_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep (fromMaybe NP emptyNP cause_np))
		} ;
		-- <Effect>[kriget i Tjetjenien] [PROVOCERADES FRAM] <Cause>[av makthavarna i Kreml]

		--
		-- Cause_to_wake
		--

		Cause_to_wake_V2_1 agent_np sleeper_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP sleeper_np)
		} ;
		-- <Agent>[man] nu börjat försöka [ÅTERUPPVÄCKA] <Sleeper>[tasmanskan]

		Cause_to_wake_V2_2 cause_np sleeper_np v2 = lin Clause {
			np = fromMaybe NP emptyNP cause_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP sleeper_np)
		} ;
		-- <Cause>[Oljuden från maskinerna] [VÄCKER] <Sleeper>[oss]

		--
		-- Ceasing_to_be
		--

		Ceasing_to_be_V entity_np v = lin Clause {
			np = fromMaybe NP emptyNP entity_np ;
			vp = mkVP v
		} ;
		-- <Entity>[Tre arbetsplatser] [FÖRSVINNER]

		Ceasing_to_be_V2_Pass entity_np v2 = lin Clause {
			np = fromMaybe NP emptyNP entity_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)
		} ;
		-- <Entity>[jag] på att [FÖRGÅS]

		--
		-- Certainty
		--

		Certainty_V cognizer_np content_adv v = lin Clause {
			np = fromMaybe NP emptyNP cognizer_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv content_adv)
		} ;
		-- <Cognizer>[jag] [TVIVLA] <Content>[på att spelarna är överens att förlora matchen för att vinna pengar på oddset]

		Certainty_VS cognizer_np content_s vs = lin Clause {
			np = fromMaybe NP emptyNP cognizer_np ;
			vp = mkVP vs (fromMaybe S emptyS content_s)
		} ;
		-- <Cognizer>[Läkarna] [TRODDE] <Content>[att hon hade sköldkörtelinflammation]

		--
		-- Change_direction
		--

		Change_direction_V direction_adv theme_np v = lin Clause {
			np = fromMaybe NP emptyNP theme_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv direction_adv)
		} ;
		-- <Theme>[Sam] [TAR AV] <Direction>[åt höger]

		--
		-- Change_event_duration
		--

		Change_event_duration_V2_1 agent_np event_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP event_np)
		} ;
		-- <Agent>[Arbetsministeriet] vill [FÖRKORTA] <Event>[tiden för civiltjänstgöring]

		Change_event_duration_V2_2 cause_np event_np v2 = lin Clause {
			np = fromMaybe NP emptyNP cause_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP event_np)
		} ;
		-- <Cause>[utredningen] bara [FÖRDRÖJER] <Event>[förverkligandet]

		--
		-- Change_event_time
		--

		Change_event_time_V2 cause_np event_np v2 = lin Clause {
			np = fromMaybe NP emptyNP cause_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP event_np)
		} ;
		-- <Cause>[Regn] [SKÖT UPP] <Event>[första rundan]

		Change_event_time_V2_Pass event_np v2 = lin Clause {
			np = fromMaybe NP emptyNP event_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)
		} ;
		-- <Event>[humanitära insatser] avbryts eller [FÖRSENAS]

		--
		-- Change_of_consistency
		--

		Change_of_consistency_V undergoer_np v = lin Clause {
			np = fromMaybe NP emptyNP undergoer_np ;
			vp = mkVP v
		} ;
		-- <Undergoer>[krämen] [TJOCKNAR]

		--
		-- Change_of_leadership
		--

		Change_of_leadership_V2_1 new_leader_np role_adv selector_np v2 = lin Clause {
			np = fromMaybe NP emptyNP selector_np ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP new_leader_np)) (fromMaybe Adv emptyAdv role_adv)
		} ;
		-- <Selector>[Milosevics] senaste drag var att [UPPHÖJA] <New_leader>[Bulatovic] <Role>[till federal premiärminister]

		Change_of_leadership_V2_2 old_order_np selector_np v2 = lin Clause {
			np = fromMaybe NP emptyNP selector_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP old_order_np)
		} ;
		-- <Selector>[Carl I Hagens fremskrittsparti , som] [FÄLLT] <Old_order>[en borgerlig regering]

		--
		-- Change_of_phase
		--

		Change_of_phase_V undergoer_np v = lin Clause {
			np = fromMaybe NP emptyNP undergoer_np ;
			vp = mkVP v
		} ;
		-- <Undergoer>[De små tårna] börjar [TINA UPP]

		--
		-- Change_of_quantity_of_possession
		--

		Change_of_quantity_of_possession_V2 owner_np possession_np v2 = lin Clause {
			np = fromMaybe NP emptyNP owner_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP possession_np)
		} ;
		-- <Owner>[jag] kommer att [TAPPA BORT] <Possession>[min personlighet och mitt sätt att fotografera]

		--
		-- Change_operational_state
		--

		Change_operational_state_V2_1 agent_np device_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP device_np)
		} ;
		-- <Agent>[Sofia] fått normala arbetstider och kan för det mesta [SLÅ AV] <Device>[datorn]

		Change_operational_state_V2_2 cause_np device_np v2 = lin Clause {
			np = fromMaybe NP emptyNP cause_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP device_np)
		} ;
		-- <Cause>[alkohol] kan [AKTIVERA] <Device>[belöningssystemet]

		--
		-- Change_position_on_a_scale
		--

		Change_position_on_a_scale_V_1 attribute_np v = lin Clause {
			np = fromMaybe NP emptyNP attribute_np ;
			vp = mkVP v
		} ;
		-- <Attribute>[temperaturen] [VÄXLAR]

		Change_position_on_a_scale_V_2 item_np v = lin Clause {
			np = fromMaybe NP emptyNP item_np ;
			vp = mkVP v
		} ;
		-- <Item>[Temat] [VÄXLAR]

		--
		-- Change_posture
		--

		Change_posture_V protagonist_np v = lin Clause {
			np = fromMaybe NP emptyNP protagonist_np ;
			vp = mkVP v
		} ;
		-- <Protagonist>[folk] [STOD UPP]

		--
		-- Change_tool
		--

		Change_tool_V agent_np new_tool_adv v = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv new_tool_adv)
		} ;
		-- <Agent>[Finnlines] [BYTA] <New_tool>[till finsk flagga]

		--
		-- Chatting
		--

		Chatting_V_1 interlocutor_1_np interlocutor_2_adv v = lin Clause {
			np = fromMaybe NP emptyNP interlocutor_1_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv interlocutor_2_adv)
		} ;
		-- <Interlocutor_1>[Jag] satt och [SMÅPRATADE] <Interlocutor_2>[med Patrik]

		Chatting_V_2 interlocutors_np v = lin Clause {
			np = fromMaybe NP emptyNP interlocutors_np ;
			vp = mkVP v
		} ;
		-- <Interlocutors>[Vi] åt frukost och satt och [SNACKADE]

		--
		-- Choosing
		--

		Choosing_V2 chosen_np cognizer_np possibilities_adv v2 = lin Clause {
			np = fromMaybe NP emptyNP cognizer_np ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP chosen_np)) (fromMaybe Adv emptyAdv possibilities_adv)
		} ;
		-- <Cognizer>[man] [DRAR] <Chosen>[ett kort] <Possibilities>[ur en kortlek]

		Choosing_VV chosen_vp cognizer_np vv = lin Clause {
			np = fromMaybe NP emptyNP cognizer_np ;
			vp = mkVP vv (fromMaybe VP emptyVP chosen_vp)
		} ;
		-- <Cognizer>[Allt fler] [VÄLJER] <Chosen>[att studera i Australien]

		Choosing_V2_Pass chosen_np v2 = lin Clause {
			np = fromMaybe NP emptyNP chosen_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)
		} ;
		-- <Chosen>[Tolv lyckliga] har [PLOCKATS UT]

		--
		-- Claim_ownership
		--

		Claim_ownership_V2 claimant_np property_np v2 = lin Clause {
			np = fromMaybe NP emptyNP claimant_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP property_np)
		} ;
		-- <Claimant>[Vi] måste [MUTA IN] <Property>[vårt revir]

		--
		-- Closure
		--

		Closure_V2_1 agent_np container_portal_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP container_portal_np)
		} ;
		-- <Agent>[S : t Görans sommarkafé] [SLOG UPP] <Container_portal>[portarna]

		Closure_V2_2 agent_np containing_object_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP containing_object_np)
		} ;
		-- <Agent>[Tjejen] [SPÄRRAR UPP] <Containing_object>[ögonen]

		Closure_V2_3 containing_object_np fastener_adv v2 = lin Clause {
			np = emptyNP ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP containing_object_np)) (fromMaybe Adv emptyAdv fastener_adv)
		} ;
		-- [FÖRSLUTA] <Containing_object>[vinflaskor] <Fastener>[med det självklara materialet kork]

		Closure_V2_Pass containing_object_np v2 = lin Clause {
			np = fromMaybe NP emptyNP containing_object_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)
		} ;
		-- <Containing_object>[flaskorna] [KORKAS UPP]

		--
		-- Cogitation
		--

		Cogitation_V cognizer_np topic_adv v = lin Clause {
			np = fromMaybe NP emptyNP cognizer_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv topic_adv)
		} ;
		-- <Cognizer>[jag] väl legat vaken hela natten efteråt och [GRUBBLAT] <Topic>[över vad de andra gästerna hade tänkt om mig]

		Cogitation_VQ cognizer_np topic_qs vq = lin Clause {
			np = fromMaybe NP emptyNP cognizer_np ;
			vp = mkVP vq (fromMaybe QS emptyQS topic_qs)
		} ;
		-- <Cognizer>[Hon] [UNDRADE] <Topic>[vad hisspojken tänkte]

		Cogitation_VS cognizer_np topic_s vs = lin Clause {
			np = fromMaybe NP emptyNP cognizer_np ;
			vp = mkVP vs (fromMaybe S emptyS topic_s)
		} ;
		-- <Cognizer>[Svedberg] [TÄNKTE] <Topic>[att han hade begått ett misstag]

		--
		-- Collaboration
		--

		Collaboration_V_1 partner_1_np partner_2_adv undertaking_adv v = lin Clause {
			np = fromMaybe NP emptyNP partner_1_np ;
			vp = mkVP (mkVP (mkVP v) (fromMaybe Adv emptyAdv partner_2_adv)) (fromMaybe Adv emptyAdv undertaking_adv)
		} ;
		-- <Partner_1>[Teatern] skall [SAMVERKA] <Partner_2>[med utbildningsanstalterna] <Undertaking>[inom scenkonsternas och musikens område]

		Collaboration_V_2 partners_np undertaking_adv v = lin Clause {
			np = fromMaybe NP emptyNP partners_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv undertaking_adv)
		} ;
		-- <Partners>[länderna] [SAMARBETAR] <Undertaking>[inom många områden]

		--
		-- Come_together
		--

		Come_together_V_1 configuration_np v = lin Clause {
			np = fromMaybe NP emptyNP configuration_np ;
			vp = mkVP v
		} ;
		-- <Configuration>[samtliga media] [GADDAR IHOP SIG]

		Come_together_V_2 party_1_np party_2_adv v = lin Clause {
			np = fromMaybe NP emptyNP party_1_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv party_2_adv)
		} ;
		-- <Party_1>[två tjejer] [GADDAR IHOP SIG] <Party_2>[mot en tredje]

		Come_together_V2_Pass individuals_np v2 = lin Clause {
			np = fromMaybe NP emptyNP individuals_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)
		} ;
		-- <Individuals>[sluminvånarna] [TRÄNGS]

		--
		-- Coming_to_be
		--

		Coming_to_be_V entity_np v = lin Clause {
			np = fromMaybe NP emptyNP entity_np ;
			vp = mkVP v
		} ;
		-- [UPPKOMMER] <Entity>[figurornament]

		--
		-- Coming_to_believe
		--

		Coming_to_believe_V2 content_np v2 = lin Clause {
			np = emptyNP ;
			vp = mkVP v2 (fromMaybe NP emptyNP content_np)
		} ;
		-- [BESTÄMMA] <Content>[nya signalkällor i de radarsystem för stridsledning och luftbevakning som Sovjetunionen byggde upp längs baltiska kusten]

		Coming_to_believe_VS cognizer_np content_s vs = lin Clause {
			np = fromMaybe NP emptyNP cognizer_np ;
			vp = mkVP vs (fromMaybe S emptyS content_s)
		} ;
		-- <Cognizer>[Jag] [TIPPAR] <Content>[att det var svårare för 50-talets hemmafruar]

		Coming_to_believe_VV cognizer_np content_vp vv = lin Clause {
			np = fromMaybe NP emptyNP cognizer_np ;
			vp = mkVP vv (fromMaybe VP emptyVP content_vp)
		} ;
		-- <Cognizer>[jag] har [LÄRT MIG] <Content>[att inte oroa mig för saker som inte inträffat än]

		--
		-- Coming_up_with
		--

		Coming_up_with_V2 cognizer_np idea_np v2 = lin Clause {
			np = fromMaybe NP emptyNP cognizer_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP idea_np)
		} ;
		-- <Cognizer>[en teatergrupp] som ska [SÄTTA IHOP] <Idea>[en revy]

		Coming_up_with_V2_Pass idea_np v2 = lin Clause {
			np = fromMaybe NP emptyNP idea_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)
		} ;
		-- <Idea>[obligatoriska rivningsplaner] [UPPRÄTTAS]

		--
		-- Commerce_buy
		--

		Commerce_buy_V2 buyer_np goods_np v2 = lin Clause {
			np = fromMaybe NP emptyNP buyer_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP goods_np)
		} ;
		-- <Buyer>[Berit] [ROPADE IN] <Goods>[en säng]

		--
		-- Commerce_collect
		--

		Commerce_collect_V2 buyer_np seller_np v2 = lin Clause {
			np = fromMaybe NP emptyNP seller_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP buyer_np)
		} ;
		-- <Seller>[bolag som] [ÖVERDEBITERAR] <Buyer>[sina kunder]

		--
		-- Commerce_pay
		--

		Commerce_pay_V2_1 buyer_np goods_adv money_np v2 = lin Clause {
			np = fromMaybe NP emptyNP buyer_np ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP money_np)) (fromMaybe Adv emptyAdv goods_adv)
		} ;
		-- <Buyer>[Vi] [GAV] <Money>[129 kronor] <Goods>[för ryggbiffen] och <Money>[92 kronor] <Goods>[för burgaren]

		Commerce_pay_V2_2 buyer_np goods_np v2 = lin Clause {
			np = fromMaybe NP emptyNP buyer_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP goods_np)
		} ;
		-- <Buyer>[Partiet] [ARVODERAR] <Goods>[partiledarposten]

		--
		-- Commerce_sell
		--

		Commerce_sell_V goods_np v = lin Clause {
			np = fromMaybe NP emptyNP goods_np ;
			vp = mkVP v
		} ;
		-- <Goods>[Prylarna som stjäls] är att [KRÄNGA AV]

		Commerce_sell_V2 buyer_adv goods_np seller_np v2 = lin Clause {
			np = fromMaybe NP emptyNP seller_np ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP goods_np)) (fromMaybe Adv emptyAdv buyer_adv)
		} ;
		-- <Seller>[15-åringen] [SÅLDE] <Goods>[knark] <Buyer>[till andra ungdomar]

		Commerce_sell_V2_Pass goods_np v2 = lin Clause {
			np = fromMaybe NP emptyNP goods_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)
		} ;
		-- <Goods>[Innehavet] har [AVYTTRATS]

		--
		-- Commitment
		--

		Commitment_V message_adv speaker_np v = lin Clause {
			np = fromMaybe NP emptyNP speaker_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv message_adv)
		} ;
		-- [SVÄR SIG] <Speaker>[bolaget] <Message>[fritt från ansvar]

		Commitment_VS addressee_adv message_s speaker_np vs = lin Clause {
			np = fromMaybe NP emptyNP speaker_np ;
			vp = mkVP (mkVP vs (fromMaybe S emptyS message_s)) (fromMaybe Adv emptyAdv addressee_adv)
		} ;
		-- <Speaker>[Jag] [SVÄR] <Addressee>[inför Gud] <Message>[att jag inte har gjort det]

		Commitment_VV message_vp speaker_np vv = lin Clause {
			np = fromMaybe NP emptyNP speaker_np ;
			vp = mkVP vv (fromMaybe VP emptyVP message_vp)
		} ;
		-- <Speaker>[Börje Carlsson] ska [UTFÄSTA SIG] <Message>[att avstå från facklig verksamhet]

		--
		-- Committing_crime
		--

		Committing_crime_V2_Pass crime_np v2 = lin Clause {
			np = fromMaybe NP emptyNP crime_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)
		} ;
		-- <Crime>[Mordet] [FÖRÖVADES]

		--
		-- Communication
		--

		Communication_V2_1 communicator_np message_np v2 = lin Clause {
			np = fromMaybe NP emptyNP communicator_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP message_np)
		} ;
		-- <Communicator>[EG-domstolen] [MEDDELADE] <Message>[sin dom i Laval-målet]

		Communication_V2_2 medium_np message_np v2 = lin Clause {
			np = fromMaybe NP emptyNP medium_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP message_np)
		} ;
		-- <Medium>[klockorna] [RINGER IN] <Message>[det nya året]

		Communication_VS communicator_np message_s vs = lin Clause {
			np = fromMaybe NP emptyNP communicator_np ;
			vp = mkVP vs (fromMaybe S emptyS message_s)
		} ;
		-- <Communicator>[Elisabeth] [MEDDELADE] <Message>[att lägget just nu är lugnt på lågstadiet]

		--
		-- Communication_manner
		--

		Communication_manner_V speaker_np topic_adv v = lin Clause {
			np = fromMaybe NP emptyNP speaker_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv topic_adv)
		} ;
		-- <Speaker>[jag] ska inte [ORERA] <Topic>[om mitt omsusade privatliv]

		Communication_manner_V2 addressee_adv message_np speaker_np v2 = lin Clause {
			np = fromMaybe NP emptyNP speaker_np ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP message_np)) (fromMaybe Adv emptyAdv addressee_adv)
		} ;
		-- <Speaker>[Carola] [SJÖNG] <Message>[låten Tänk om] <Addressee>[för kronprinsessparet]

		--
		-- Communication_means
		--

		Communication_means_V addressee_adv communicator_np v = lin Clause {
			np = fromMaybe NP emptyNP communicator_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv addressee_adv)
		} ;
		-- <Communicator>[Han] [RINGDE] och [FAXADE] flera gånger om dagen <Addressee>[till kunder som han visste hade pengar]

		Communication_means_V2_1 addressee_adv message_np v2 = lin Clause {
			np = emptyNP ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP message_np)) (fromMaybe Adv emptyAdv addressee_adv)
		} ;
		-- [FAXA] <Message>[svaren] <Addressee>[till din läkare]

		Communication_means_V2_2 addressee_np v2 = lin Clause {
			np = emptyNP ;
			vp = mkVP v2 (fromMaybe NP emptyNP addressee_np)
		} ;
		-- [RINGA UPP] <Addressee>[PcCity]

		Communication_means_V2_3 communicator_np message_np v2 = lin Clause {
			np = fromMaybe NP emptyNP communicator_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP message_np)
		} ;
		-- <Communicator>[Vi] bestämde att [RINGA IN] <Message>[en beställning som jag åker och hämtar vid 18-tiden]

		--
		-- Communication_noise
		--

		Communication_noise_V2 message_np speaker_np v2 = lin Clause {
			np = fromMaybe NP emptyNP speaker_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP message_np)
		} ;
		-- <Message>[Dom skjuter på mig] , [SKREK] <Speaker>[hon]

		Communication_noise_VS message_s speaker_np vs = lin Clause {
			np = fromMaybe NP emptyNP speaker_np ;
			vp = mkVP vs (fromMaybe S emptyS message_s)
		} ;
		-- <Speaker>[han] blev rädd , sprang ut och runt i trapphuset , bultade på alla dörrar och [SKREK] <Message>[att alla skulle gå ut]

		--
		-- Communication_response
		--

		Communication_response_V speaker_np trigger_adv v = lin Clause {
			np = fromMaybe NP emptyNP speaker_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv trigger_adv)
		} ;
		-- <Speaker>[Miljöpartiet] [SVARADE] <Trigger>[på frågor]

		Communication_response_VS message_s speaker_np vs = lin Clause {
			np = fromMaybe NP emptyNP speaker_np ;
			vp = mkVP vs (fromMaybe S emptyS message_s)
		} ;
		-- <Speaker>[en av entusiasterna] [REPLIKERADE] <Message>[att ' Det är inte bilen det är fel på - Det är träden . ']

		--
		-- Commutation
		--

		Commutation_V2 executive_authority_np original_punishment_np v2 = lin Clause {
			np = fromMaybe NP emptyNP executive_authority_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP original_punishment_np)
		} ;
		-- <Executive_authority>[president Rutherford B. Hayes] [FÖRVANDLADE] <Original_punishment>[straffet]

		Commutation_V2_Pass original_punishment_np v2 = lin Clause {
			np = fromMaybe NP emptyNP original_punishment_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)
		} ;
		-- [OMVANDLADES] <Original_punishment>[straffet]

		--
		-- Compatibility
		--

		Compatibility_V item_1_np item_2_adv v = lin Clause {
			np = fromMaybe NP emptyNP item_1_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv item_2_adv)
		} ;
		-- <Item_1>[föreställningarnas speltider] [PASSAR IHOP] <Item_2>[med skärgårdsfärjornas turlistor]

		Compatibility_V2_Pass item_1_np item_2_adv v2 = lin Clause {
			np = fromMaybe NP emptyNP item_1_np ;
			vp = mkVP (mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)) (fromMaybe Adv emptyAdv item_2_adv)
		} ;
		-- <Item_1>[neutrala färger] [MATCHAS] <Item_2>[med starka och sprakande kulörer]

		--
		-- Competition
		--

		Competition_V_1 competition_adv participants_np v = lin Clause {
			np = fromMaybe NP emptyNP participants_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv competition_adv)
		} ;
		-- <Participants>[Deltagarna] [TÄVLADE] <Competition>[i tio grenar]

		Competition_V_2 participant_1_np participant_2_adv v = lin Clause {
			np = fromMaybe NP emptyNP participant_1_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv participant_2_adv)
		} ;
		-- <Participant_1>[Sverige] har möjligheten att [KONKURRERA] <Participant_2>[med vem som helst]

		--
		-- Complaining
		--

		Complaining_V_1 complainer_np complaint_adv v = lin Clause {
			np = fromMaybe NP emptyNP complainer_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv complaint_adv)
		} ;
		-- <Complainer>[folk] [KLAGA] <Complaint>[över att maten blivit dyr]

		Complaining_V_2 complainer_np topic_adv v = lin Clause {
			np = fromMaybe NP emptyNP complainer_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv topic_adv)
		} ;
		-- <Complainer>[de själva] <Topic>[ofta] [GNÖLAR] <Topic>[över sina egna tillkortakommanden]

		Complaining_V2 complainer_np complaint_np v2 = lin Clause {
			np = fromMaybe NP emptyNP complainer_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP complaint_np)
		} ;
		-- <Complainer>[Vi] måste tydligen [ÄLTA] <Complaint>[futtiga problem]

		--
		-- Compliance
		--

		Compliance_V norm_adv v = lin Clause {
			np = emptyNP ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv norm_adv)
		} ;
		-- [HÅLLA SIG] <Norm>[till de bestämmelser som finns]

		Compliance_V2 norm_np protagonist_np v2 = lin Clause {
			np = fromMaybe NP emptyNP protagonist_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP norm_np)
		} ;
		-- <Protagonist>[Den som] [ÖVERTRÄDER] <Norm>[förbudet]

		--
		-- Conduct
		--

		Conduct_V agent_np manner_adv v = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv manner_adv)
		} ;
		-- <Agent>[Andy Warhol] [VAR] <Manner>[trevlig]

		--
		-- Confronting_problem
		--

		Confronting_problem_V2 agent_np issue_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP issue_np)
		} ;
		-- <Agent>[vi] att [STÅ INFÖR] <Issue>[några väldigt allvarliga utmaningar]

		--
		-- Conquering
		--

		Conquering_V conqueror_adv theme_np v = lin Clause {
			np = fromMaybe NP emptyNP theme_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv conqueror_adv)
		} ;
		-- <Theme>[staden] [FÖLL] <Conqueror>[i rebellernas händer]

		Conquering_V2 conqueror_np theme_np v2 = lin Clause {
			np = fromMaybe NP emptyNP conqueror_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP theme_np)
		} ;
		-- <Conqueror>[judiska kolonister] [TOG I BESITTNING] <Theme>[fyra byggnader]

		--
		-- Contacting
		--

		Contacting_V2 address_adv addressee_np communicator_np v2 = lin Clause {
			np = fromMaybe NP emptyNP communicator_np ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP addressee_np)) (fromMaybe Adv emptyAdv address_adv)
		} ;
		-- <Communicator>[Man] kan [KONTAKTA] <Addressee>[Watson] <Address>[på nigelwatson1 @ gmail.com]

		--
		-- Containing
		--

		Containing_V2 container_np contents_np v2 = lin Clause {
			np = fromMaybe NP emptyNP container_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP contents_np)
		} ;
		-- <Container>[Reservoaren] [RYMMER] <Contents>[424 miljoner kubikmeter]

		--
		-- Contingency
		--

		Contingency_V determinant_adv outcome_np v = lin Clause {
			np = fromMaybe NP emptyNP outcome_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv determinant_adv)
		} ;
		-- <Outcome>[det marknära ozonet] [KOMMER AN] <Determinant>[på utsläpp av svaveloxid ( SOx ) och lättflyktiga kolväten ( CxHx )]

		--
		-- Contrition
		--

		Contrition_V action_adv experiencer_np v = lin Clause {
			np = fromMaybe NP emptyNP experiencer_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv action_adv)
		} ;
		-- <Experiencer>[min faster] [KÄNNER SIG SKYLDIG] <Action>[för att hon inte gjorde något för att rädda sin bror]

		--
		-- Convey_importance
		--

		Convey_importance_V2 medium_np message_np v2 = lin Clause {
			np = fromMaybe NP emptyNP medium_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP message_np)
		} ;
		-- <Medium>[Shintoismen] ger trots allt inga etiska eller moraliska regler för hur man skall fungera , utan [POÄNGTERAR] <Message>[ärlighet och själens renhet samt människans kontakt med naturen]

		Convey_importance_VS message_s speaker_np vs = lin Clause {
			np = fromMaybe NP emptyNP speaker_np ;
			vp = mkVP vs (fromMaybe S emptyS message_s)
		} ;
		-- <Speaker>[Han] [POÄNGTERAR] <Message>[att teatern är mer än skådespelare och regissörer]

		Convey_importance_V2_Pass message_np v2 = lin Clause {
			np = fromMaybe NP emptyNP message_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)
		} ;
		-- <Message>[någonting som] [POÄNGTERATS]

		--
		-- Cooking_creation
		--

		Cooking_creation_V produced_food_np v = lin Clause {
			np = fromMaybe NP emptyNP produced_food_np ;
			vp = mkVP v
		} ;
		-- [KOKA] <Produced_food>[sylt eller kräm]

		Cooking_creation_V2 cook_np produced_food_np v2 = lin Clause {
			np = fromMaybe NP emptyNP cook_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP produced_food_np)
		} ;
		-- <Cook>[man] [LAGA TILL] <Produced_food>[en apelsinsaft]

		Cooking_creation_V2_Pass produced_food_np v2 = lin Clause {
			np = fromMaybe NP emptyNP produced_food_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)
		} ;
		-- <Produced_food>[Kaffe] kan [TILLREDAS]

		--
		-- Corroding
		--

		Corroding_V undergoer_np v = lin Clause {
			np = fromMaybe NP emptyNP undergoer_np ;
			vp = mkVP v
		} ;
		-- <Undergoer>[behållarna] [ROSTA]

		--
		-- Cotheme
		--

		Cotheme_V2_1 cotheme_np direction_adv theme_np v2 = lin Clause {
			np = fromMaybe NP emptyNP theme_np ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP cotheme_np)) (fromMaybe Adv emptyAdv direction_adv)
		} ;
		-- <Theme>[Olle] [GUIDAR] <Cotheme>[oss] <Direction>[mot havsisen]

		Cotheme_V2_2 cotheme_np goal_adv theme_np v2 = lin Clause {
			np = fromMaybe NP emptyNP theme_np ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP cotheme_np)) (fromMaybe Adv emptyAdv goal_adv)
		} ;
		-- <Theme>[Han] [LEDDE] <Cotheme>[barnet] <Goal>[till kunskap]

		Cotheme_V2_3 cotheme_np path_adv theme_np v2 = lin Clause {
			np = fromMaybe NP emptyNP theme_np ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP cotheme_np)) (fromMaybe Adv emptyAdv path_adv)
		} ;
		-- <Theme>[Timmer] [LEDDE] <Cotheme>[cykeln] <Path>[över spåret]

		Cotheme_V2_4 cotheme_np source_adv theme_np v2 = lin Clause {
			np = fromMaybe NP emptyNP theme_np ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP cotheme_np)) (fromMaybe Adv emptyAdv source_adv)
		} ;
		-- <Theme>[Gunnar] [LEDDE] <Cotheme>[hästen] <Source>[därifrån]

		Cotheme_V2_Pass cotheme_np theme_np v2 = lin Clause {
			np = fromMaybe NP emptyNP cotheme_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep (fromMaybe NP emptyNP theme_np))
		} ;
		-- <Cotheme>[Clemenceau] [ESKORTERAS] <Theme>[av två robotjagare samt förrådsfartyget Meuse]

		--
		-- Court_examination
		--

		Court_examination_V2 witness_np v2 = lin Clause {
			np = emptyNP ;
			vp = mkVP v2 (fromMaybe NP emptyNP witness_np)
		} ;
		-- [KORSFÖRHÖRT] <Witness>[åklagarens vittnen]

		--
		-- Create_physical_artwork
		--

		Create_physical_artwork_V2 creator_np representation_np v2 = lin Clause {
			np = fromMaybe NP emptyNP creator_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP representation_np)
		} ;
		-- <Creator>[jag] fortsatte att [TECKNA] <Representation>[hans porträtt]

		--
		-- Create_representation
		--

		Create_representation_V2 creator_np represented_np v2 = lin Clause {
			np = fromMaybe NP emptyNP creator_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP represented_np)
		} ;
		-- <Creator>[hon] [SMYGFILMAT] <Represented>[unga flickor i duschen]

		Create_representation_V2_Pass creator_np represented_np v2 = lin Clause {
			np = fromMaybe NP emptyNP represented_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep (fromMaybe NP emptyNP creator_np))
		} ;
		-- [PORTRÄTTERAS] <Represented>[Stevens] <Creator>[av skådespelaren Tommy Lee Jones]

		--
		-- Creating
		--

		Creating_V2_1 cause_np created_entity_np v2 = lin Clause {
			np = fromMaybe NP emptyNP cause_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP created_entity_np)
		} ;
		-- <Cause>[En jordbävning] [SKAPAR] <Created_entity>[flodvågor som tar över 300 000 människors liv i Sydasien]

		Creating_V2_2 created_entity_np creator_np v2 = lin Clause {
			np = fromMaybe NP emptyNP creator_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP created_entity_np)
		} ;
		-- <Creator>[4 tjejer] [SÄTTER IHOP] <Created_entity>[ett lag]

		--
		-- Criminal_investigation
		--

		Criminal_investigation_V2 incident_np investigator_np v2 = lin Clause {
			np = fromMaybe NP emptyNP investigator_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP incident_np)
		} ;
		-- <Investigator>[Polisen] [UTREDER] <Incident>[händelsen]

		--
		-- Cutting
		--

		Cutting_V2 agent_np item_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP item_np)
		} ;
		-- [TÄRNAR] <Agent>[du] <Item>[kycklingfilén]

		Cutting_V2_Pass item_np v2 = lin Clause {
			np = fromMaybe NP emptyNP item_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)
		} ;
		-- <Item>[Stora potatisar] däremot kan [TÄRNAS] , [SKIVAS] eller [KLYFTAS]

		--
		-- Damaging
		--

		Damaging_V2_1 agent_np patient_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP patient_np)
		} ;
		-- <Agent>[Två killar] [VANDALISERAR] <Patient>[en bil]

		Damaging_V2_2 cause_np patient_np v2 = lin Clause {
			np = fromMaybe NP emptyNP cause_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP patient_np)
		} ;
		-- <Cause>[maskinen] [ÄTER] <Patient>[ditt kort]

		--
		-- Daring
		--

		Daring_V2 action_np agent_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP action_np)
		} ;
		-- <Agent>[Bush] [VÅGADE SIG PÅ] <Action>[en öppning mot Kuba]

		Daring_VV action_vp agent_np vv = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP vv (fromMaybe VP emptyVP action_vp)
		} ;
		-- <Agent>[Upplands Väsby kommun] hade tillsammans med ABF [VÅGAT SIG PÅ] <Action>[att anordna ett utomhusarrangemang]

		--
		-- Death
		--

		Death_V protagonist_np v = lin Clause {
			np = fromMaybe NP emptyNP protagonist_np ;
			vp = mkVP v
		} ;
		-- <Protagonist>[50 procent av nötväckorna] [STRYKER MED]

		--
		-- Deciding
		--

		Deciding_VV cognizer_np decision_vp vv = lin Clause {
			np = fromMaybe NP emptyNP cognizer_np ;
			vp = mkVP vv (fromMaybe VP emptyVP decision_vp)
		} ;
		-- <Cognizer>[Kommittén] [BESTÄMDE] <Decision>[att inte göra någon ändring i förslaget till riksdagslistan]

		--
		-- Delimitation_of_diversity
		--

		Delimitation_of_diversity_V limit1_adv limit2_adv variable_np v = lin Clause {
			np = fromMaybe NP emptyNP variable_np ;
			vp = mkVP (mkVP (mkVP v) (fromMaybe Adv emptyAdv limit1_adv)) (fromMaybe Adv emptyAdv limit2_adv)
		} ;
		-- <Variable>[åldrarna] [SPÄNNER] <Limit1>[från 35] <Limit2>[till 64 år]

		--
		-- Delivery
		--

		Delivery_V2 deliverer_np recipient_adv theme_np v2 = lin Clause {
			np = fromMaybe NP emptyNP deliverer_np ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP theme_np)) (fromMaybe Adv emptyAdv recipient_adv)
		} ;
		-- <Deliverer>[En del av företagen] [LEVERERAR] <Theme>[vårdtjänster] <Recipient>[till kommunala beställare]

		Delivery_V2_Pass_1 goal_adv theme_np v2 = lin Clause {
			np = fromMaybe NP emptyNP theme_np ;
			vp = mkVP (mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)) (fromMaybe Adv emptyAdv goal_adv)
		} ;
		-- <Theme>[företagets varor] [LEVERERAS] <Goal>[hem]

		Delivery_V2_Pass_2 recipient_adv theme_np v2 = lin Clause {
			np = fromMaybe NP emptyNP theme_np ;
			vp = mkVP (mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)) (fromMaybe Adv emptyAdv recipient_adv)
		} ;
		-- <Theme>[företagets varor] [LEVERERAS] <Recipient>[till kunder som beställer dem från Systembolagets internet-butik]

		--
		-- Deny_permission
		--

		Deny_permission_V2V action_vp authority_np protagonist_np v2v = lin Clause {
			np = fromMaybe NP emptyNP authority_np ;
			vp = mkVP v2v (fromMaybe NP emptyNP protagonist_np) (fromMaybe VP emptyVP action_vp)
		} ;
		-- <Authority>[Man] kan inte [FÖRBJUDA] <Protagonist>[oss] <Action>[att tänka]

		--
		-- Departing
		--

		Departing_V2 source_np theme_np v2 = lin Clause {
			np = fromMaybe NP emptyNP theme_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP source_np)
		} ;
		-- <Theme>[De] måste [LÄMNA] <Source>[landet]

		--
		-- Deserving
		--

		Deserving_V2 action_np state_of_affairs_np v2 = lin Clause {
			np = fromMaybe NP emptyNP state_of_affairs_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP action_np)
		} ;
		-- <State_of_affairs>[Ingmar Fornes sakliga inlägg i ÅU den 14 juli] [FÖRTJÄNAR] <Action>[några kommentarer från undertecknad]

		--
		-- Desiring
		--

		Desiring_V experiencer_np focal_participant_adv v = lin Clause {
			np = fromMaybe NP emptyNP experiencer_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv focal_participant_adv)
		} ;
		-- <Experiencer>[Roberte] [LÄNGTADE] <Focal_participant>[hem till Tyskland]

		Desiring_V2 experiencer_np focal_participant_np v2 = lin Clause {
			np = fromMaybe NP emptyNP experiencer_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP focal_participant_np)
		} ;
		-- <Experiencer>[Jag] [KÄNNER FÖR] <Focal_participant>[en tur på landet]

		Desiring_VV event_vp experiencer_np vv = lin Clause {
			np = fromMaybe NP emptyNP experiencer_np ;
			vp = mkVP vv (fromMaybe VP emptyVP event_vp)
		} ;
		-- <Experiencer>[jag] [VILJA] <Event>[ha sju sångare som Don Giovanni]

		--
		-- Destroying
		--

		Destroying_V2_1 cause_np undergoer_np v2 = lin Clause {
			np = fromMaybe NP emptyNP cause_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP undergoer_np)
		} ;
		-- <Cause>[den] [FÖRINTAR] <Undergoer>[människor]

		Destroying_V2_2 destroyer_np undergoer_np v2 = lin Clause {
			np = fromMaybe NP emptyNP destroyer_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP undergoer_np)
		} ;
		-- <Destroyer>[de] kan [TILLINTETGÖRA] <Undergoer>[varandra]

		Destroying_V2_Pass_1 destroyer_np v2 = lin Clause {
			np = emptyNP ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep (fromMaybe NP emptyNP destroyer_np))
		} ;
		-- [TILLINTETGJORDES] <Destroyer>[av de tysk-estniska trupper , som tålmodigt hade väntat på att de gummiklädda sovjetsoldaterna skulle avancera så långt att en flykt blev omöjlig]

		Destroying_V2_Pass_2 undergoer_np v2 = lin Clause {
			np = fromMaybe NP emptyNP undergoer_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)
		} ;
		-- <Undergoer>[städerna Loren och Manatuto] hade [JÄMNATS MED MARKEN]

		--
		-- Detaching
		--

		Detaching_V2 agent_np item_np source_adv v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP item_np)) (fromMaybe Adv emptyAdv source_adv)
		} ;
		-- <Agent>[vi] [KAPAR AV] <Item>[benen] <Source>[på älgarna]

		Detaching_V2_Pass item_np v2 = lin Clause {
			np = fromMaybe NP emptyNP item_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)
		} ;
		-- <Item>[vrakets överbyggnad] [KAPADES]

		--
		-- Detaining
		--

		Detaining_V2 authorities_np suspect_np v2 = lin Clause {
			np = fromMaybe NP emptyNP authorities_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP suspect_np)
		} ;
		-- <Authorities>[man] [HÄKTAR] <Suspect>[en tidigare ostraffad 15-åring]

		Detaining_V2_Pass suspect_np v2 = lin Clause {
			np = fromMaybe NP emptyNP suspect_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)
		} ;
		-- <Suspect>[Han] [OMHÄKTADES]

		--
		-- Differentiation
		--

		Differentiation_V2_1 cognizer_np phenomena_np v2 = lin Clause {
			np = fromMaybe NP emptyNP cognizer_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP phenomena_np)
		} ;
		-- <Cognizer>[Brå] bär sig åt för att [URSKILJA] <Phenomena>[de riktiga svenskarna]

		Differentiation_V2_2 phenomenon_1_np phenomenon_2_adv v2 = lin Clause {
			np = emptyNP ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP phenomenon_1_np)) (fromMaybe Adv emptyAdv phenomenon_2_adv)
		} ;
		-- [URSKILJA] <Phenomenon_1>[autentiska väskor] <Phenomenon_2>[bland budgetalternativ]

		Differentiation_V2_Pass phenomena_np v2 = lin Clause {
			np = fromMaybe NP emptyNP phenomena_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)
		} ;
		-- <Phenomena>[lagen] [SKILJAS ÅT]

		--
		-- Discussion
		--

		Discussion_V interlocutors_np topic_adv v = lin Clause {
			np = fromMaybe NP emptyNP interlocutors_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv topic_adv)
		} ;
		-- <Interlocutors>[Man] kan [DISKUTERA] <Topic>[om tv var bättre förr]

		--
		-- Dispersal
		--

		Dispersal_V2 agent_np individuals_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP individuals_np)
		} ;
		-- <Agent>[Arrangerande Nilsby spelmän i Pargas] har också [SPRITT UT] <Individuals>[evenemangen]

		--
		-- Distinctiveness
		--

		Distinctiveness_V2 entity_np feature_np v2 = lin Clause {
			np = fromMaybe NP emptyNP feature_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP entity_np)
		} ;
		-- [UTMÄRKER] <Entity>[hennes bilder] är just <Feature>[tydligheten och skärpan]

		--
		-- Dodging
		--

		Dodging_V2 bad_entity_np dodger_np v2 = lin Clause {
			np = fromMaybe NP emptyNP dodger_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP bad_entity_np)
		} ;
		-- <Dodger>[Staten Israel] tar sig rätten att [SIDSTEPPA] <Bad_entity>[internationell lag]

		--
		-- Dominate_competitor
		--

		Dominate_competitor_V2 agent_np patient_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP patient_np)
		} ;
		-- <Agent>[han] [DOMINERA] <Patient>[henne]

		--
		-- Dominate_situation
		--

		Dominate_situation_V2 agent_np situation_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP situation_np)
		} ;
		-- <Agent>[någon] [DOMINERA] <Situation>[ett bord]

		--
		-- Dressing
		--

		Dressing_V clothing_adv wearer_np v = lin Clause {
			np = fromMaybe NP emptyNP wearer_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv clothing_adv)
		} ;
		-- <Wearer>[Bea] [KLÄR SIG] <Clothing>[i moderna och utmanande kläder och högklackade skor]

		Dressing_V2 clothing_np wearer_np v2 = lin Clause {
			np = fromMaybe NP emptyNP wearer_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP clothing_np)
		} ;
		-- <Wearer>[Han] [SÄTTER PÅ SIG] <Clothing>[mössan]

		--
		-- Drop_in_on
		--

		Drop_in_on_V visitor_np v = lin Clause {
			np = fromMaybe NP emptyNP visitor_np ;
			vp = mkVP v
		} ;
		-- <Visitor>[jag] på att [SMITA IN]

		--
		-- Dunking
		--

		Dunking_V2 agent_np substance_adv theme_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP theme_np)) (fromMaybe Adv emptyAdv substance_adv)
		} ;
		-- <Agent>[Daniel Ohrgren] [DOPPAR NER] <Theme>[en ros] <Substance>[i flytande kväve som har en temperatur på närmare 200 minusgrader]

		--
		-- Duplication
		--

		Duplication_V2 creator_np original_np v2 = lin Clause {
			np = fromMaybe NP emptyNP creator_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP original_np)
		} ;
		-- <Creator>[Statliga myndigheter] [PIRATKOPIERAR] <Original>[datorprogram]

		Duplication_V2_Pass original_np v2 = lin Clause {
			np = fromMaybe NP emptyNP original_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)
		} ;
		-- <Original>[Det första numret] [KOPIERADES]

		--
		-- Duration_relation
		--

		Duration_relation_V_1 duration_adv eventuality_np v = lin Clause {
			np = fromMaybe NP emptyNP eventuality_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv duration_adv)
		} ;
		-- <Eventuality>[Kräksjukan] [HÅLLER I SIG] <Duration>[i ett-två dygn]

		Duration_relation_V_2 entity_np v = lin Clause {
			np = fromMaybe NP emptyNP entity_np ;
			vp = mkVP v
		} ;
		-- <Entity>[Den] yngsta var bara fyra år och [KLARADE SIG]

		--
		-- Earnings_and_losses
		--

		Earnings_and_losses_V earner_np earnings_adv v = lin Clause {
			np = fromMaybe NP emptyNP earner_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv earnings_adv)
		} ;
		-- <Earner>[Det finns personer som] [TJÄNAT] <Earnings>[tusentals euro]

		Earnings_and_losses_V2 earner_np earnings_np v2 = lin Clause {
			np = fromMaybe NP emptyNP earner_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP earnings_np)
		} ;
		-- <Earner>[Kajander] inte [TJÄNAR] <Earnings>[några pengar]

		--
		-- Eclipse
		--

		Eclipse_V eclipsed_np obstruction_adv v = lin Clause {
			np = fromMaybe NP emptyNP eclipsed_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv obstruction_adv)
		} ;
		-- <Eclipsed>[Allt] [AVSKÄRMAT] <Obstruction>[med en radda stora reklamskyltar]

		Eclipse_V2 eclipsed_np obstruction_np v2 = lin Clause {
			np = fromMaybe NP emptyNP obstruction_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP eclipsed_np)
		} ;
		-- <Obstruction>[MetLife Building] [BLOCKERAR] <Eclipsed>[utsikten längs Park Avenue]

		Eclipse_V2_Pass eclipsed_np v2 = lin Clause {
			np = fromMaybe NP emptyNP eclipsed_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)
		} ;
		-- <Eclipsed>[solen] [FÖRMÖRKADES]

		--
		-- Education_teaching
		--

		Education_teaching_V qualification_adv student_np v = lin Clause {
			np = fromMaybe NP emptyNP student_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv qualification_adv)
		} ;
		-- <Student>[Han] har licentiatexamen från Kungliga Tekniska högskolan i polymerteknik och [STUDERAR] <Qualification>[till doktorsexamen]

		Education_teaching_V2_1 role_adv student_np teacher_np v2 = lin Clause {
			np = fromMaybe NP emptyNP teacher_np ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP student_np)) (fromMaybe Adv emptyAdv role_adv)
		} ;
		-- <Teacher>[han] [LÄRDE UPP] <Student>[Tompa] <Role>[till telegrafoperatör]

		Education_teaching_V2_2 student_np subject_adv v2 = lin Clause {
			np = emptyNP ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP student_np)) (fromMaybe Adv emptyAdv subject_adv)
		} ;
		-- [ALLMÄNBILDA] <Student>[familjen] <Subject>[om öl]

		Education_teaching_V2V skill_vp student_np v2v = lin Clause {
			np = emptyNP ;
			vp = mkVP v2v (fromMaybe NP emptyNP student_np) (fromMaybe VP emptyVP skill_vp)
		} ;
		-- [INSTRUERAT] <Student>[honom] <Skill>[att göra så]

		--
		-- Elusive_goal
		--

		Elusive_goal_V2 desired_goal_np experiencer_np v2 = lin Clause {
			np = fromMaybe NP emptyNP desired_goal_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP experiencer_np)
		} ;
		-- <Desired_goal>[den livsfarliga EHEC O157-bakterien] fortsätter att [GÄCKA] <Experiencer>[expertisen]

		--
		-- Emanating
		--

		Emanating_V emission_np source_adv v = lin Clause {
			np = fromMaybe NP emptyNP emission_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv source_adv)
		} ;
		-- <Emission>[Ogillandet] [STRÅLADE] <Source>[ur honom]

		--
		-- Emitting
		--

		Emitting_V2 emission_np source_emitter_np v2 = lin Clause {
			np = fromMaybe NP emptyNP source_emitter_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP emission_np)
		} ;
		-- <Source_emitter>[Graniten i norra Bohuslän] [UTSTRÅLAR] <Emission>[radon]

		Emitting_V2_Pass emission_np v2 = lin Clause {
			np = fromMaybe NP emptyNP emission_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)
		} ;
		-- <Emission>[Virus] [UTSÖNDRAS]

		--
		-- Emotion_active
		--

		Emotion_active_V experiencer_np topic_adv v = lin Clause {
			np = fromMaybe NP emptyNP experiencer_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv topic_adv)
		} ;
		-- <Experiencer>[En del akademiker] [BEKYMRAR SIG] <Topic>[över vad de ska forska i då disputationen är avklarad]

		--
		-- Emotion_heat
		--

		Emotion_heat_V emotion_adv experiencer_np v = lin Clause {
			np = fromMaybe NP emptyNP experiencer_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv emotion_adv)
		} ;
		-- <Experiencer>[Han] [SJUDER] <Emotion>[av livslust]

		--
		-- Emotions_of_mental_activity
		--

		Emotions_of_mental_activity_V experiencer_np stimulus_adv v = lin Clause {
			np = fromMaybe NP emptyNP experiencer_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv stimulus_adv)
		} ;
		-- <Experiencer>[många som] [GLÄDJER SIG] <Stimulus>[åt andras olycka]

		--
		-- Employing
		--

		Employing_V2 employee_np employer_np v2 = lin Clause {
			np = fromMaybe NP emptyNP employer_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP employee_np)
		} ;
		-- <Employer>[Saab] [ANSTÄLLER] <Employee>[100 arbetare]

		Employing_V2_Pass employee_np employer_np v2 = lin Clause {
			np = fromMaybe NP emptyNP employee_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep (fromMaybe NP emptyNP employer_np))
		} ;
		-- <Employee>[Ledamöter och ersättare] [FÖRORDNAS] <Employer>[av regeringen]

		--
		-- Emptying
		--

		Emptying_V source_np theme_adv v = lin Clause {
			np = fromMaybe NP emptyNP source_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv theme_adv)
		} ;
		-- [RENSA] <Source>[hela Arboga] <Theme>[från knark]

		Emptying_V2_1 agent_np source_np theme_adv v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP source_np)) (fromMaybe Adv emptyAdv theme_adv)
		} ;
		-- <Agent>[Jag] [TÖMMER] <Source>[hårddisken] <Theme>[på bilder]

		Emptying_V2_2 cause_np source_np v2 = lin Clause {
			np = fromMaybe NP emptyNP cause_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP source_np)
		} ;
		-- <Cause>[Den moderna skogsmaskinen] hade på några timmar huggit ner , [KVISTAT AV] och lastat <Source>[timmret]

		Emptying_V2_Pass source_np theme_adv v2 = lin Clause {
			np = fromMaybe NP emptyNP source_np ;
			vp = mkVP (mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)) (fromMaybe Adv emptyAdv theme_adv)
		} ;
		-- <Source>[cykelbanan som] [GJORDES REN] <Theme>[från snö]

		--
		-- Encoding
		--

		Encoding_V manner_adv message_np v = lin Clause {
			np = fromMaybe NP emptyNP message_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv manner_adv)
		} ;
		-- [UTTRYCKA] <Message>[tanken] <Manner>[indirekt]

		Encoding_V2_Pass manner_adv message_np v2 = lin Clause {
			np = fromMaybe NP emptyNP message_np ;
			vp = mkVP (mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)) (fromMaybe Adv emptyAdv manner_adv)
		} ;
		-- [FORMULERAS] <Message>[idén om nationen] <Manner>[i allra högsta grad]

		--
		-- Encounter
		--

		Encounter_V2 party_1_np party_2_np v2 = lin Clause {
			np = fromMaybe NP emptyNP party_1_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP party_2_np)
		} ;
		-- <Party_1>[man] faktiskt [TRÄFFA PÅ] <Party_2>[flera människor samtidigt]

		--
		-- Endangering
		--

		Endangering_V2 agent_np valued_entity_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP valued_entity_np)
		} ;
		-- <Agent>[hon] [VEDERVÅGAR] <Valued_entity>[det liv hon bär under sitt hjärta]

		Endangering_V2_Pass valued_entity_np v2 = lin Clause {
			np = fromMaybe NP emptyNP valued_entity_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)
		} ;
		-- <Valued_entity>[de] kan [UTSÄTTAS FÖR FARA]

		--
		-- Enforcing
		--

		Enforcing_V2 agent_np rule_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP rule_np)
		} ;
		-- <Agent>[studentgrupper] [TVINGAT FRAM] <Rule>[regler som hindrar universiteten från att investera sina pensionspengar i företag som är verksamma i Sudan utan en strategi för hur man ska hantera Darfur]

		--
		-- Entering_of_plea
		--

		Entering_of_plea_V accused_np charges_adv plea_adv v = lin Clause {
			np = fromMaybe NP emptyNP accused_np ;
			vp = mkVP (mkVP (mkVP v) (fromMaybe Adv emptyAdv plea_adv)) (fromMaybe Adv emptyAdv charges_adv)
		} ;
		-- <Accused>[Han] [FÖRKLARADE SIG] <Plea>[oskyldig] <Charges>[till anklagelserna]

		--
		-- Escaping
		--

		Escaping_V escapee_np undesirable_location_adv v = lin Clause {
			np = fromMaybe NP emptyNP escapee_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv undesirable_location_adv)
		} ;
		-- <Escapee>[De] [RYMMER] <Undesirable_location>[från sjukhuset]

		--
		-- Estimating
		--

		Estimating_VS cognizer_np estimation_s vs = lin Clause {
			np = fromMaybe NP emptyNP cognizer_np ;
			vp = mkVP vs (fromMaybe S emptyS estimation_s)
		} ;
		-- <Cognizer>[Han] [HÖLL FÖR SANNOLIKT] <Estimation>[att huvudvärken i början orsakades av läkemedlet]

		Estimating_VS_Pass estimation_s vs = lin Clause {
			np = emptyNP ;
			vp = mkVP vs (fromMaybe S emptyS estimation_s)
		} ;
		-- [HÅLLAS FÖR SANNOLIKT] <Estimation>[att patienten verkligen fick information]

		--
		-- Evading
		--

		Evading_V evader_np pursuer_adv v = lin Clause {
			np = fromMaybe NP emptyNP evader_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv pursuer_adv)
		} ;
		-- <Evader>[Båda] lyckas [KOMMA UNDAN] <Pursuer>[från sin förföljare]

		Evading_V2 evader_np pursuer_np v2 = lin Clause {
			np = fromMaybe NP emptyNP evader_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP pursuer_np)
		} ;
		-- <Evader>[Han] [KOM UNDAN] <Pursuer>[överfallet]

		--
		-- Evaluative_comparison
		--

		Evaluative_comparison_V attribute_adv profiled_item_np standard_item_adv v = lin Clause {
			np = fromMaybe NP emptyNP profiled_item_np ;
			vp = mkVP (mkVP (mkVP v) (fromMaybe Adv emptyAdv attribute_adv)) (fromMaybe Adv emptyAdv standard_item_adv)
		} ;
		-- <Profiled_item>[ingen av svenskarna] kan [MÄTA SIG] <Attribute>[bilmässigt] <Standard_item>[med norrmannen]

		--
		-- Event
		--

		Event_V event_np place_adv time_adv v = lin Clause {
			np = fromMaybe NP emptyNP event_np ;
			vp = mkVP (mkVP (mkVP v) (fromMaybe Adv emptyAdv time_adv)) (fromMaybe Adv emptyAdv place_adv)
		} ;
		-- <Event>[Händelsen] [INTRÄFFADE] <Time>[1941] <Place>[utanför Marstrand]

		--
		-- Evidence
		--

		Evidence_V2 proposition_np support_np v2 = lin Clause {
			np = fromMaybe NP emptyNP support_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP proposition_np)
		} ;
		-- <Support>[studier som] [PÅVISAR] <Proposition>[ett samband mellan vistelse i simhallar som renar med klor och ökad andel luftvägsbesvär pga av kloraminer]

		Evidence_VQ proposition_qs support_np vq = lin Clause {
			np = fromMaybe NP emptyNP support_np ;
			vp = mkVP vq (fromMaybe QS emptyQS proposition_qs)
		} ;
		-- <Support>[Testerna] [VISAR] <Proposition>[hur mycket alkohol man dricker]

		Evidence_VS proposition_s support_np vs = lin Clause {
			np = fromMaybe NP emptyNP support_np ;
			vp = mkVP vs (fromMaybe S emptyS proposition_s)
		} ;
		-- <Support>[Statistiken] [VISAR] <Proposition>[att priserna står still just nu]

		--
		-- Evoking
		--

		Evoking_V2 cognizer_np phenomenon_adv stimulus_np v2 = lin Clause {
			np = fromMaybe NP emptyNP stimulus_np ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP cognizer_np)) (fromMaybe Adv emptyAdv phenomenon_adv)
		} ;
		-- <Stimulus>[en religiös staty] som ska [PÅMINNA] <Cognizer>[dem] <Phenomenon>[om deras döda förfäder]

		--
		-- Exchange
		--

		Exchange_V2 exchanger_1_np exchanger_2_adv themes_np v2 = lin Clause {
			np = fromMaybe NP emptyNP exchanger_1_np ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP themes_np)) (fromMaybe Adv emptyAdv exchanger_2_adv)
		} ;
		-- <Exchanger_1>[hon] varken gran eller smällkarameller och [BYTER] inte <Themes>[julklappar] <Exchanger_2>[med någon]

		Exchange_V2_Pass theme_1_np theme_2_adv v2 = lin Clause {
			np = fromMaybe NP emptyNP theme_1_np ;
			vp = mkVP (mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)) (fromMaybe Adv emptyAdv theme_2_adv)
		} ;
		-- <Theme_1>[ni] [UTVÄXLAS] <Theme_2>[mot femton svenskar som har hamnat i polsk fångenskap]

		--
		-- Exclude_member
		--

		Exclude_member_V2 authority_np member_np v2 = lin Clause {
			np = fromMaybe NP emptyNP authority_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP member_np)
		} ;
		-- <Authority>[holländska judar] [EXKOMMUNICERADE] <Member>[Spinoza]

		--
		-- Excreting
		--

		Excreting_V source_np v = lin Clause {
			np = fromMaybe NP emptyNP source_np ;
			vp = mkVP v
		} ;
		-- [FISA] , [SVETTAS] och [SNORA] blir <Source>[kroppen]

		Excreting_V2 excreta_np excreter_np v2 = lin Clause {
			np = fromMaybe NP emptyNP excreter_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP excreta_np)
		} ;
		-- <Excreter>[Han] [SPYDDE] <Excreta>[blod]

		--
		-- Execute_plan
		--

		Execute_plan_V2 agent_np plan_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP plan_np)
		} ;
		-- <Agent>[moderaterna] [IMPLEMENTERAR] <Plan>[den politik de egentligen tror på]

		--
		-- Execution
		--

		Execution_V2 executed_np executioner_np v2 = lin Clause {
			np = fromMaybe NP emptyNP executioner_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP executed_np)
		} ;
		-- <Executioner>[Ninjamannen] som reste land och rike runt och hotade att [DEKAPITERA] <Executed>[kronprinsessan]

		Execution_V2_Pass executed_np executioner_np v2 = lin Clause {
			np = fromMaybe NP emptyNP executed_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep (fromMaybe NP emptyNP executioner_np))
		} ;
		-- [HÄNGDES] <Executed>[en 16-årig utvecklingsstörd flicka] <Executioner>[av domaren själv]

		--
		-- Existence
		--

		Existence_V entity_np v = lin Clause {
			np = fromMaybe NP emptyNP entity_np ;
			vp = mkVP v
		} ;
		-- <Entity>[världen] [EXISTERAR]

		Existence_V2_Pass entity_np v2 = lin Clause {
			np = fromMaybe NP emptyNP entity_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)
		} ;
		-- <Entity>[Det Moderna Museet] [FINNS]

		--
		-- Expectation
		--

		Expectation_VQ cognizer_np phenomenon_qs vq = lin Clause {
			np = fromMaybe NP emptyNP cognizer_np ;
			vp = mkVP vq (fromMaybe QS emptyQS phenomenon_qs)
		} ;
		-- [ANADE] <Cognizer>[han] <Phenomenon>[vad han skulle ställa till med]

		Expectation_VS_Pass phenomenon_s vs = lin Clause {
			np = emptyNP ;
			vp = mkVP vs (fromMaybe S emptyS phenomenon_s)
		} ;
		-- [FÖRUTSES] <Phenomenon>[att medlemsstaterna skall vidta alla åtgärder som står till buds för att se till att lämplig hjälp ges till offrens anhöriga , och om möjligt tillämpa rambeslutets artikel 4 om bestämmelser för offren i brottmålsprocessen]

		--
		-- Expensiveness
		--

		Expensiveness_V asset_adv goods_np v = lin Clause {
			np = fromMaybe NP emptyNP goods_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv asset_adv)
		} ;
		-- <Goods>[aktien] [STÅR] <Asset>[i 472 kronor]

		--
		-- Experience_bodily_harm
		--

		Experience_bodily_harm_V2 body_part_np experiencer_np v2 = lin Clause {
			np = fromMaybe NP emptyNP experiencer_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP body_part_np)
		} ;
		-- <Experiencer>[Han] har [SKADAT] <Body_part>[handen]

		--
		-- Experiencer_focus
		--

		Experiencer_focus_V content_adv experiencer_np v = lin Clause {
			np = fromMaybe NP emptyNP experiencer_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv content_adv)
		} ;
		-- <Experiencer>[presidiets ledamöter] [AKTA SIG] <Content>[för att mästra fullmäktiges ledamöter]

		Experiencer_focus_V2 content_np experiencer_np v2 = lin Clause {
			np = fromMaybe NP emptyNP experiencer_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP content_np)
		} ;
		-- <Experiencer>[Jag] [ÄLSKAR] <Content>[komplimanger]

		--
		-- Experiencer_obj
		--

		Experiencer_obj_V experiencer_adv stimulus_np v = lin Clause {
			np = fromMaybe NP emptyNP stimulus_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv experiencer_adv)
		} ;
		-- <Stimulus>[idén] [SLAGIT AN] <Experiencer>[på mig]

		Experiencer_obj_V2 experiencer_np stimulus_np v2 = lin Clause {
			np = fromMaybe NP emptyNP stimulus_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP experiencer_np)
		} ;
		-- <Stimulus>[Pingisklubben] [STILLAR] <Experiencer>[vår nostalgiska längtan]

		Experiencer_obj_V2S experiencer_np stimulus_s v2s = lin Clause {
			np = emptyNP ;
			vp = mkVP v2s (fromMaybe NP emptyNP experiencer_np) (fromMaybe S emptyS stimulus_s)
		} ;
		-- [RETAR] <Experiencer>[honom] <Stimulus>[att han inte lyckats lokalisera tio nålar som getts ut av några klubbar i Göteborg]

		Experiencer_obj_V2_Pass experiencer_np stimulus_np v2 = lin Clause {
			np = fromMaybe NP emptyNP experiencer_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep (fromMaybe NP emptyNP stimulus_np))
		} ;
		-- <Experiencer>[Fantasin] [EGGAS] <Stimulus>[av medeltida dans , sång och musik]

		Experiencer_obj_VS_Pass experiencer_np stimulus_s vs = lin Clause {
			np = fromMaybe NP emptyNP experiencer_np ;
			vp = mkVP vs (fromMaybe S emptyS stimulus_s)
		} ;
		-- [FRAPPERADES] <Experiencer>[hon] av <Stimulus>[att frimärkena var mycket modernare och roligare]

		--
		-- Explaining_the_facts
		--

		Explaining_the_facts_VQ_1 fact_np question_qs vq = lin Clause {
			np = fromMaybe NP emptyNP fact_np ;
			vp = mkVP vq (fromMaybe QS emptyQS question_qs)
		} ;
		-- <Fact>[Resultaten] [FÖRKLARAR] <Question>[varför så få djurarter är asymmetriska]

		Explaining_the_facts_VQ_2 state_of_affairs_qs vq = lin Clause {
			np = emptyNP ;
			vp = mkVP vq (fromMaybe QS emptyQS state_of_affairs_qs)
		} ;
		-- [FÖRKLARA] <State_of_affairs>[hur jag och majoriteten i fullmäktige tänkte]

		--
		-- Exporting
		--

		Exporting_V2_Pass goods_np importing_area_adv v2 = lin Clause {
			np = fromMaybe NP emptyNP goods_np ;
			vp = mkVP (mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)) (fromMaybe Adv emptyAdv importing_area_adv)
		} ;
		-- <Goods>[Lingonets läromedel] [EXPORTERAS] <Importing_area>[till tiotals länder runtom i världen]

		--
		-- Expressing_publicly
		--

		Expressing_publicly_V2 communicator_np content_np v2 = lin Clause {
			np = fromMaybe NP emptyNP communicator_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP content_np)
		} ;
		-- <Communicator>[Han] har [KLÄTT I ORD] <Content>[det jag känner om dagens samhälle och vad som är fel i det]

		--
		-- Extradition
		--

		Extradition_V2 crime_jurisdiction_adv suspect_np v2 = lin Clause {
			np = emptyNP ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP suspect_np)) (fromMaybe Adv emptyAdv crime_jurisdiction_adv)
		} ;
		-- [UTLÄMNA] <Suspect>[honom] <Crime_jurisdiction>[till USA]

		--
		-- Fall_asleep
		--

		Fall_asleep_V sleeper_np v = lin Clause {
			np = fromMaybe NP emptyNP sleeper_np ;
			vp = mkVP v
		} ;
		-- <Sleeper>[de på pressläktaren som] [SLUMRADE TILL]

		--
		-- Familiarity
		--

		Familiarity_V2 cognizer_np entity_np v2 = lin Clause {
			np = fromMaybe NP emptyNP cognizer_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP entity_np)
		} ;
		-- <Cognizer>[Amerikanska musiker] brukar inte [KÄNNA TILL] <Entity>[europeiska musiker]

		--
		-- Feeling
		--

		Feeling_V emotional_state_adv experiencer_np v = lin Clause {
			np = fromMaybe NP emptyNP experiencer_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv emotional_state_adv)
		} ;
		-- <Experiencer>[man] [KÄNNER SIG] <Emotional_state>[trygg]

		Feeling_V2 emotion_np v2 = lin Clause {
			np = emptyNP ;
			vp = mkVP v2 (fromMaybe NP emptyNP emotion_np)
		} ;
		-- [UPPLEVA] <Emotion>[den känslan]

		--
		-- Feigning
		--

		Feigning_V2 agent_np state_of_affairs_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP state_of_affairs_np)
		} ;
		-- <Agent>[man] [SIMULERA] <State_of_affairs>[stor smärta]

		--
		-- Filling
		--

		Filling_V2_1 agent_np goal_np theme_adv v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP goal_np)) (fromMaybe Adv emptyAdv theme_adv)
		} ;
		-- <Agent>[Vi] [LASTAR] <Goal>[50 finska långtradare] <Theme>[med bananer]

		Filling_V2_2 goal_adv theme_np v2 = lin Clause {
			np = emptyNP ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP theme_np)) (fromMaybe Adv emptyAdv goal_adv)
		} ;
		-- [PROPPA] <Goal>[i dig] <Theme>[massor]

		Filling_V2_Pass goal_np theme_adv v2 = lin Clause {
			np = fromMaybe NP emptyNP goal_np ;
			vp = mkVP (mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)) (fromMaybe Adv emptyAdv theme_adv)
		} ;
		-- <Goal>[Reproduktionerna] ska sedan [MÅLAS ÖVER] <Theme>[med lasyr]

		--
		-- Finish_competition
		--

		Finish_competition_V2 competition_np competitor_np opponent_adv v2 = lin Clause {
			np = fromMaybe NP emptyNP competitor_np ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP competition_np)) (fromMaybe Adv emptyAdv opponent_adv)
		} ;
		-- <Competitor>[De] [VANN] <Competition>[bortamötet] <Opponent>[mot Polisen]

		--
		-- Finish_game
		--

		Finish_game_V player_np v = lin Clause {
			np = fromMaybe NP emptyNP player_np ;
			vp = mkVP v
		} ;
		-- <Player>[Syd] [VANN]

		--
		-- Firing
		--

		Firing_V2 employee_np employer_np v2 = lin Clause {
			np = fromMaybe NP emptyNP employer_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP employee_np)
		} ;
		-- <Employer>[hans statligt drivna företag , som] [SADE UPP] <Employee>[honom]

		Firing_V2_Pass employee_np v2 = lin Clause {
			np = fromMaybe NP emptyNP employee_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)
		} ;
		-- <Employee>[han] [SJUKPENSIONERADES]

		--
		-- Fleeing
		--

		Fleeing_V_1 goal_adv self_mover_np v = lin Clause {
			np = fromMaybe NP emptyNP self_mover_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv goal_adv)
		} ;
		-- <Self_mover>[Två ystra hästar från Lannäslunds skolor i Jakobstad] [SKENADE] <Goal>[mot en hägrande frihet]

		Fleeing_V_2 path_adv self_mover_np source_adv v = lin Clause {
			np = fromMaybe NP emptyNP self_mover_np ;
			vp = mkVP (mkVP (mkVP v) (fromMaybe Adv emptyAdv source_adv)) (fromMaybe Adv emptyAdv path_adv)
		} ;
		-- <Source>[Från Sarajevo] [FLYDDE] <Self_mover>[människor] <Path>[i tunnlar]

		--
		-- Fluidic_motion
		--

		Fluidic_motion_V_1 area_adv fluid_np v = lin Clause {
			np = fromMaybe NP emptyNP fluid_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv area_adv)
		} ;
		-- <Area>[I London] har <Fluid>[Themsen] [SVÄMMAT ÖVER]

		Fluidic_motion_V_2 fluid_np goal_adv path_adv source_adv v = lin Clause {
			np = fromMaybe NP emptyNP fluid_np ;
			vp = mkVP (mkVP (mkVP (mkVP v) (fromMaybe Adv emptyAdv source_adv)) (fromMaybe Adv emptyAdv path_adv)) (fromMaybe Adv emptyAdv goal_adv)
		} ;
		-- <Fluid>[Floden] [RINNER] <Source>[från sjön Ilmen] <Path>[norrut] <Goal>[till Europas största insjö Ladoga]

		--
		-- Forging
		--

		Forging_V2 agent_np forgery_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP forgery_np)
		} ;
		-- <Agent>[Sambon] [HADE FÖRFALSKAT] <Forgery>[hennes namnteckning]

		--
		-- Forgoing
		--

		Forgoing_V desirable_adv forgoer_np v = lin Clause {
			np = fromMaybe NP emptyNP forgoer_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv desirable_adv)
		} ;
		-- <Forgoer>[Jag] kommer att [AVSTÅ] <Desirable>[från att rösta]

		Forgoing_VV desirable_vp forgoer_np vv = lin Clause {
			np = fromMaybe NP emptyNP forgoer_np ;
			vp = mkVP vv (fromMaybe VP emptyVP desirable_vp)
		} ;
		-- <Forgoer>[Man] har slösat med tillgängliga resurser och [LÅTIT BLI] <Desirable>[att hjälpa fattiga länder]

		--
		-- Forming_relationships
		--

		Forming_relationships_V_1 partner_1_np partner_2_adv v = lin Clause {
			np = fromMaybe NP emptyNP partner_1_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv partner_2_adv)
		} ;
		-- <Partner_1>[Hon] [BRÖT] <Partner_2>[med pojkvännen]

		Forming_relationships_V_2 partners_np v = lin Clause {
			np = fromMaybe NP emptyNP partners_np ;
			vp = mkVP v
		} ;
		-- <Partners>[Paret] [GIFTE SIG]

		Forming_relationships_V2 partner_1_np partner_2_np v2 = lin Clause {
			np = fromMaybe NP emptyNP partner_1_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP partner_2_np)
		} ;
		-- <Partner_1>[Hon] [ÄKTADE] <Partner_2>[sin Simon]

		--
		-- Friction
		--

		Friction_V_1 static_object_adv theme_np v = lin Clause {
			np = fromMaybe NP emptyNP theme_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv static_object_adv)
		} ;
		-- <Theme>[Pickupnål som] [SKRAPAR] <Static_object>[mot vinyl]

		Friction_V_2 themes_np v = lin Clause {
			np = fromMaybe NP emptyNP themes_np ;
			vp = mkVP v
		} ;
		-- <Themes>[Skedarna] [SKRAPADE]

		--
		-- Front_for
		--

		Front_for_V front_np v = lin Clause {
			np = fromMaybe NP emptyNP front_np ;
			vp = mkVP v
		} ;
		-- <Front>[Ola Lie] tänderna men [HÖLL MASKEN]

		--
		-- Frugality
		--

		Frugality_V2 resource_np resource_controller_np v2 = lin Clause {
			np = fromMaybe NP emptyNP resource_controller_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP resource_np)
		} ;
		-- <Resource_controller>[man] chansen och [SLÖSADE BORT] <Resource>[skattebetalarnas pengar]

		--
		-- Gathering_up
		--

		Gathering_up_V2_1 agent_np aggregate_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP aggregate_np)
		} ;
		-- <Agent>[jag] ska försöka [DRA IHOP] <Aggregate>[ett gäng]

		Gathering_up_V2_2 agent_np individuals_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP individuals_np)
		} ;
		-- <Agent>[Orgelparty] [SAMLAR] <Individuals>[virtuoser och sångare]

		--
		-- Gesture
		--

		Gesture_V body_part_adv communicator_np v = lin Clause {
			np = fromMaybe NP emptyNP communicator_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv body_part_adv)
		} ;
		-- [VINKADE] <Communicator>[han] <Body_part>[med armarna]

		Gesture_V2 addressee_adv communicator_np message_np v2 = lin Clause {
			np = fromMaybe NP emptyNP communicator_np ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP message_np)) (fromMaybe Adv emptyAdv addressee_adv)
		} ;
		-- <Communicator>[jag] [VINKADE] <Message>[farväl] <Addressee>[till den missmodige sonen och kattlådan]

		Gesture_VS addressee_adv communicator_np message_s vs = lin Clause {
			np = fromMaybe NP emptyNP communicator_np ;
			vp = mkVP (mkVP vs (fromMaybe S emptyS message_s)) (fromMaybe Adv emptyAdv addressee_adv)
		} ;
		-- <Communicator>[Han] [VINKADE] <Addressee>[på sin gumma] <Message>[att hon skulle komma]

		Gesture_VV communicator_np message_vp vv = lin Clause {
			np = fromMaybe NP emptyNP communicator_np ;
			vp = mkVP vv (fromMaybe VP emptyVP message_vp)
		} ;
		-- <Communicator>[Anders Frisk] [VINKADE] <Message>[spela vidare]

		--
		-- Get_a_job
		--

		Get_a_job_V_1 employee_np employer_adv v = lin Clause {
			np = fromMaybe NP emptyNP employee_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv employer_adv)
		} ;
		-- <Employee>[jag] [TOG VÄRVNING] <Employer>[i flottans musikkår]

		Get_a_job_V_2 employee_np position_adv v = lin Clause {
			np = fromMaybe NP emptyNP employee_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv position_adv)
		} ;
		-- <Employee>[Cook] istället av i London och [MÖNSTRAR PÅ] <Position>[som enkel matros]

		--
		-- Getting
		--

		Getting_V2 recipient_np theme_np v2 = lin Clause {
			np = fromMaybe NP emptyNP recipient_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP theme_np)
		} ;
		-- <Recipient>[partiet] har [SÄKRAT] <Theme>[ett mandat]

		--
		-- Getting_underway
		--

		Getting_underway_V self_mover_np v = lin Clause {
			np = fromMaybe NP emptyNP self_mover_np ;
			vp = mkVP v
		} ;
		-- <Self_mover>[Pierre] [PALLRADE SIG]

		--
		-- Getting_up
		--

		Getting_up_V protagonist_np v = lin Clause {
			np = fromMaybe NP emptyNP protagonist_np ;
			vp = mkVP v
		} ;
		-- <Protagonist>[Hans fru] [STIGER UPP]

		--
		-- Getting_vehicle_underway
		--

		Getting_vehicle_underway_V2 driver_np vehicle_np v2 = lin Clause {
			np = fromMaybe NP emptyNP driver_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP vehicle_np)
		} ;
		-- <Driver>[Vi] [KÖRDE UT] <Vehicle>[båten]

		--
		-- Giving
		--

		Giving_V2 donor_np recipient_adv theme_np v2 = lin Clause {
			np = fromMaybe NP emptyNP donor_np ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP theme_np)) (fromMaybe Adv emptyAdv recipient_adv)
		} ;
		-- <Donor>[Hon] [GAV] <Theme>[pengar] <Recipient>[till folk som verkligen förtjänade pengarna !]

		--
		-- Giving_in
		--

		Giving_in_V capitulator_np issue_adv v = lin Clause {
			np = fromMaybe NP emptyNP capitulator_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv issue_adv)
		} ;
		-- <Capitulator>[man] inte [FALLA TILL FÖGA] <Issue>[för den här typen av pojkstreck eller vandalism]

		--
		-- Go_into_shape
		--

		Go_into_shape_V theme_np v = lin Clause {
			np = fromMaybe NP emptyNP theme_np ;
			vp = mkVP v
		} ;
		-- <Theme>[det] [VECKAR SIG]

		--
		-- Going_back_on_a_commitment
		--

		Going_back_on_a_commitment_V commitment_adv protagonist_np v = lin Clause {
			np = fromMaybe NP emptyNP protagonist_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv commitment_adv)
		} ;
		-- <Protagonist>[Regeringen] har inte [BACKAT] <Commitment>[från löften man gett tidigare]

		--
		-- Grant_permission
		--

		Grant_permission_V2 action_np grantor_np v2 = lin Clause {
			np = fromMaybe NP emptyNP grantor_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP action_np)
		} ;
		-- <Grantor>[en chef som] [TILLÅTER] <Action>[grundlagsbrott]

		--
		-- Grasp
		--

		Grasp_V2 cognizer_np phenomenon_np v2 = lin Clause {
			np = fromMaybe NP emptyNP cognizer_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP phenomenon_np)
		} ;
		-- <Cognizer>[De flesta] har [UPPFATTAT] <Phenomenon>[honom som Carl I Hagens kronprins]

		Grasp_VQ cognizer_np phenomenon_qs vq = lin Clause {
			np = fromMaybe NP emptyNP cognizer_np ;
			vp = mkVP vq (fromMaybe QS emptyQS phenomenon_qs)
		} ;
		-- <Cognizer>[De flesta föräldrar] [FÖRSTÅR] <Phenomenon>[hur situationen ser ut]

		--
		-- Grinding
		--

		Grinding_V undergoer_np v = lin Clause {
			np = fromMaybe NP emptyNP undergoer_np ;
			vp = mkVP v
		} ;
		-- [TUGGA] <Undergoer>[varje tugga]

		Grinding_V2 grinder_np undergoer_np v2 = lin Clause {
			np = fromMaybe NP emptyNP grinder_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP undergoer_np)
		} ;
		-- <Grinder>[Hon] [SMULAR SÖNDER] <Undergoer>[askan]

		--
		-- Grooming
		--

		Grooming_V body_part_np v = lin Clause {
			np = fromMaybe NP emptyNP body_part_np ;
			vp = mkVP v
		} ;
		-- <Body_part>[Tänderna] är [BORSTADE] och [TANDTRÅDADE]

		Grooming_V2_1 agent_np body_part_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP body_part_np)
		} ;
		-- [VAXADE] <Agent>[jag] <Body_part>[benen]

		Grooming_V2_2 agent_np patient_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP patient_np)
		} ;
		-- <Agent>[En bonde] [RAKAR] och [TVÄTTAR] <Patient>[sig]

		Grooming_V2_Pass body_part_np v2 = lin Clause {
			np = fromMaybe NP emptyNP body_part_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)
		} ;
		-- <Body_part>[Pung och penis] [TVAGAS]

		--
		-- Growing_food
		--

		Growing_food_V2 food_np grower_np v2 = lin Clause {
			np = fromMaybe NP emptyNP grower_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP food_np)
		} ;
		-- <Grower>[Norrmännen] [ODLAR] <Food>[lax]

		Growing_food_V2_Pass food_np v2 = lin Clause {
			np = fromMaybe NP emptyNP food_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)
		} ;
		-- <Food>[Den ekologiska bomullen] [ODLAS]

		--
		-- Hair_configuration
		--

		Hair_configuration_V hair_np v = lin Clause {
			np = fromMaybe NP emptyNP hair_np ;
			vp = mkVP v
		} ;
		-- <Hair>[Håret] [KNOLLRAR SIG]

		--
		-- Halt
		--

		Halt_V theme_np v = lin Clause {
			np = fromMaybe NP emptyNP theme_np ;
			vp = mkVP v
		} ;
		-- <Theme>[den enda som] [STANNAR UPP]

		--
		-- Have_as_requirement
		--

		Have_as_requirement_V2 dependent_np requirement_np v2 = lin Clause {
			np = fromMaybe NP emptyNP dependent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP requirement_np)
		} ;
		-- <Dependent>[Programmet] [KRÄVER] <Requirement>[ingen installation]

		--
		-- Have_as_translation_equivalent
		--

		Have_as_translation_equivalent_V source_symbol_np target_symbol_adv v = lin Clause {
			np = fromMaybe NP emptyNP source_symbol_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv target_symbol_adv)
		} ;
		-- <Source_symbol>[Kosher] är ett hebreiskt ord som [KAN ÖVERSÄTTAS] som <Target_symbol>[lämplig eller rätt]

		--
		-- Hear
		--

		Hear_V hearer_np topic_adv v = lin Clause {
			np = fromMaybe NP emptyNP hearer_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv topic_adv)
		} ;
		-- <Hearer>[Jag] orkar inte [HÖRA] <Topic>[på det]

		Hear_V2 hearer_np message_np v2 = lin Clause {
			np = fromMaybe NP emptyNP hearer_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP message_np)
		} ;
		-- [HÖR] <Hearer>[poliserna] <Message>[ett klonkande ljud bakom mannen]

		Hear_VS hearer_np message_s vs = lin Clause {
			np = fromMaybe NP emptyNP hearer_np ;
			vp = mkVP vs (fromMaybe S emptyS message_s)
		} ;
		-- <Hearer>[Jag] [HÖRDE] <Message>[att det var nåt strul med hustrun]

		--
		-- Heralding
		--

		Heralding_V2 communicator_np event_np v2 = lin Clause {
			np = fromMaybe NP emptyNP communicator_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP event_np)
		} ;
		-- <Communicator>[Efterträdaren Ben Ali] hade [PROKLAMERAT] <Event>[nya tider]

		--
		-- Hiding_objects
		--

		Hiding_objects_V2 agent_np hidden_object_np hiding_place_adv v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP hidden_object_np)) (fromMaybe Adv emptyAdv hiding_place_adv)
		} ;
		-- <Agent>[Max] [GÖMMER] <Hidden_object>[25 000 pund från en kupp i London] <Hiding_place>[i en ananasburk]

		--
		-- Hindering
		--

		Hindering_V2_1 action_adv hindrance_np protagonist_np v2 = lin Clause {
			np = fromMaybe NP emptyNP hindrance_np ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP protagonist_np)) (fromMaybe Adv emptyAdv action_adv)
		} ;
		-- <Hindrance>[Lördagens hällregn] [HINDRADE] inte <Protagonist>[besökarna] <Action>[på helgens auktion]

		Hindering_V2_2 action_np hindrance_np v2 = lin Clause {
			np = fromMaybe NP emptyNP hindrance_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP action_np)
		} ;
		-- <Hindrance>[det] [HÄMMAR] <Action>[utvecklingen]

		--
		-- Hiring
		--

		Hiring_V2 employee_np employer_np v2 = lin Clause {
			np = fromMaybe NP emptyNP employer_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP employee_np)
		} ;
		-- <Employer>[Utblottade fastighetsägare] [LEJDE] <Employee>[folk som brände ner deras hus]

		--
		-- Hit_target
		--

		Hit_target_V2 agent_np target_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP target_np)
		} ;
		-- <Agent>[en skicklig skytt som] [TRÄFFAR] mitt <Target>[nån som sitter i en bil som är i rörelse]

		--
		-- Holding_off_on
		--

		Holding_off_on_VV agent_np desirable_action_vp vv = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP vv (fromMaybe VP emptyVP desirable_action_vp)
		} ;
		-- <Agent>[Jag] kommer [VÄNTA MED] <Desirable_action>[att börja äte nyttigare]

		--
		-- Hostile_encounter
		--

		Hostile_encounter_V sides_np v = lin Clause {
			np = fromMaybe NP emptyNP sides_np ;
			vp = mkVP v
		} ;
		-- <Sides>[De båda] [RÖK SAMMAN]

		--
		-- Hunting
		--

		Hunting_V hunter_np v = lin Clause {
			np = fromMaybe NP emptyNP hunter_np ;
			vp = mkVP v
		} ;
		-- <Hunter>[Männen] [PILKADE]

		--
		-- Hunting_success_or_failure
		--

		Hunting_success_or_failure_V2 food_np v2 = lin Clause {
			np = emptyNP ;
			vp = mkVP v2 (fromMaybe NP emptyNP food_np)
		} ;
		-- [FÄLLA] <Food>[ett stort villebråd]

		--
		-- Imitating
		--

		Imitating_V2_1 agent_np characteristic_np standard_adv v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP characteristic_np)) (fromMaybe Adv emptyAdv standard_adv)
		} ;
		-- <Agent>[arter] kan [HÄRMA] <Characteristic>[mönstren] <Standard>[på de]

		Imitating_V2_2 agent_np standard_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP standard_np)
		} ;
		-- <Agent>[Vem som helst] kan inte heller [SPELA] <Standard>[psykopat]

		--
		-- Immobilization
		--

		Immobilization_V2 agent_np patient_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP patient_np)
		} ;
		-- <Agent>[han] vill [BURA IN] <Patient>[folk]

		--
		-- Impact
		--

		Impact_V_1 impactee_adv impactor_np v = lin Clause {
			np = fromMaybe NP emptyNP impactor_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv impactee_adv)
		} ;
		-- <Impactor>[En av granaterna] [LANDADE] <Impactee>[på bordet]

		Impact_V_2 impactee_np v = lin Clause {
			np = fromMaybe NP emptyNP impactee_np ;
			vp = mkVP v
		} ;
		-- <Impactee>[Korgen] [LANDADE]

		Impact_V_3 impactors_np v = lin Clause {
			np = fromMaybe NP emptyNP impactors_np ;
			vp = mkVP v
		} ;
		-- <Impactors>[Två personbilar] [KROCKADE]

		Impact_V2 impactee_np impactor_np v2 = lin Clause {
			np = fromMaybe NP emptyNP impactor_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP impactee_np)
		} ;
		-- <Impactor>[Kulan] [TRÄFFADE] <Impactee>[eleven]

		--
		-- Inclusion
		--

		Inclusion_V2 part_np total_np v2 = lin Clause {
			np = fromMaybe NP emptyNP total_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP part_np)
		} ;
		-- <Total>[Rollistan] [UPPTAR] <Part>[35 namn]

		--
		-- Indicating
		--

		Indicating_V2_1 communicator_np unresolved_referent_np v2 = lin Clause {
			np = fromMaybe NP emptyNP communicator_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP unresolved_referent_np)
		} ;
		-- <Communicator>[hon] inte [PEKA UT] <Unresolved_referent>[någon favoritchoklad]

		Indicating_V2_2 medium_np unresolved_referent_np v2 = lin Clause {
			np = fromMaybe NP emptyNP medium_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP unresolved_referent_np)
		} ;
		-- <Medium>[Guiden] [LISTAR] <Unresolved_referent>[museer]

		--
		-- Ingest_substance
		--

		Ingest_substance_V ingestor_np substance_adv v = lin Clause {
			np = fromMaybe NP emptyNP ingestor_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv substance_adv)
		} ;
		-- <Ingestor>[Polaren] [RÖKTE NER SIG] <Substance>[på billigt horse]

		Ingest_substance_V2_1 delivery_device_np ingestor_np v2 = lin Clause {
			np = fromMaybe NP emptyNP ingestor_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP delivery_device_np)
		} ;
		-- <Ingestor>[Han] [RÖKER] <Delivery_device>[cigaretter]

		Ingest_substance_V2_2 ingestor_np substance_np v2 = lin Clause {
			np = fromMaybe NP emptyNP ingestor_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP substance_np)
		} ;
		-- <Ingestor>[man] [TAR] <Substance>[GHB]

		Ingest_substance_V2_Pass substance_np v2 = lin Clause {
			np = fromMaybe NP emptyNP substance_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)
		} ;
		-- <Substance>[Kokain] [INTAS]

		--
		-- Ingestion
		--

		Ingestion_V_1 ingestibles_adv ingestor_np v = lin Clause {
			np = fromMaybe NP emptyNP ingestor_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv ingestibles_adv)
		} ;
		-- <Ingestor>[Jag] kan inte tänka att jag är särskilt sugen på att [SÄLLSKAPSÄTA] <Ingestibles>[av pajen]

		Ingestion_V_2 ingestibles_np v = lin Clause {
			np = fromMaybe NP emptyNP ingestibles_np ;
			vp = mkVP v
		} ;
		-- <Ingestibles>[man] [DRICKER]

		Ingestion_V2 ingestibles_np ingestor_np v2 = lin Clause {
			np = fromMaybe NP emptyNP ingestor_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP ingestibles_np)
		} ;
		-- <Ingestor>[jag] gå ned till Anna och Pernilla och måla påskägg och [SNASKA] <Ingestibles>[godis]

		Ingestion_V2_Pass ingestibles_np v2 = lin Clause {
			np = fromMaybe NP emptyNP ingestibles_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)
		} ;
		-- <Ingestibles>[vitlök] , liksom allt annat , [INTAS]

		--
		-- Inhibit_movement
		--

		Inhibit_movement_V holding_location_adv theme_np v = lin Clause {
			np = fromMaybe NP emptyNP theme_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv holding_location_adv)
		} ;
		-- <Theme>[De riktigt stora kryssningsfartygen med de riktigt stora plånböckerna ombord] förblir [FJÄTTRADE] <Holding_location>[vid Skandiahamnens kajer]

		Inhibit_movement_V2 agent_np theme_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP theme_np)
		} ;
		-- <Agent>[En väktare] [KVARHÅLLER] <Theme>[en man beväpnad med pepparspray]

		--
		-- Inspecting
		--

		Inspecting_V2 ground_np inspector_np v2 = lin Clause {
			np = fromMaybe NP emptyNP inspector_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP ground_np)
		} ;
		-- <Inspector>[brandkåren i Rjukan som] [TITTAR TILL] <Ground>[anläggningen]

		Inspecting_V2_Pass ground_np v2 = lin Clause {
			np = fromMaybe NP emptyNP ground_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)
		} ;
		-- <Ground>[Sprängstenar] [TITTAS TILL]

		--
		-- Installing
		--

		Installing_V2 agent_np component_np fixed_location_adv v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP component_np)) (fromMaybe Adv emptyAdv fixed_location_adv)
		} ;
		-- <Agent>[Företaget] [INSTALLERADE] <Component>[105 piratprogram] <Fixed_location>[i 45 datorer]

		--
		-- Institutionalization
		--

		Institutionalization_V2 authority_np patient_np v2 = lin Clause {
			np = fromMaybe NP emptyNP authority_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP patient_np)
		} ;
		-- <Authority>[Psykiatrin] medicinerar och [HOSPITALISERAR] <Patient>[människor]

		Institutionalization_V2_Pass patient_np v2 = lin Clause {
			np = fromMaybe NP emptyNP patient_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)
		} ;
		-- <Patient>[Patienterna] måste noga övervakas och ibland även [HOSPITALISERAS]

		--
		-- Intentional_traversing
		--

		Intentional_traversing_V path_adv self_mover_np v = lin Clause {
			np = fromMaybe NP emptyNP self_mover_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv path_adv)
		} ;
		-- <Self_mover>[hon] som vanligt [GENADE] <Path>[över en hundgård]

		Intentional_traversing_V2 path_np self_mover_np v2 = lin Clause {
			np = fromMaybe NP emptyNP self_mover_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP path_np)
		} ;
		-- <Self_mover>[Cezar Persson] på att [BESTIGA] <Path>[en röd rutschkana]

		--
		-- Intentionally_affect
		--

		Intentionally_affect_V agent_np patient_adv v = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv patient_adv)
		} ;
		-- <Agent>[Jag] fick [GÖRA] <Patient>[i detta projekt]

		--
		-- Intentionally_create
		--

		Intentionally_create_V2 created_entity_np creator_np v2 = lin Clause {
			np = fromMaybe NP emptyNP creator_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP created_entity_np)
		} ;
		-- [KREERAR] <Creator>[hon] <Created_entity>[sina praliner] och <Created_entity>[tryfflar]

		Intentionally_create_V2_Pass created_entity_np v2 = lin Clause {
			np = fromMaybe NP emptyNP created_entity_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)
		} ;
		-- <Created_entity>[släktförening] [BILDADES]

		--
		-- Intercepting
		--

		Intercepting_V2 interceptor_np theme_np v2 = lin Clause {
			np = fromMaybe NP emptyNP interceptor_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP theme_np)
		} ;
		-- <Interceptor>[Satelliter] [FÅNGAR UPP] <Theme>[samtal och e-post]

		Intercepting_V2_Pass interceptor_np theme_np v2 = lin Clause {
			np = fromMaybe NP emptyNP theme_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep (fromMaybe NP emptyNP interceptor_np))
		} ;
		-- <Theme>[de] [SNAPPAS UPP] <Interceptor>[av den kejserliga censuren]

		--
		-- Interrupt_process
		--

		Interrupt_process_V2_Pass cause_np process_np v2 = lin Clause {
			np = fromMaybe NP emptyNP process_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep (fromMaybe NP emptyNP cause_np))
		} ;
		-- <Process>[Deras möte] [AVBRYTS] <Cause>[av Tommys entré]

		--
		-- Invading
		--

		Invading_V land_np v = lin Clause {
			np = fromMaybe NP emptyNP land_np ;
			vp = mkVP v
		} ;
		-- <Land>[de] [INVADERADE]

		Invading_V2 invader_np land_np v2 = lin Clause {
			np = fromMaybe NP emptyNP invader_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP land_np)
		} ;
		-- <Invader>[Irak] [INVADERADE] <Land>[Kuwait]

		--
		-- Judgment
		--

		Judgment_V2 cognizer_np evaluee_np reason_adv v2 = lin Clause {
			np = fromMaybe NP emptyNP cognizer_np ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP evaluee_np)) (fromMaybe Adv emptyAdv reason_adv)
		} ;
		-- <Cognizer>[Jag] kan [BEUNDRA] <Evaluee>[dem] <Reason>[för deras mod]

		--
		-- Judgment_communication
		--

		Judgment_communication_V communicator_np evaluee_adv v = lin Clause {
			np = fromMaybe NP emptyNP communicator_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv evaluee_adv)
		} ;
		-- <Communicator>[Så gott som alla partidistrikt] [TAR AVSTÅND] <Evaluee>[från partiledningens beslut]

		Judgment_communication_V2 communicator_np evaluee_np reason_adv v2 = lin Clause {
			np = fromMaybe NP emptyNP communicator_np ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP evaluee_np)) (fromMaybe Adv emptyAdv reason_adv)
		} ;
		-- <Communicator>[De båda] [ANKLAGAR] återigen <Evaluee>[regeringen] <Reason>[för passivitet]

		--
		-- Judgment_direct_address
		--

		Judgment_direct_address_V2 addressee_np communicator_np reason_adv v2 = lin Clause {
			np = fromMaybe NP emptyNP communicator_np ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP addressee_np)) (fromMaybe Adv emptyAdv reason_adv)
		} ;
		-- <Communicator>[jag] [KOMPLIMENTERA] <Addressee>[föredraganden] <Reason>[till hans korta och tydliga förklaring]

		Judgment_direct_address_V2_Pass_1 addressee_np communicator_np v2 = lin Clause {
			np = fromMaybe NP emptyNP addressee_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep (fromMaybe NP emptyNP communicator_np))
		} ;
		-- <Addressee>[de inblandade] [TALAS TILL RÄTTA] <Communicator>[av polisen]

		Judgment_direct_address_V2_Pass_2 addressee_np reason_adv v2 = lin Clause {
			np = fromMaybe NP emptyNP addressee_np ;
			vp = mkVP (mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)) (fromMaybe Adv emptyAdv reason_adv)
		} ;
		-- <Addressee>[Detta parlament] [FÖREBRÅS] <Reason>[för att inte alltid vara så ansvarsfullt]

		Judgment_direct_address_V2_Pass_3 addressee_np topic_adv v2 = lin Clause {
			np = fromMaybe NP emptyNP addressee_np ;
			vp = mkVP (mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)) (fromMaybe Adv emptyAdv topic_adv)
		} ;
		-- <Addressee>[Detta parlament] [FÖREBRÅS] <Topic>[ofta]

		--
		-- Justifying
		--

		Justifying_V2_1 act_np agent_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP act_np)
		} ;
		-- <Agent>[Jag] [RÄTTFÄRDIGAR] <Act>[publiceringen]

		Justifying_V2_2 agent_np state_of_affairs_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP state_of_affairs_np)
		} ;
		-- <Agent>[jag] [FÖRSVARAT] <State_of_affairs>[damhockeyns rätt att vara med på programmet]

		--
		-- Kidnapping
		--

		Kidnapping_V2 perpetrator_np victim_np v2 = lin Clause {
			np = fromMaybe NP emptyNP perpetrator_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP victim_np)
		} ;
		-- [KIDNAPPAR] <Perpetrator>[han] <Victim>[ett barn]

		--
		-- Killing
		--

		Killing_V2_1 cause_np victim_np v2 = lin Clause {
			np = fromMaybe NP emptyNP cause_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP victim_np)
		} ;
		-- <Cause>[Flodvågor orsakade av skalvet] [DRÄNKTE] <Victim>[många människor]

		Killing_V2_2 killer_np victim_np v2 = lin Clause {
			np = fromMaybe NP emptyNP killer_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP victim_np)
		} ;
		-- <Killer>[En tjänare] och [SLOG IHJÄL] <Victim>[honom]

		--
		-- Knot_creation
		--

		Knot_creation_V2 agent_np knot_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP knot_np)
		} ;
		-- <Agent>[Jag] [KNYTER] <Knot>[en knut]

		--
		-- Labeling
		--

		Labeling_V2 entity_np label_adv speaker_np v2 = lin Clause {
			np = fromMaybe NP emptyNP speaker_np ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP entity_np)) (fromMaybe Adv emptyAdv label_adv)
		} ;
		-- <Speaker>[Man] kan inte ens [KALLA] <Entity>[bryggan] <Label>[för modern konst]

		Labeling_V2_Pass entity_np label_adv speaker_np v2 = lin Clause {
			np = fromMaybe NP emptyNP entity_np ;
			vp = mkVP (mkVP (passiveVP v2) (mkAdv by8agent_Prep (fromMaybe NP emptyNP speaker_np))) (fromMaybe Adv emptyAdv label_adv)
		} ;
		-- <Entity>[Hela denna region] [KALLADES] faktiskt <Label>[för en reformens båglinje] <Speaker>[av president Bush]

		--
		-- Launch_process
		--

		Launch_process_V2 agent_np process_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP process_np)
		} ;
		-- <Agent>[Vi] räknar med att [SJÖSÄTTA] <Process>[projektet]

		Launch_process_V2_Pass process_np v2 = lin Clause {
			np = fromMaybe NP emptyNP process_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)
		} ;
		-- [SJÖSATTES] ett <Process>[försök]

		--
		-- Leadership
		--

		Leadership_V2_1 activity_np leader_np v2 = lin Clause {
			np = fromMaybe NP emptyNP leader_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP activity_np)
		} ;
		-- <Leader>[Jag] skall [LEDA] <Activity>[arbetet med en förstudie som sedan skall ge ett permanent avtal om samarbete]

		Leadership_V2_2 governed_np leader_np v2 = lin Clause {
			np = fromMaybe NP emptyNP leader_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP governed_np)
		} ;
		-- <Leader>[Tage Erlander] [REGERADE] <Governed>[Sverige]

		Leadership_V2_Pass governed_np leader_np v2 = lin Clause {
			np = fromMaybe NP emptyNP governed_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep (fromMaybe NP emptyNP leader_np))
		} ;
		-- <Governed>[Marocko] [STYRS] <Leader>[av kung Hassan II]

		--
		-- Linguistic_meaning
		--

		Linguistic_meaning_V2 form_np meaning_np v2 = lin Clause {
			np = fromMaybe NP emptyNP form_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP meaning_np)
		} ;
		-- <Form>[Ordet kommunikation] kommer <Form>[communicatio] , som [BETYDER] <Meaning>[ömsesidigt utbyte] eller <Meaning>[överföring av information]

		--
		-- Lively_place
		--

		Lively_place_V activity_adv location_np v = lin Clause {
			np = fromMaybe NP emptyNP location_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv activity_adv)
		} ;
		-- <Location>[London] [KRYLLAR] <Activity>[av mysiga caféer och tesalonger]

		--
		-- Locating
		--

		Locating_V2 perceiver_np sought_entity_np v2 = lin Clause {
			np = fromMaybe NP emptyNP perceiver_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP sought_entity_np)
		} ;
		-- [HITTAR] <Perceiver>[jag] visst inte <Sought_entity>[korkskruven]

		--
		-- Location_of_light
		--

		Location_of_light_V figure_np ground_adv v = lin Clause {
			np = fromMaybe NP emptyNP figure_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv ground_adv)
		} ;
		-- <Figure>[De suddiga ' nebulosor ' som] [LYSER] <Ground>[på himlen]

		--
		-- Locative_relation
		--

		Locative_relation_V2 figure_np ground_np v2 = lin Clause {
			np = fromMaybe NP emptyNP figure_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP ground_np)
		} ;
		-- <Figure>[Kolhydrater] [OMGER] <Ground>[varje hårstrå]

		--
		-- Losing
		--

		Losing_V2 owner_np possession_np v2 = lin Clause {
			np = fromMaybe NP emptyNP owner_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP possession_np)
		} ;
		-- <Owner>[jag] [TAPPADE BORT] <Possession>[all min mail]

		--
		-- Losing_someone
		--

		Losing_someone_V2 deceased_np sufferer_np v2 = lin Clause {
			np = fromMaybe NP emptyNP sufferer_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP deceased_np)
		} ;
		-- <Sufferer>[Hans] [MISTE] <Deceased>[sin bäste vän]

		--
		-- Make_agreement_on_action
		--

		Make_agreement_on_action_V party_1_np party_2_adv v = lin Clause {
			np = fromMaybe NP emptyNP party_1_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv party_2_adv)
		} ;
		-- <Party_1>[Han] lyckades också [SLUTA FRED] <Party_2>[med en del mindre rebellrörelser]

		--
		-- Make_cognitive_connection
		--

		Make_cognitive_connection_V2 cognizer_np concept_1_np concept_2_adv v2 = lin Clause {
			np = fromMaybe NP emptyNP cognizer_np ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP concept_1_np)) (fromMaybe Adv emptyAdv concept_2_adv)
		} ;
		-- <Cognizer>[Jag] skulle aldrig [SAMMANKOPPLA] <Concept_1>[honom] <Concept_2>[med grov kriminalitet]

		--
		-- Make_noise
		--

		Make_noise_V noisy_event_np v = lin Clause {
			np = fromMaybe NP emptyNP noisy_event_np ;
			vp = mkVP v
		} ;
		-- <Noisy_event>[Höstens remissdebatt 1967] [MALDE PÅ]

		Make_noise_V2 sound_np sound_source_np v2 = lin Clause {
			np = fromMaybe NP emptyNP sound_source_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP sound_np)
		} ;
		-- <Sound_source>[Tåget] [SÄGER] <Sound>[tut]

		--
		-- Make_possible_to_do
		--

		Make_possible_to_do_V2 enabled_action_np enablement_np v2 = lin Clause {
			np = fromMaybe NP emptyNP enablement_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP enabled_action_np)
		} ;
		-- <Enablement>[Jobbtiderna] [TILLÅTER] ju <Enabled_action>[utgång på lördag]

		Make_possible_to_do_VS enabled_action_s enablement_np vs = lin Clause {
			np = fromMaybe NP emptyNP enablement_np ;
			vp = mkVP vs (fromMaybe S emptyS enabled_action_s)
		} ;
		-- <Enablement>[Vädret] [TILLÄT] inte <Enabled_action>[att vi satt ute]

		--
		-- Making_faces
		--

		Making_faces_V agent_np v = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v
		} ;
		-- <Agent>[Jag] [HÅNLOG]

		--
		-- Manipulate_into_doing
		--

		Manipulate_into_doing_V2_Pass resulting_action_adv victim_np v2 = lin Clause {
			np = fromMaybe NP emptyNP victim_np ;
			vp = mkVP (mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)) (fromMaybe Adv emptyAdv resulting_action_adv)
		} ;
		-- <Victim>[Sara Svensson] hade [MANIPULERATS] <Resulting_action>[till att vilja göra sitt bästa för auktoriteter]

		--
		-- Manipulate_into_shape
		--

		Manipulate_into_shape_V2 agent_np theme_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP theme_np)
		} ;
		-- <Agent>[jag] försökte mig på att [MODELLERA] <Theme>[nyckelpigor]

		--
		-- Manipulation
		--

		Manipulation_V agent_np bodypart_of_agent_adv entity_adv v = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP (mkVP (mkVP v) (fromMaybe Adv emptyAdv entity_adv)) (fromMaybe Adv emptyAdv bodypart_of_agent_adv)
		} ;
		-- <Agent>[han] sig mot mig och [NUDDADE] <Entity>[vid mitt öra] <Bodypart_of_agent>[med läpparna]

		Manipulation_V2 agent_np bodypart_of_agent_adv entity_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP entity_np)) (fromMaybe Adv emptyAdv bodypart_of_agent_adv)
		} ;
		-- <Agent>[Hon] [HÖLL] <Entity>[luren] <Bodypart_of_agent>[i handen]

		Manipulation_V2_Pass entity_np v2 = lin Clause {
			np = fromMaybe NP emptyNP entity_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)
		} ;
		-- <Entity>[Han] [TOPSADES]

		--
		-- Manufacturing
		--

		Manufacturing_V2 factory_np product_np v2 = lin Clause {
			np = fromMaybe NP emptyNP factory_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP product_np)
		} ;
		-- <Factory>[Läkemedelsfabriker] [FRAMSTÄLLER] <Product>[t ex insulin och mänskligt tillväxthormon]

		--
		-- Mass_motion
		--

		Mass_motion_V_1 area_adv mass_theme_np v = lin Clause {
			np = fromMaybe NP emptyNP mass_theme_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv area_adv)
		} ;
		-- <Mass_theme>[Tjänstemän från Internationella valutafonden IMF] anlände till landet och [SPRED UT SIG] <Area>[över huvudstaden]

		Mass_motion_V_2 direction_adv mass_theme_np v = lin Clause {
			np = fromMaybe NP emptyNP mass_theme_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv direction_adv)
		} ;
		-- <Mass_theme>[En del folk] börjar [TRÄNGA SIG] <Direction>[mot dörrarna]

		Mass_motion_V_3 goal_adv mass_theme_np v = lin Clause {
			np = fromMaybe NP emptyNP mass_theme_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv goal_adv)
		} ;
		-- [STRÖMMAT] <Goal>[hit] <Mass_theme>[folk]

		Mass_motion_V_4 mass_theme_np path_adv v = lin Clause {
			np = fromMaybe NP emptyNP mass_theme_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv path_adv)
		} ;
		-- <Mass_theme>[de] [VÄLLER IN] <Path>[över gränserna]

		Mass_motion_V_5 mass_theme_np source_adv v = lin Clause {
			np = fromMaybe NP emptyNP mass_theme_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv source_adv)
		} ;
		-- <Mass_theme>[Ett moln av saltsyra] [VÄLLDE UPP] <Source>[från kemijätten Sandoz anläggning]

		--
		-- Meet_specifications
		--

		Meet_specifications_V2_1 agent_np standard_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP standard_np)
		} ;
		-- <Agent>[Han] väntar på det rätta tillfället att [UTFÖRA] <Standard>[sin plikt]

		Meet_specifications_V2_2 entity_np standard_np v2 = lin Clause {
			np = fromMaybe NP emptyNP entity_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP standard_np)
		} ;
		-- <Entity>[Varannan bilbarnstol] [HÅLLER] <Standard>[måttet]

		--
		-- Meet_with
		--

		Meet_with_V2 party_1_np party_2_np v2 = lin Clause {
			np = fromMaybe NP emptyNP party_1_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP party_2_np)
		} ;
		-- <Party_1>[jag] [TRÄFFA] <Party_2>[Linnéa]

		--
		-- Meet_with_response
		--

		Meet_with_response_V2_Pass response_adv trigger_np v2 = lin Clause {
			np = fromMaybe NP emptyNP trigger_np ;
			vp = mkVP (mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)) (fromMaybe Adv emptyAdv response_adv)
		} ;
		-- <Trigger>[Olika förslag och idéer] [MOTTAGES] <Response>[med tacksamhet]

		--
		-- Memorization
		--

		Memorization_V2 cognizer_np pattern_np v2 = lin Clause {
			np = fromMaybe NP emptyNP cognizer_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP pattern_np)
		} ;
		-- <Pattern>[kartor som] <Cognizer>[han] [LÄR SIG]

		--
		-- Memory
		--

		Memory_V2 cognizer_np content_np v2 = lin Clause {
			np = fromMaybe NP emptyNP cognizer_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP content_np)
		} ;
		-- <Cognizer>[folk] kan [KOMMA IHÅG] <Content>[ett namn som Schwarzenegger]

		Memory_VS cognizer_np content_s vs = lin Clause {
			np = fromMaybe NP emptyNP cognizer_np ;
			vp = mkVP vs (fromMaybe S emptyS content_s)
		} ;
		-- <Cognizer>[Vi] måste [HÅLLA I MINNET] <Content>[att regionen är heterogen]

		--
		-- Mention
		--

		Mention_V2 communicator_np specified_content_np v2 = lin Clause {
			np = fromMaybe NP emptyNP communicator_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP specified_content_np)
		} ;
		-- <Communicator>[Ingen av dem] [NÄMNER] <Specified_content>[Brännkyrka]

		Mention_VS communicator_np message_s vs = lin Clause {
			np = fromMaybe NP emptyNP communicator_np ;
			vp = mkVP vs (fromMaybe S emptyS message_s)
		} ;
		-- <Communicator>[jag] [NÄMNDE] <Message>[att jag skulle få ett nytt rum]

		Mention_V2_Pass specified_content_np v2 = lin Clause {
			np = fromMaybe NP emptyNP specified_content_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)
		} ;
		-- [NÄMNS] <Specified_content>[siffror på 3000 miljarder dollar]

		--
		-- Misdeed
		--

		Misdeed_V wrongdoer_np v = lin Clause {
			np = fromMaybe NP emptyNP wrongdoer_np ;
			vp = mkVP v
		} ;
		-- <Wrongdoer>[Den som sover] [SYNDAR]

		--
		-- Motion
		--

		Motion_V_1 direction_adv theme_np v = lin Clause {
			np = fromMaybe NP emptyNP theme_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv direction_adv)
		} ;
		-- <Theme>[Oljan] [DRIVER BORT] <Direction>[från Sverige]

		Motion_V_2 goal_adv source_adv theme_np v = lin Clause {
			np = fromMaybe NP emptyNP theme_np ;
			vp = mkVP (mkVP (mkVP v) (fromMaybe Adv emptyAdv source_adv)) (fromMaybe Adv emptyAdv goal_adv)
		} ;
		-- <Theme>[E 4:an] [LEDDE] <Source>[från Lissabon] <Goal>[till Helsingfors]

		Motion_V_3 path_adv theme_np v = lin Clause {
			np = fromMaybe NP emptyNP theme_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv path_adv)
		} ;
		-- <Theme>[Aubrey Dane] [GICK] <Path>[runt skrivbordet]

		--
		-- Motion_directional
		--

		Motion_directional_V_1 goal_adv theme_np v = lin Clause {
			np = fromMaybe NP emptyNP theme_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv goal_adv)
		} ;
		-- <Theme>[En person] ska ha [TRILLAT] <Goal>[i vattnet]

		Motion_directional_V_2 path_adv theme_np v = lin Clause {
			np = fromMaybe NP emptyNP theme_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv path_adv)
		} ;
		-- <Theme>[Röken] [STEG UPP] <Path>[mellan stenarna]

		Motion_directional_V_3 source_adv theme_np v = lin Clause {
			np = fromMaybe NP emptyNP theme_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv source_adv)
		} ;
		-- <Theme>[De två klättrarna] [STÖRTADE] <Source>[från en isvägg på Kebnekaise]

		--
		-- Motion_noise
		--

		Motion_noise_V path_adv theme_np v = lin Clause {
			np = fromMaybe NP emptyNP theme_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv path_adv)
		} ;
		-- <Theme>[Tåg efter tåg] [SVISCHADE] <Path>[förbi]

		Motion_noise_V2 path_np theme_np v2 = lin Clause {
			np = fromMaybe NP emptyNP theme_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP path_np)
		} ;
		-- <Theme>[Den tunga bilen] [SLAMRADE] <Path>[lång väg]

		--
		-- Moving_in_place
		--

		Moving_in_place_V theme_np v = lin Clause {
			np = fromMaybe NP emptyNP theme_np ;
			vp = mkVP v
		} ;
		-- <Theme>[hon] [VÄNDE SIG]

		--
		-- Name_conferral
		--

		Name_conferral_V2 entity_np speaker_np v2 = lin Clause {
			np = fromMaybe NP emptyNP speaker_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP entity_np)
		} ;
		-- <Entity>[ett grovt saftigt bröd som] <Speaker>[jag] [DÖPER]

		Name_conferral_V2_Pass entity_np name_adv speaker_np v2 = lin Clause {
			np = fromMaybe NP emptyNP entity_np ;
			vp = mkVP (mkVP (passiveVP v2) (mkAdv by8agent_Prep (fromMaybe NP emptyNP speaker_np))) (fromMaybe Adv emptyAdv name_adv)
		} ;
		-- <Entity>[Webbens upphovsman riddare Tim Berners-Lee] [DUBBADES] <Name>[till riddare] <Speaker>[av drottning Elizabeth II]

		--
		-- Needing
		--

		Needing_V2 cognizer_np requirement_np v2 = lin Clause {
			np = fromMaybe NP emptyNP cognizer_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP requirement_np)
		} ;
		-- <Cognizer>[Barn] [BEHÖVER] <Requirement>[fett]

		Needing_V2_Pass requirement_np v2 = lin Clause {
			np = fromMaybe NP emptyNP requirement_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)
		} ;
		-- <Requirement>[Det] [BEHÖVS]

		--
		-- Notification_of_charges
		--

		Notification_of_charges_V2 accused_np arraign_authority_np charges_adv v2 = lin Clause {
			np = fromMaybe NP emptyNP arraign_authority_np ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP accused_np)) (fromMaybe Adv emptyAdv charges_adv)
		} ;
		-- <Arraign_authority>[polisen] [ANMÄLDE] <Accused>[mannen] <Charges>[för framkallande av fara för annan]

		Notification_of_charges_V2_Pass accused_np charges_adv v2 = lin Clause {
			np = fromMaybe NP emptyNP accused_np ;
			vp = mkVP (mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)) (fromMaybe Adv emptyAdv charges_adv)
		} ;
		-- <Accused>[en man] [ÅTALATS] <Charges>[för innehav av barnporr]

		--
		-- Nuclear_process
		--

		Nuclear_process_V element_np v = lin Clause {
			np = fromMaybe NP emptyNP element_np ;
			vp = mkVP v
		} ;
		-- <Element>[en atom] [SÖNDERFALLER]

		Nuclear_process_V2_Pass element_np v2 = lin Clause {
			np = fromMaybe NP emptyNP element_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)
		} ;
		-- <Element>[atomkärnor] [SMÄLTAS SAMMAN]

		--
		-- Obviousness
		--

		Obviousness_V phenomenon_np v = lin Clause {
			np = fromMaybe NP emptyNP phenomenon_np ;
			vp = mkVP v
		} ;
		-- <Phenomenon>[Solen] [VISAR SIG]

		--
		-- Occupy_rank
		--

		Occupy_rank_V item_np v = lin Clause {
			np = fromMaybe NP emptyNP item_np ;
			vp = mkVP v
		} ;
		-- <Item>[Volvo] [TOPPAR]

		--
		-- Offering
		--

		Offering_V2 offerer_np theme_np v2 = lin Clause {
			np = fromMaybe NP emptyNP offerer_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP theme_np)
		} ;
		-- <Offerer>[Vi] kan [ERBJUDA] <Theme>[svensk service]

		--
		-- Omen
		--

		Omen_V outcome_adv phenomenon_1_np v = lin Clause {
			np = fromMaybe NP emptyNP phenomenon_1_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv outcome_adv)
		} ;
		-- <Phenomenon_1>[det] [BÅDAR] <Outcome>[gott]

		Omen_V2 phenomenon_1_np phenomenon_2_np v2 = lin Clause {
			np = fromMaybe NP emptyNP phenomenon_1_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP phenomenon_2_np)
		} ;
		-- <Phenomenon_1>[Galluparna] [FÖRUTSPÅR] <Phenomenon_2>[valframgång]

		--
		-- Operate_vehicle
		--

		Operate_vehicle_V_1 area_adv driver_np v = lin Clause {
			np = fromMaybe NP emptyNP driver_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv area_adv)
		} ;
		-- [CYKLADE] <Driver>[en 69-årig man] <Area>[på en grusväg]

		Operate_vehicle_V_2 driver_np goal_adv path_adv source_adv v = lin Clause {
			np = fromMaybe NP emptyNP driver_np ;
			vp = mkVP (mkVP (mkVP (mkVP v) (fromMaybe Adv emptyAdv source_adv)) (fromMaybe Adv emptyAdv goal_adv)) (fromMaybe Adv emptyAdv path_adv)
		} ;
		-- <Driver>[Min ena bror] [CYKLADE] <Source>[från Trollhättan] <Goal>[till Norge] , <Path>[upp på ett fjäll och tillbaka]

		--
		-- Operating_a_system
		--

		Operating_a_system_V2 operator_np system_np v2 = lin Clause {
			np = fromMaybe NP emptyNP operator_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP system_np)
		} ;
		-- <Operator>[Företaget] utvecklar och [OPERERAR] <System>[system för distribution och administration av digitalt innehåll via bredband]

		--
		-- Operational_testing
		--

		Operational_testing_V2 product_np tester_np v2 = lin Clause {
			np = fromMaybe NP emptyNP tester_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP product_np)
		} ;
		-- <Tester>[4 500 testpiloter] att [PRÖVA] <Product>[NTT Docomos 3G-nät]

		--
		-- Opinion
		--

		Opinion_VS cognizer_np opinion_s vs = lin Clause {
			np = fromMaybe NP emptyNP cognizer_np ;
			vp = mkVP vs (fromMaybe S emptyS opinion_s)
		} ;
		-- <Cognizer>[Hon] [TYCKER] <Opinion>[att jag shoppar för mycket]

		--
		-- Origin
		--

		Origin_V entity_np origin_adv v = lin Clause {
			np = fromMaybe NP emptyNP entity_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv origin_adv)
		} ;
		-- <Entity>[Ångesten] [EMANERAR] <Origin>[från en förgiftad kropp och ett trassligt psyke]

		--
		-- Others_situation_as_stimulus
		--

		Others_situation_as_stimulus_V_1 experiencer_np other_adv v = lin Clause {
			np = fromMaybe NP emptyNP experiencer_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv other_adv)
		} ;
		-- <Experiencer>[Jag] [TYCKTE SYND] <Other>[om honom]

		Others_situation_as_stimulus_V_2 experiencer_np situation_adv v = lin Clause {
			np = fromMaybe NP emptyNP experiencer_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv situation_adv)
		} ;
		-- <Experiencer>[Socialdemokraterna] ställde gärna upp och [SYMPATISERADE] <Situation>[med kraven på positiv särbehandling]

		Others_situation_as_stimulus_V2 experiencer_np other_np v2 = lin Clause {
			np = fromMaybe NP emptyNP experiencer_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP other_np)
		} ;
		-- <Experiencer>[man] blir glad av deras framgångar och [KÄNNER MED] <Other>[dem]

		--
		-- Pardon
		--

		Pardon_V2 authority_np offender_np v2 = lin Clause {
			np = fromMaybe NP emptyNP authority_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP offender_np)
		} ;
		-- <Authority>[presidenten] ska [BENÅDA] <Offender>[en kalkon]

		Pardon_V2_Pass authority_np offender_np v2 = lin Clause {
			np = fromMaybe NP emptyNP offender_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep (fromMaybe NP emptyNP authority_np))
		} ;
		-- [BENÅDADES] <Offender>[han] <Authority>[av kungen]

		--
		-- Partiality
		--

		Partiality_V2 side_1_np v2 = lin Clause {
			np = emptyNP ;
			vp = mkVP v2 (fromMaybe NP emptyNP side_1_np)
		} ;
		-- [GYNNA] <Side_1>[den egna produktionen]

		--
		-- Participation
		--

		Participation_V participant_1_np v = lin Clause {
			np = fromMaybe NP emptyNP participant_1_np ;
			vp = mkVP v
		} ;
		-- <Participant_1>[Thomas] [RÖRDE SIG]

		--
		-- Path_shape
		--

		Path_shape_V_1 direction_adv road_np v = lin Clause {
			np = fromMaybe NP emptyNP road_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv direction_adv)
		} ;
		-- <Road>[Avfarten] [SVÄNGER] <Direction>[upp]

		Path_shape_V_2 goal_adv road_np source_adv v = lin Clause {
			np = fromMaybe NP emptyNP road_np ;
			vp = mkVP (mkVP (mkVP v) (fromMaybe Adv emptyAdv source_adv)) (fromMaybe Adv emptyAdv goal_adv)
		} ;
		-- <Source>[Från vägen] [STIGER] <Road>[terrängen] <Goal>[upp till en skogbevuxen höjd med blåbärsgranskog och grova tallar]

		Path_shape_V_3 path_adv road_np v = lin Clause {
			np = fromMaybe NP emptyNP road_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv path_adv)
		} ;
		-- <Road>[Vägen] [SLINGRAR SIG] <Path>[längs sjöar och åkrar]

		Path_shape_V2 area_np road_np v2 = lin Clause {
			np = fromMaybe NP emptyNP road_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP area_np)
		} ;
		-- <Road>[Vägen] [KORSAR] <Area>[ett område av riksintresse för kulturmiljövård]

		--
		-- Perception_active
		--

		Perception_active_V_1 body_part_adv perceiver_agentive_np v = lin Clause {
			np = fromMaybe NP emptyNP perceiver_agentive_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv body_part_adv)
		} ;
		-- <Perceiver_agentive>[De] [TITTADE] <Body_part>[med stora ögon]

		Perception_active_V_2 direction_adv perceiver_agentive_np phenomenon_adv v = lin Clause {
			np = fromMaybe NP emptyNP perceiver_agentive_np ;
			vp = mkVP (mkVP (mkVP v) (fromMaybe Adv emptyAdv phenomenon_adv)) (fromMaybe Adv emptyAdv direction_adv)
		} ;
		-- <Perceiver_agentive>[Man] bör [FÄSTA BLICKEN] <Phenomenon>[på något fast föremål] <Direction>[åt sidan]

		Perception_active_V2 direction_adv perceiver_agentive_np phenomenon_np v2 = lin Clause {
			np = fromMaybe NP emptyNP perceiver_agentive_np ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP phenomenon_np)) (fromMaybe Adv emptyAdv direction_adv)
		} ;
		-- <Perceiver_agentive>[Johanna] står och [BEUNDRAR] <Phenomenon>[utsikten] <Direction>[från vårt hotellrum]

		Perception_active_V2_Pass phenomenon_np v2 = lin Clause {
			np = fromMaybe NP emptyNP phenomenon_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)
		} ;
		-- <Phenomenon>[Kyrkor] ska [BEUNDRAS]

		--
		-- Perception_body
		--

		Perception_body_V_1 body_part_adv v = lin Clause {
			np = emptyNP ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv body_part_adv)
		} ;
		-- [STICKER] <Body_part>[i hans högra arm]

		Perception_body_V_2 body_part_np v = lin Clause {
			np = fromMaybe NP emptyNP body_part_np ;
			vp = mkVP v
		} ;
		-- <Body_part>[Magen] [GÖR ONT]

		--
		-- Perception_experience
		--

		Perception_experience_V2 perceiver_passive_np phenomenon_np v2 = lin Clause {
			np = fromMaybe NP emptyNP perceiver_passive_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP phenomenon_np)
		} ;
		-- <Perceiver_passive>[Han] [ÅTERSÅG] <Phenomenon>[Bel-ka-Trazet]

		Perception_experience_VQ perceiver_passive_np phenomenon_qs vq = lin Clause {
			np = fromMaybe NP emptyNP perceiver_passive_np ;
			vp = mkVP vq (fromMaybe QS emptyQS phenomenon_qs)
		} ;
		-- <Perceiver_passive>[de själva] hunnit [BEVITTNA] <Phenomenon>[hur en epok tagit slut]

		Perception_experience_V2_Pass phenomenon_np v2 = lin Clause {
			np = fromMaybe NP emptyNP phenomenon_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)
		} ;
		-- [SYNTES] <Phenomenon>[den tunna vita hårflätan]

		--
		-- Performers_and_roles
		--

		Performers_and_roles_V performer1_np performer2_adv v = lin Clause {
			np = fromMaybe NP emptyNP performer1_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv performer2_adv)
		} ;
		-- <Performer1>[Madonna] [UPPTRÄDDE IHOP] <Performer2>[med en gospelkör]

		Performers_and_roles_V2_1 performance_adv performer_np role_np v2 = lin Clause {
			np = fromMaybe NP emptyNP performer_np ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP role_np)) (fromMaybe Adv emptyAdv performance_adv)
		} ;
		-- <Performer>[han] [SPELADE] <Role>[Romeo] <Performance>[i Shakespears klassiska drama]

		Performers_and_roles_V2_2 performer_np v2 = lin Clause {
			np = emptyNP ;
			vp = mkVP v2 (fromMaybe NP emptyNP performer_np)
		} ;
		-- [FRAMTRÄDDE] bland andra <Performer>[Madonna , Bruce Springsteen , Mary J Blige , Shakira och Sting]

		--
		-- Permitting
		--

		Permitting_V2 principle_np state_of_affairs_np v2 = lin Clause {
			np = fromMaybe NP emptyNP principle_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP state_of_affairs_np)
		} ;
		-- <Principle>[Genevekonventionen] [SANKTIONERAR] inte <State_of_affairs>[mord pa civilister]

		Permitting_V2_Pass state_of_affairs_np v2 = lin Clause {
			np = fromMaybe NP emptyNP state_of_affairs_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)
		} ;
		-- <State_of_affairs>[Avvikelse från denna princip] [TILLÅTS]

		--
		-- Personal_relationship
		--

		Personal_relationship_V partner_1_np partner_2_adv v = lin Clause {
			np = fromMaybe NP emptyNP partner_1_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv partner_2_adv)
		} ;
		-- <Partner_1>[hon] [SAMMANBODDE] <Partner_2>[med Alberto Moravia]

		Personal_relationship_V2 partner_1_np partner_2_np v2 = lin Clause {
			np = fromMaybe NP emptyNP partner_1_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP partner_2_np)
		} ;
		-- <Partner_1>[Han] är känd som en stor förförare , och [KURTISERAR] <Partner_2>[alla kvinnor han ser]

		--
		-- Piracy
		--

		Piracy_V2 perpetrator_np vehicle_np v2 = lin Clause {
			np = fromMaybe NP emptyNP perpetrator_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP vehicle_np)
		} ;
		-- <Perpetrator>[Pirater] [KAPADE] <Vehicle>[tre thailändska fiskefartyg]

		Piracy_V2_Pass vehicle_np v2 = lin Clause {
			np = fromMaybe NP emptyNP vehicle_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)
		} ;
		-- <Vehicle>[Ett TWA-flygplan] [KAPAS]

		--
		-- Place_weight_on
		--

		Place_weight_on_V agent_np consideration_adv v = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv consideration_adv)
		} ;
		-- <Agent>[vi] försöker [LÄGGA TYNGDEN] <Consideration>[på att barnen själva skall synas i rutan]

		--
		-- Placing
		--

		Placing_V2_1 agent_np goal_adv theme_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP theme_np)) (fromMaybe Adv emptyAdv goal_adv)
		} ;
		-- <Agent>[jag] mig vid skrivbordet och [ADRESSERADE] <Theme>[kuvertet] <Goal>[till doktor Gothard]

		Placing_V2_2 goal_np v2 = lin Clause {
			np = emptyNP ;
			vp = mkVP v2 (fromMaybe NP emptyNP goal_np)
		} ;
		-- [TOPPADE] <Goal>[tårtan]

		Placing_V2_Pass goal_adv theme_np v2 = lin Clause {
			np = fromMaybe NP emptyNP theme_np ;
			vp = mkVP (mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)) (fromMaybe Adv emptyAdv goal_adv)
		} ;
		-- <Theme>[Han] [STATIONERAS] <Goal>[på finländska UD i Helsingfors]

		--
		-- Planting
		--

		Planting_V2_1 agent_np theme_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP theme_np)
		} ;
		-- [ÅTERPLANTERAR] <Agent>[medlemmar] <Theme>[vattenväxter]

		Planting_V2_2 ground_adv theme_np v2 = lin Clause {
			np = emptyNP ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP theme_np)) (fromMaybe Adv emptyAdv ground_adv)
		} ;
		-- [PLANTERA] <Theme>[björkar] <Ground>[på områden där det finns mycket tungmetaller i jordmånen]

		Planting_V2_Pass theme_np v2 = lin Clause {
			np = fromMaybe NP emptyNP theme_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)
		} ;
		-- <Theme>[av utvalda frön] [ODLAS]

		--
		-- Posing_as
		--

		Posing_as_V2 agent_np simulated_entity_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP simulated_entity_np)
		} ;
		-- <Agent>[han] [FRAMSTÄLLER SIG] <Simulated_entity>[som den perfekte SS-officeren som bara lydde order]

		--
		-- Possession
		--

		Possession_V2 owner_np possession_np v2 = lin Clause {
			np = fromMaybe NP emptyNP owner_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP possession_np)
		} ;
		-- <Owner>[Bolaget] [SAKNAR] <Possession>[tillgångar]

		--
		-- Posture
		--

		Posture_V agent_np location_adv v = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv location_adv)
		} ;
		-- <Agent>[En stork] [SITTER] <Location>[på kyrktornet]

		--
		-- Practice
		--

		Practice_V action_adv agent_np v = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv action_adv)
		} ;
		-- <Agent>[de] bland annat får [ÖVA] <Action>[i rollspel]

		Practice_V2 action_np agent_np occasion_adv v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP action_np)) (fromMaybe Adv emptyAdv occasion_adv)
		} ;
		-- <Action>[schlagersånger som] <Agent>[de] [ÖVAT IN] <Occasion>[för skolmusikfestivalen]

		Practice_V2_Pass action_np v2 = lin Clause {
			np = fromMaybe NP emptyNP action_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)
		} ;
		-- <Action>[Showen som] skrivits ihop och [REPATS IN]

		--
		-- Precipitation
		--

		Precipitation_V_1 place_adv v = lin Clause {
			np = emptyNP ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv place_adv)
		} ;
		-- [SNÖADE] <Place>[i området]

		Precipitation_V_2 time_adv v = lin Clause {
			np = emptyNP ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv time_adv)
		} ;
		-- [REGNAT FLODER] <Time>[idag]

		--
		-- Predicting
		--

		Predicting_V2 eventuality_np speaker_np v2 = lin Clause {
			np = fromMaybe NP emptyNP speaker_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP eventuality_np)
		} ;
		-- <Speaker>[Investerare] ombads att [PROGNOSTISERA] <Eventuality>[ett bolags framtida resultat]

		Predicting_VQ eventuality_qs vq = lin Clause {
			np = emptyNP ;
			vp = mkVP vq (fromMaybe QS emptyQS eventuality_qs)
		} ;
		-- [FÖRUTSPÅ] <Eventuality>[vad sänkt hastighet skulle innebära för kollektivtrafiken]

		Predicting_VS eventuality_s speaker_np vs = lin Clause {
			np = fromMaybe NP emptyNP speaker_np ;
			vp = mkVP vs (fromMaybe S emptyS eventuality_s)
		} ;
		-- <Speaker>[Han] [SPÅDDE] <Eventuality>[att avskedandena kommer att leda till ökat våld i konflikten som redan krävt två dödsoffer och 300 skadade arbetare]

		--
		-- Preserving
		--

		Preserving_V2 agent_np medium_adv undergoer_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP undergoer_np)) (fromMaybe Adv emptyAdv medium_adv)
		} ;
		-- <Agent>[man] kan [SYLTA IN] <Undergoer>[pumpa] <Medium>[i ättikslag eller sockerlag]

		Preserving_V2_Pass medium_adv undergoer_np v2 = lin Clause {
			np = fromMaybe NP emptyNP undergoer_np ;
			vp = mkVP (mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)) (fromMaybe Adv emptyAdv medium_adv)
		} ;
		-- <Undergoer>[Pepparkakskryddan ingefära] kan också [SYLTAS IN] <Medium>[i kraftig sockerlag]

		--
		-- Prevarication
		--

		Prevarication_V speaker_np topic_adv v = lin Clause {
			np = fromMaybe NP emptyNP speaker_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv topic_adv)
		} ;
		-- <Speaker>[Hon] [LJÖG] <Topic>[om sin ålder]

		--
		-- Prevent_from_having
		--

		Prevent_from_having_V3 agent_np protagonist_np v3 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v3 (fromMaybe NP emptyNP protagonist_np) emptyNP
		} ;
		-- <Agent>[jag] inte ville [FRÅNTA] <Protagonist>[någon]

		--
		-- Preventing
		--

		Preventing_V2_1 agent_np event_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP event_np)
		} ;
		-- <Agent>[åtalet] ska [STOPPA] <Event>[kriget]

		Preventing_V2_2 event_np preventing_cause_np v2 = lin Clause {
			np = fromMaybe NP emptyNP preventing_cause_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP event_np)
		} ;
		-- <Preventing_cause>[Ett gott äktenskapligt samliv] [FÖRHINDRAR] <Event>[otuktssynder]

		--
		-- Process_continue
		--

		Process_continue_V event_np v = lin Clause {
			np = fromMaybe NP emptyNP event_np ;
			vp = mkVP v
		} ;
		-- <Event>[Mötet] [HÖLL PÅ]

		--
		-- Process_end
		--

		Process_end_V process_np v = lin Clause {
			np = fromMaybe NP emptyNP process_np ;
			vp = mkVP v
		} ;
		-- <Process>[Den svenska vapenexporten] måste [UPPHÖRA]

		--
		-- Process_resume
		--

		Process_resume_V process_np v = lin Clause {
			np = fromMaybe NP emptyNP process_np ;
			vp = mkVP v
		} ;
		-- [ÅTERGICK] <Process>[livet]

		--
		-- Process_start
		--

		Process_start_V event_np v = lin Clause {
			np = fromMaybe NP emptyNP event_np ;
			vp = mkVP v
		} ;
		-- <Event>[kurortsverksamheten] [SATTE FART]

		--
		-- Process_stop
		--

		Process_stop_V process_np v = lin Clause {
			np = fromMaybe NP emptyNP process_np ;
			vp = mkVP v
		} ;
		-- <Process>[bostadsbyggandet] [STANNAR AV]

		--
		-- Processing_materials
		--

		Processing_materials_V2 agent_np material_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP material_np)
		} ;
		-- <Agent>[Jerker] som tagit upp sin mors yrke ska fortsätta [BLÅSA] <Material>[glas]

		Processing_materials_V2_Pass material_np v2 = lin Clause {
			np = fromMaybe NP emptyNP material_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)
		} ;
		-- <Material>[Mjölken] [PASTÖRISERAS]

		--
		-- Progress
		--

		Progress_V entity_np v = lin Clause {
			np = fromMaybe NP emptyNP entity_np ;
			vp = mkVP v
		} ;
		-- <Entity>[Konstkupper] har [UTVECKLAT SIG]

		--
		-- Prohibiting
		--

		Prohibiting_V2 principle_np state_of_affairs_np v2 = lin Clause {
			np = fromMaybe NP emptyNP principle_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP state_of_affairs_np)
		} ;
		-- <Principle>[lagen] [FÖRBJUDER] <State_of_affairs>[fackföreningarna att vara politiskt aktiva]

		--
		-- Proliferating_in_number
		--

		Proliferating_in_number_V final_number_adv initial_number_adv set_np v = lin Clause {
			np = fromMaybe NP emptyNP set_np ;
			vp = mkVP (mkVP (mkVP v) (fromMaybe Adv emptyAdv initial_number_adv)) (fromMaybe Adv emptyAdv final_number_adv)
		} ;
		-- <Set>[vänsterpartiet] [MINSKAR] <Initial_number>[från 11,4] <Final_number>[till 10,4]

		Proliferating_in_number_V2_Pass set_np v2 = lin Clause {
			np = fromMaybe NP emptyNP set_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)
		} ;
		-- <Set>[Antalet kvinnor med hörselskador] har [FÖRDUBBLATS]

		--
		-- Protecting
		--

		Protecting_V2 asset_np protection_np v2 = lin Clause {
			np = fromMaybe NP emptyNP protection_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP asset_np)
		} ;
		-- <Protection>[Korallreven] [SKYDDAR] <Asset>[kusterna vid stormar]

		Protecting_V2_Pass asset_np danger_adv v2 = lin Clause {
			np = fromMaybe NP emptyNP asset_np ;
			vp = mkVP (mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)) (fromMaybe Adv emptyAdv danger_adv)
		} ;
		-- <Asset>[Nutidens stressade män] måste gunås [AKTAS] <Danger>[för stötar]

		--
		-- Quarreling
		--

		Quarreling_V_1 arguer1_np arguer2_adv v = lin Clause {
			np = fromMaybe NP emptyNP arguer1_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv arguer2_adv)
		} ;
		-- <Arguer1>[Johannesson] brukar [KÄFTA] <Arguer2>[med Wennerholm]

		Quarreling_V_2 arguers_np issue_adv v = lin Clause {
			np = fromMaybe NP emptyNP arguers_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv issue_adv)
		} ;
		-- [BRÅKADE] <Arguers>[två västsvenska klubbar] <Issue>[om en övergång]

		--
		-- Questioning
		--

		Questioning_V2 addressee_np speaker_np topic_adv v2 = lin Clause {
			np = fromMaybe NP emptyNP speaker_np ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP addressee_np)) (fromMaybe Adv emptyAdv topic_adv)
		} ;
		-- <Speaker>[Jag] talade en stund med pappa och gjorde ännu ett försök att [PUMPA] <Addressee>[honom] <Topic>[om Terry]

		Questioning_VQ message_qs speaker_np vq = lin Clause {
			np = fromMaybe NP emptyNP speaker_np ;
			vp = mkVP vq (fromMaybe QS emptyQS message_qs)
		} ;
		-- <Message>[Varför sover vi så dåligt ?] [FRÅGADE] <Speaker>[GP]

		Questioning_V2_Pass addressee_np speaker_np v2 = lin Clause {
			np = fromMaybe NP emptyNP addressee_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep (fromMaybe NP emptyNP speaker_np))
		} ;
		-- <Addressee>[kändisar] låter sig [GRILLAS] <Speaker>[av komiker]

		--
		-- Quitting
		--

		Quitting_V employee_np position_adv v = lin Clause {
			np = fromMaybe NP emptyNP employee_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv position_adv)
		} ;
		-- <Employee>[Emma] [SA UPP SIG] <Position>[från sitt jobb som florist]

		Quitting_V2 employee_np position_np v2 = lin Clause {
			np = fromMaybe NP emptyNP employee_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP position_np)
		} ;
		-- <Employee>[Samtliga] har fått [FRÅNTRÄDA] <Position>[sina befattningar]

		--
		-- Quitting_a_place
		--

		Quitting_a_place_V self_mover_np source_adv v = lin Clause {
			np = fromMaybe NP emptyNP self_mover_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv source_adv)
		} ;
		-- <Self_mover>[Gaddafistyrkorna] [DRAGIT SIG TILLBAKA] <Source>[från staden]

		Quitting_a_place_V2 source_np v2 = lin Clause {
			np = emptyNP ;
			vp = mkVP v2 (fromMaybe NP emptyNP source_np)
		} ;
		-- [UTRYMMA] <Source>[lägenheten]

		--
		-- Ratification
		--

		Ratification_V2 proposal_np ratifier_np v2 = lin Clause {
			np = fromMaybe NP emptyNP ratifier_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP proposal_np)
		} ;
		-- <Ratifier>[26 EU-länder] har [RATIFICERAT] <Proposal>[Lissabonfördraget]

		--
		-- Reading
		--

		Reading_V_1 reader_np text_adv v = lin Clause {
			np = fromMaybe NP emptyNP reader_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv text_adv)
		} ;
		-- <Reader>[en amerikan som varit i Paris] och [FÖRLÄST SIG] <Text>[på Bourdieu]

		Reading_V_2 text_np v = lin Clause {
			np = fromMaybe NP emptyNP text_np ;
			vp = mkVP v
		} ;
		-- <Text>[en bok] att [STRÄCKLÄSA]

		Reading_V2 reader_np text_np v2 = lin Clause {
			np = fromMaybe NP emptyNP reader_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP text_np)
		} ;
		-- <Reader>[miljoner människor] [SLUKAR] <Text>[böcker]

		--
		-- Reading_aloud
		--

		Reading_aloud_V2 speaker_np text_np v2 = lin Clause {
			np = fromMaybe NP emptyNP speaker_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP text_np)
		} ;
		-- <Speaker>[Wilkens] att inte [LÄSA UPP] just <Text>[den domen]

		--
		-- Reasoning
		--

		Reasoning_V arguer_np content_adv v = lin Clause {
			np = fromMaybe NP emptyNP arguer_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv content_adv)
		} ;
		-- <Arguer>[en enda katolsk präst i Sverige som] vill [DEMONSTRERA] <Content>[mot celibatet]

		Reasoning_VS arguer_np content_s vs = lin Clause {
			np = fromMaybe NP emptyNP arguer_np ;
			vp = mkVP vs (fromMaybe S emptyS content_s)
		} ;
		-- <Arguer>[Mathias] [BEVISADE] <Content>[att segern i Irland , Smurfit European Open , i slutet av augusti inte var en tillfällighet]

		--
		-- Receiving
		--

		Receiving_V2 recipient_np theme_np v2 = lin Clause {
			np = fromMaybe NP emptyNP recipient_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP theme_np)
		} ;
		-- <Recipient>[Nobelpristagarna] kommer till för att [TA EMOT] <Theme>[sina medaljer]

		--
		-- Recording
		--

		Recording_V2 agent_np phenomenon_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP phenomenon_np)
		} ;
		-- <Agent>[Jag] befann mig med fotograf för att [SKILDRA] <Phenomenon>[valstriden]

		--
		-- Recovery
		--

		Recovery_V_1 affliction_adv patient_np v = lin Clause {
			np = fromMaybe NP emptyNP patient_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv affliction_adv)
		} ;
		-- <Patient>[vissa patienter] <Affliction>[med ryggont] [LÄKER]

		Recovery_V_2 affliction_np v = lin Clause {
			np = fromMaybe NP emptyNP affliction_np ;
			vp = mkVP v
		} ;
		-- <Affliction>[Såret] [LÄKER]

		Recovery_V2_Pass body_part_np v2 = lin Clause {
			np = fromMaybe NP emptyNP body_part_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)
		} ;
		-- <Body_part>[Mungiporna] höll på att [LÄKAS]

		--
		-- Redirecting
		--

		Redirecting_V2 agent_np theme_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP theme_np)
		} ;
		-- <Agent>[Jag] försöker [AVLEDA] <Theme>[Lokes uppmärksamhet]

		Redirecting_V2_Pass goal_adv theme_np v2 = lin Clause {
			np = fromMaybe NP emptyNP theme_np ;
			vp = mkVP (mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)) (fromMaybe Adv emptyAdv goal_adv)
		} ;
		-- <Theme>[floder] [AVLEDS] <Goal>[till bevattning]

		--
		-- Reference_text
		--

		Reference_text_V2 source_of_information_np v2 = lin Clause {
			np = emptyNP ;
			vp = mkVP v2 (fromMaybe NP emptyNP source_of_information_np)
		} ;
		-- [SE ÄVEN] <Source_of_information>[hans Djävulssonaten]

		--
		-- Reforming_a_system
		--

		Reforming_a_system_V2 agent_np entity_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP entity_np)
		} ;
		-- <Agent>[Catena] att [OMSTRUKTURERA] <Entity>[bilrörelsen i Europa]

		Reforming_a_system_V2_Pass entity_np v2 = lin Clause {
			np = fromMaybe NP emptyNP entity_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)
		} ;
		-- <Entity>[flottan] skulle [OMSTRUKTURERAS]

		--
		-- Rejuvenation
		--

		Rejuvenation_V2_1 agent_np entity_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP entity_np)
		} ;
		-- <Agent>[Irländarna] till exempel försöker [ÅTERUPPLIVA] <Entity>[gaeliskan]

		Rejuvenation_V2_2 cause_np entity_np v2 = lin Clause {
			np = fromMaybe NP emptyNP cause_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP entity_np)
		} ;
		-- <Cause>[den] [PÅNYTTFÖDER] <Entity>[oss]

		Rejuvenation_V2_Pass entity_np v2 = lin Clause {
			np = fromMaybe NP emptyNP entity_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)
		} ;
		-- <Entity>[Demokratin i kommunerna] behöver [VITALISERAS]

		--
		-- Relating_concepts
		--

		Relating_concepts_V2 concept_1_np concept_2_adv evidence_np v2 = lin Clause {
			np = fromMaybe NP emptyNP evidence_np ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP concept_1_np)) (fromMaybe Adv emptyAdv concept_2_adv)
		} ;
		-- <Evidence>[inget enskilt bevis] [BINDER] <Concept_1>[45-åringen] <Concept_2>[till dådet]

		Relating_concepts_V2_Pass concept_1_np concept_2_adv v2 = lin Clause {
			np = fromMaybe NP emptyNP concept_1_np ;
			vp = mkVP (mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)) (fromMaybe Adv emptyAdv concept_2_adv)
		} ;
		-- <Concept_1>[alla brott] måste också [SÄTTAS I RELATION] <Concept_2>[till det uppdrag man har]

		--
		-- Relative_time
		--

		Relative_time_V focal_occasion_np v = lin Clause {
			np = fromMaybe NP emptyNP focal_occasion_np ;
			vp = mkVP v
		} ;
		-- <Focal_occasion>[Lektionen] [DRAR UT PÅ TIDEN]

		--
		-- Releasing
		--

		Releasing_V2 theme_np v2 = lin Clause {
			np = emptyNP ;
			vp = mkVP v2 (fromMaybe NP emptyNP theme_np)
		} ;
		-- [SLÄPP LOSS] <Theme>[mig]

		--
		-- Reliance
		--

		Reliance_V means_adv protagonist_np v = lin Clause {
			np = fromMaybe NP emptyNP protagonist_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv means_adv)
		} ;
		-- <Protagonist>[Politiker och tjänstemän] har nog [FÖRLITAT SIG] <Means>[på att tekniken skulle lösa problemen]

		--
		-- Religious_belief
		--

		Religious_belief_V element_adv v = lin Clause {
			np = emptyNP ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv element_adv)
		} ;
		-- [TROR] <Element>[på Bibeln såsom den är tolkad av Swedenborgs andliga läror]

		Religious_belief_VS believer_np content_s vs = lin Clause {
			np = fromMaybe NP emptyNP believer_np ;
			vp = mkVP vs (fromMaybe S emptyS content_s)
		} ;
		-- <Believer>[jag] [TRO] <Content>[att Jesus verkligen dött för mej]

		--
		-- Remainder
		--

		Remainder_V remainder_np v = lin Clause {
			np = fromMaybe NP emptyNP remainder_np ;
			vp = mkVP v
		} ;
		-- <Remainder>[Oklarheterna kring den känsliga frågan] [KVARSTOD]

		Remainder_V2 remainder_np v2 = lin Clause {
			np = emptyNP ;
			vp = mkVP v2 (fromMaybe NP emptyNP remainder_np)
		} ;
		-- [LÄMNAT] <Remainder>[skräp]

		--
		-- Remembering_experience
		--

		Remembering_experience_VQ cognizer_np experience_qs vq = lin Clause {
			np = fromMaybe NP emptyNP cognizer_np ;
			vp = mkVP vq (fromMaybe QS emptyQS experience_qs)
		} ;
		-- <Cognizer>[han] och [ERINRAR SIG] <Experience>[hur han blev utbuad av parlamentet för några år sedan]

		--
		-- Remembering_information
		--

		Remembering_information_VS cognizer_np mental_content_s vs = lin Clause {
			np = fromMaybe NP emptyNP cognizer_np ;
			vp = mkVP vs (fromMaybe S emptyS mental_content_s)
		} ;
		-- <Cognizer>[han] kan inte [PÅMINNA SIG] <Mental_content>[att de talade om lerhyddor]

		--
		-- Remembering_to_do
		--

		Remembering_to_do_VV action_vp cognizer_np vv = lin Clause {
			np = fromMaybe NP emptyNP cognizer_np ;
			vp = mkVP vv (fromMaybe VP emptyVP action_vp)
		} ;
		-- <Cognizer>[Man] har [GLÖMT] <Action>[att titta på arbetsorganisationen]

		--
		-- Removing
		--

		Removing_V agent_np theme_adv v = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv theme_adv)
		} ;
		-- <Agent>[Besökarna] kunde inte [GÖRA SIG AV] <Theme>[med avfallet]

		Removing_V2 agent_np source_adv theme_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP theme_np)) (fromMaybe Adv emptyAdv source_adv)
		} ;
		-- <Agent>[vi] [KRATSADE UT] <Theme>[askan] <Source>[ur pannan]

		Removing_V2_Pass_1 source_adv theme_np v2 = lin Clause {
			np = fromMaybe NP emptyNP theme_np ;
			vp = mkVP (mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)) (fromMaybe Adv emptyAdv source_adv)
		} ;
		-- <Theme>[En utländsk medborgare] eller <Theme>[en statslös person] [UTVISAS] <Source>[ur Sverige]

		Removing_V2_Pass_2 theme_adv v2 = lin Clause {
			np = emptyNP ;
			vp = mkVP (mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)) (fromMaybe Adv emptyAdv theme_adv)
		} ;
		-- <Theme>[Boende i en tvåvånings länga på Haparandavägen] fick [EVAKUERAS]

		--
		-- Render_nonfunctional
		--

		Render_nonfunctional_V2 agent_np artifact_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP artifact_np)
		} ;
		-- <Agent>[man] [TAR SÖNDER] <Artifact>[alla klockor]

		--
		-- Renting
		--

		Renting_V2 goods_np lessee_np v2 = lin Clause {
			np = fromMaybe NP emptyNP lessee_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP goods_np)
		} ;
		-- <Lessee>[Vi] [HYR IN] <Goods>[bussar]

		--
		-- Renting_out
		--

		Renting_out_V2 goods_np lessee_adv lessor_np v2 = lin Clause {
			np = fromMaybe NP emptyNP lessor_np ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP goods_np)) (fromMaybe Adv emptyAdv lessee_adv)
		} ;
		-- <Lessor>[Garantiföreningen] [HYR UT] <Goods>[husen] <Lessee>[till sju olika aktörer]

		--
		-- Renunciation
		--

		Renunciation_V2 content_np speaker_np v2 = lin Clause {
			np = fromMaybe NP emptyNP speaker_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP content_np)
		} ;
		-- <Speaker>[Föräldrargruppen] [FRÅNSÄGER SIG] <Content>[allt politiskt ansvar]

		--
		-- Repel
		--

		Repel_V2_1 defender_np enemy_np v2 = lin Clause {
			np = fromMaybe NP emptyNP defender_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP enemy_np)
		} ;
		-- <Defender>[stenhusen] [STOD EMOT] <Enemy>[projektilerna]

		Repel_V2_2 defender_np invasion_act_np v2 = lin Clause {
			np = fromMaybe NP emptyNP defender_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP invasion_act_np)
		} ;
		-- <Defender>[Europa] kommer att [STÅ EMOT] <Invasion_act>[hot som terrorismen]

		--
		-- Replacing
		--

		Replacing_V2_1 agent_np new_adv old_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP old_np)) (fromMaybe Adv emptyAdv new_adv)
		} ;
		-- <Agent>[Jag] beslöt [BYTA UT] <Old>[kameran] <New>[mot penseln] och <Old>[filmen] <New>[mot papper]

		Replacing_V2_2 agent_np new_np old_adv v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP new_np)) (fromMaybe Adv emptyAdv old_adv)
		} ;
		-- <Agent>[man] har börjat [SUBSTITUERA] <New>[vete] <Old>[istället för majs som foder]

		--
		-- Reporting
		--

		Reporting_V informer_np wrongdoer_adv v = lin Clause {
			np = fromMaybe NP emptyNP informer_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv wrongdoer_adv)
		} ;
		-- <Informer>[Hon] [GOLAR] även <Wrongdoer>[på Lisbet]

		--
		-- Representing
		--

		Representing_V entity_np phenomenon_adv v = lin Clause {
			np = fromMaybe NP emptyNP entity_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv phenomenon_adv)
		} ;
		-- <Entity>[1997] [STÅR] <Phenomenon>[för året då Günter och Christina flyttade till gården]

		--
		-- Request
		--

		Request_V2_1 addressee_np message_adv speaker_np v2 = lin Clause {
			np = fromMaybe NP emptyNP speaker_np ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP addressee_np)) (fromMaybe Adv emptyAdv message_adv)
		} ;
		-- <Speaker>[Poliskommissarien] [KOMMENDERADE] <Addressee>[en man] <Message>[till Ghandi-salen]

		Request_V2_2 message_np speaker_np v2 = lin Clause {
			np = fromMaybe NP emptyNP speaker_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP message_np)
		} ;
		-- <Speaker>[En rödhårig kortväxt bokhållare] [ÄSKADE] <Message>[tystnad]

		Request_V2V addressee_np message_vp speaker_np v2v = lin Clause {
			np = fromMaybe NP emptyNP speaker_np ;
			vp = mkVP v2v (fromMaybe NP emptyNP addressee_np) (fromMaybe VP emptyVP message_vp)
		} ;
		-- <Speaker>[Hon] [BEFALLDE] <Addressee>[flickan] <Message>[att tvätta av sina händer] , <Message>[ta på sig kappan] och <Message>[komma med]

		Request_VS message_s speaker_np vs = lin Clause {
			np = fromMaybe NP emptyNP speaker_np ;
			vp = mkVP vs (fromMaybe S emptyS message_s)
		} ;
		-- <Speaker>[Jag] [HEMSTÄLLER] därför <Message>[att jag avregistreras som fastighetsmäklare]

		Request_V2_Pass addressee_np message_adv v2 = lin Clause {
			np = fromMaybe NP emptyNP addressee_np ;
			vp = mkVP (mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)) (fromMaybe Adv emptyAdv message_adv)
		} ;
		-- <Addressee>[de] [KALLADES UT] <Message>[i ett nödläge]

		--
		-- Research
		--

		Research_V_1 field_adv researcher_np v = lin Clause {
			np = fromMaybe NP emptyNP researcher_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv field_adv)
		} ;
		-- [FORSKAR] <Researcher>[jag] <Field>[i analytisk ontologi]

		Research_V_2 researcher_np topic_adv v = lin Clause {
			np = fromMaybe NP emptyNP researcher_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv topic_adv)
		} ;
		-- <Researcher>[Vi] [FORSKAR] <Topic>[utifrån stress- och sårbarhetsfaktorer , särskilt när det gäller depressionssjukdomar]

		--
		-- Reshaping
		--

		Reshaping_V undergoer_np v = lin Clause {
			np = fromMaybe NP emptyNP undergoer_np ;
			vp = mkVP v
		} ;
		-- <Undergoer>[Manteln] låg [HOPVIKT]

		Reshaping_V2 deformer_np undergoer_np v2 = lin Clause {
			np = fromMaybe NP emptyNP deformer_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP undergoer_np)
		} ;
		-- <Deformer>[Mannen på bänken] [VIKER IHOP] <Undergoer>[tidningen]

		Reshaping_V2_Pass undergoer_np v2 = lin Clause {
			np = fromMaybe NP emptyNP undergoer_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)
		} ;
		-- <Undergoer>[de] [KAVLAS UT]

		--
		-- Residence
		--

		Residence_V location_adv resident_np v = lin Clause {
			np = fromMaybe NP emptyNP resident_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv location_adv)
		} ;
		-- <Resident>[Elisabeth Krantz] [BOR] <Location>[i Kungsbacka]

		--
		-- Resolve_problem
		--

		Resolve_problem_V_1 agent_np problem_adv v = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv problem_adv)
		} ;
		-- <Agent>[vi] [KOMMA TILL RÄTTA] <Problem>[med arbetslösheten]

		Resolve_problem_V_2 problem_np v = lin Clause {
			np = fromMaybe NP emptyNP problem_np ;
			vp = mkVP v
		} ;
		-- <Problem>[det] går att [FIXA]

		Resolve_problem_V2 agent_np problem_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP problem_np)
		} ;
		-- <Agent>[poliserna] på att [KLARA UPP] <Problem>[inbrott och stölder]

		Resolve_problem_V2_Pass problem_np v2 = lin Clause {
			np = fromMaybe NP emptyNP problem_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)
		} ;
		-- <Problem>[Det problemet] [AVHJÄLPTES]

		--
		-- Respond_to_proposal
		--

		Respond_to_proposal_V2 proposal_np speaker_np v2 = lin Clause {
			np = fromMaybe NP emptyNP speaker_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP proposal_np)
		} ;
		-- <Proposal>[den tanken] måste <Speaker>[man] [SLÅ BORT]

		--
		-- Response
		--

		Response_V_1 agent_np trigger_adv v = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv trigger_adv)
		} ;
		-- <Agent>[vi] [REAGERA] <Trigger>[på missförhållandena]

		Response_V_2 responding_entity_np trigger_adv v = lin Clause {
			np = fromMaybe NP emptyNP responding_entity_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv trigger_adv)
		} ;
		-- <Responding_entity>[Patienten] [REAGERAR] <Trigger>[på medicineringen]

		--
		-- Reveal_secret
		--

		Reveal_secret_V_1 information_adv speaker_np v = lin Clause {
			np = fromMaybe NP emptyNP speaker_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv information_adv)
		} ;
		-- <Speaker>[Vuoria] ville inte [YPPA] <Information>[om uppsägningen har något att göra med Fortums framtidsplaner]

		Reveal_secret_V_2 speaker_np topic_adv v = lin Clause {
			np = fromMaybe NP emptyNP speaker_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv topic_adv)
		} ;
		-- <Speaker>[folk] att [ÖPPNA SIG] <Topic>[om svåra saker]

		Reveal_secret_V2 information_np medium_np v2 = lin Clause {
			np = fromMaybe NP emptyNP medium_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP information_np)
		} ;
		-- <Medium>[Dagboken] [YPPAR] <Information>[hemligheter som får överraskande följder]

		Reveal_secret_VQ information_qs speaker_np vq = lin Clause {
			np = fromMaybe NP emptyNP speaker_np ;
			vp = mkVP vq (fromMaybe QS emptyQS information_qs)
		} ;
		-- [AVSLÖJADE] <Speaker>[STV] <Information>[hur den privatiserade arbetsförmedlingen i det borgerliga Sverige har resulterat i kurser i virkning och fejkade mentorskap där de arbetslösa har lämnats vind för våg]

		Reveal_secret_VS_1 information_s medium_np vs = lin Clause {
			np = fromMaybe NP emptyNP medium_np ;
			vp = mkVP vs (fromMaybe S emptyS information_s)
		} ;
		-- <Medium>[ett samtal till kostplanerare Maarit Ketola] [AVSLÖJAR] <Information>[att den här veckans meny inte bjuder på några konstigheter eller exotiska inslag]

		Reveal_secret_VS_2 information_s speaker_np vs = lin Clause {
			np = fromMaybe NP emptyNP speaker_np ;
			vp = mkVP vs (fromMaybe S emptyS information_s)
		} ;
		-- <Speaker>[jag] hade [ANFÖRTROTT] <Information>[att jag verkligen inte ville ha fler barn]

		--
		-- Revenge
		--

		Revenge_V_1 avenger_np injury_adv v = lin Clause {
			np = fromMaybe NP emptyNP avenger_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv injury_adv)
		} ;
		-- <Avenger>[Jag] vill [VEDERGÄLLA] <Injury>[ont]

		Revenge_V_2 avenger_np punishment_adv v = lin Clause {
			np = fromMaybe NP emptyNP avenger_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv punishment_adv)
		} ;
		-- <Avenger>[Jag] vill [VEDERGÄLLA] <Punishment>[med ont]

		Revenge_V2_Pass avenger_np punishment_adv v2 = lin Clause {
			np = fromMaybe NP emptyNP avenger_np ;
			vp = mkVP (mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)) (fromMaybe Adv emptyAdv punishment_adv)
		} ;
		-- <Avenger>[Denne] kunde [HÄMNAS] <Punishment>[genom att skvallra på dem]

		--
		-- Rewards_and_punishments
		--

		Rewards_and_punishments_V2 agent_np evaluee_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP evaluee_np)
		} ;
		-- <Agent>[Spararna] kan inte [STRAFFA] <Evaluee>[ett livbolag man är missnöjd med]

		--
		-- Ride_vehicle
		--

		Ride_vehicle_V_1 area_adv theme_np v = lin Clause {
			np = fromMaybe NP emptyNP theme_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv area_adv)
		} ;
		-- <Theme>[jag och min blivande man] [LIFTADE] <Area>[i Australien]

		Ride_vehicle_V_2 path_adv v = lin Clause {
			np = emptyNP ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv path_adv)
		} ;
		-- [DAMMA] <Path>[genom Stockholm]

		Ride_vehicle_V2 goal_adv source_adv theme_np vehicle_np v2 = lin Clause {
			np = fromMaybe NP emptyNP theme_np ;
			vp = mkVP (mkVP (mkVP v2 (fromMaybe NP emptyNP vehicle_np)) (fromMaybe Adv emptyAdv source_adv)) (fromMaybe Adv emptyAdv goal_adv)
		} ;
		-- <Source>[Från Cityterminalen] kan <Theme>[du] [ÅKA] <Vehicle>[buss] <Goal>[till hela Sverige]

		--
		-- Rising_to_a_challenge
		--

		Rising_to_a_challenge_V activity_adv protagonist_np v = lin Clause {
			np = fromMaybe NP emptyNP protagonist_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv activity_adv)
		} ;
		-- <Protagonist>[jag] att [SVARA] <Activity>[på en utmaning jag fått från Annicas blogg Galen i inredning]

		--
		-- Rite
		--

		Rite_V member_np v = lin Clause {
			np = fromMaybe NP emptyNP member_np ;
			vp = mkVP v
		} ;
		-- <Member>[jag] [BE EN BÖN]

		Rite_V2 object_np v2 = lin Clause {
			np = emptyNP ;
			vp = mkVP v2 (fromMaybe NP emptyNP object_np)
		} ;
		-- [SMÖRJA] <Object>[den döda kroppen]

		Rite_V2_Pass member_np v2 = lin Clause {
			np = fromMaybe NP emptyNP member_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)
		} ;
		-- <Member>[Elisabet] [DÖPTES]

		--
		-- Robbery
		--

		Robbery_V2 perpetrator_np victim_np v2 = lin Clause {
			np = fromMaybe NP emptyNP perpetrator_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP victim_np)
		} ;
		-- <Perpetrator>[Två yngre killar] [RÅNAR] <Victim>[två tjejer]

		--
		-- Rotting
		--

		Rotting_V undergoer_np v = lin Clause {
			np = fromMaybe NP emptyNP undergoer_np ;
			vp = mkVP v
		} ;
		-- <Undergoer>[Virket] murknar och ruttnar och [VITTRAR]

		--
		-- Run_risk
		--

		Run_risk_V2 asset_np protagonist_np v2 = lin Clause {
			np = fromMaybe NP emptyNP protagonist_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP asset_np)
		} ;
		-- <Protagonist>[Våghalsiga fallskärmshoppare] har hittat att [RISKERA] <Asset>[livet]

		Run_risk_VV bad_outcome_vp protagonist_np vv = lin Clause {
			np = fromMaybe NP emptyNP protagonist_np ;
			vp = mkVP vv (fromMaybe VP emptyVP bad_outcome_vp)
		} ;
		-- <Protagonist>[Han] [RISKERAR] <Bad_outcome>[att dömas till många års fängelse]

		--
		-- Satisfying
		--

		Satisfying_V2_1 agent_np standard_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP standard_np)
		} ;
		-- <Agent>[Sverige] har inte lyckats [INFRIA] <Standard>[förväntningarna]

		Satisfying_V2_2 entity_np standard_np v2 = lin Clause {
			np = fromMaybe NP emptyNP entity_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP standard_np)
		} ;
		-- <Entity>[en sådan mångfald av olika konfigurationer som] kan [SATISFIERA] <Standard>[samma lagenliga begränsningar]

		--
		-- Scouring
		--

		Scouring_V2 ground_np searcher_np v2 = lin Clause {
			np = fromMaybe NP emptyNP searcher_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP ground_np)
		} ;
		-- <Searcher>[polisen] får [SNOKA IGENOM] <Ground>[Svenssons bokhyllor]

		Scouring_V2_Pass ground_np v2 = lin Clause {
			np = fromMaybe NP emptyNP ground_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)
		} ;
		-- <Ground>[Varje skogsparti och parkområde] har [FINKAMMATS]

		--
		-- Scrutiny
		--

		Scrutiny_V cognizer_np ground_adv v = lin Clause {
			np = fromMaybe NP emptyNP cognizer_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv ground_adv)
		} ;
		-- <Cognizer>[hon] [GÅ TILL BOTTEN] <Ground>[med oklarheterna]

		Scrutiny_V2 cognizer_np ground_np v2 = lin Clause {
			np = fromMaybe NP emptyNP cognizer_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP ground_np)
		} ;
		-- <Cognizer>[Jag] ska dock [NAGELFARA] <Ground>[hela kostnadskedjan]

		Scrutiny_V2_Pass ground_np v2 = lin Clause {
			np = fromMaybe NP emptyNP ground_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)
		} ;
		-- <Ground>[Läkemedelsrester i slam] [UNDERSÖKS]

		--
		-- Seeking
		--

		Seeking_V cognizer_agent_np sought_entity_adv v = lin Clause {
			np = fromMaybe NP emptyNP cognizer_agent_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv sought_entity_adv)
		} ;
		-- <Cognizer_agent>[vi] [LETADE] <Sought_entity>[efter en öppning]

		--
		-- Seeking_to_achieve
		--

		Seeking_to_achieve_V2_1 agent_np sought_entity_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP sought_entity_np)
		} ;
		-- <Agent>[Man] [EFTERSTRÄVAR] <Sought_entity>[ett rättvisare samhälle]

		Seeking_to_achieve_V2_2 state_of_affairs_np v2 = lin Clause {
			np = emptyNP ;
			vp = mkVP v2 (fromMaybe NP emptyNP state_of_affairs_np)
		} ;
		-- [EFTERSTRÄVA] <State_of_affairs>[kvotering]

		--
		-- Self_motion
		--

		Self_motion_V_1 area_adv self_mover_np v = lin Clause {
			np = fromMaybe NP emptyNP self_mover_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv area_adv)
		} ;
		-- <Self_mover>[Hon] sitter inte många stunder utan [ÅNGAR FRAM] <Area>[i det stora kontorslandskapet]

		Self_motion_V_2 direction_adv self_mover_np v = lin Clause {
			np = fromMaybe NP emptyNP self_mover_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv direction_adv)
		} ;
		-- [SPRINGER] <Self_mover>[mr Beresford] <Direction>[uppför vägen]

		Self_motion_V_3 goal_adv self_mover_np v = lin Clause {
			np = fromMaybe NP emptyNP self_mover_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv goal_adv)
		} ;
		-- <Self_mover>[Värden] [STIGER FRAM] <Goal>[till hans bord]

		Self_motion_V_4 path_adv self_mover_np source_adv v = lin Clause {
			np = fromMaybe NP emptyNP self_mover_np ;
			vp = mkVP (mkVP (mkVP v) (fromMaybe Adv emptyAdv source_adv)) (fromMaybe Adv emptyAdv path_adv)
		} ;
		-- <Self_mover>[Vi] [PROMENERAR] <Source>[från Lindholmen] <Path>[längs Norra Älvstrandens brokiga kontur]

		--
		-- Sending
		--

		Sending_V2 recipient_adv sender_np theme_np v2 = lin Clause {
			np = fromMaybe NP emptyNP sender_np ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP theme_np)) (fromMaybe Adv emptyAdv recipient_adv)
		} ;
		-- <Sender>[Gymnasienämnden i Mölndal] tillstyrker avtalet och har [ÖVERSÄNT] <Theme>[beslutet] <Recipient>[till kommunstyrelsen]

		Sending_V2_Pass recipient_adv theme_np v2 = lin Clause {
			np = fromMaybe NP emptyNP theme_np ;
			vp = mkVP (mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)) (fromMaybe Adv emptyAdv recipient_adv)
		} ;
		-- <Theme>[Fotografier som visar de aktuella lagbrotten] har nu [SKICKATS ÖVER] <Recipient>[till Lerumspolisen]

		--
		-- Sentencing
		--

		Sentencing_V2_Pass convict_np offense_adv sentence_adv v2 = lin Clause {
			np = fromMaybe NP emptyNP convict_np ;
			vp = mkVP (mkVP (mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)) (fromMaybe Adv emptyAdv sentence_adv)) (fromMaybe Adv emptyAdv offense_adv)
		} ;
		-- [DÖMDES] <Convict>[familjens 18-årige son] <Sentence>[till ett och ett halvt års fängelse] <Offense>[för att han rånat ett äldre par]

		--
		-- Separating
		--

		Separating_V2 agent_np part_1_np part_2_adv v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP part_1_np)) (fromMaybe Adv emptyAdv part_2_adv)
		} ;
		-- <Agent>[En ny påfart] ska kunna [SEPARERA] <Part_1>[trafiken till Köpstaden] <Part_2>[från bostadstrafiken]

		Separating_V2_Pass parts_adv whole_np v2 = lin Clause {
			np = fromMaybe NP emptyNP whole_np ;
			vp = mkVP (mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)) (fromMaybe Adv emptyAdv parts_adv)
		} ;
		-- <Whole>[Riskfaktorn] kan i sin tur , menar Justin Jenk , [SPALTAS UPP] <Parts>[i två dimensioner]

		--
		-- Setting_fire
		--

		Setting_fire_V flammables_np v = lin Clause {
			np = fromMaybe NP emptyNP flammables_np ;
			vp = mkVP v
		} ;
		-- <Flammables>[Restaurangen] [BLOSSAT UPP]

		Setting_fire_V2_1 flame_np kindler_np v2 = lin Clause {
			np = fromMaybe NP emptyNP kindler_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP flame_np)
		} ;
		-- <Kindler>[man] till och med [ANLAGT] <Flame>[eld]

		Setting_fire_V2_2 flammables_np kindler_np v2 = lin Clause {
			np = fromMaybe NP emptyNP kindler_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP flammables_np)
		} ;
		-- <Kindler>[Mannen] [LUNTADE] <Flammables>[gräs]

		--
		-- Setting_out
		--

		Setting_out_V self_mover_np v = lin Clause {
			np = fromMaybe NP emptyNP self_mover_np ;
			vp = mkVP v
		} ;
		-- <Self_mover>[Jag] [SÄTTER AV]

		--
		-- Shoot_projectiles
		--

		Shoot_projectiles_V2 agent_np projectile_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP projectile_np)
		} ;
		-- <Agent>[Du] [SKJUTER IVÄG] <Projectile>[fyrverkerier]

		--
		-- Sidereal_appearance
		--

		Sidereal_appearance_V astronomical_entity_np v = lin Clause {
			np = fromMaybe NP emptyNP astronomical_entity_np ;
			vp = mkVP v
		} ;
		-- <Astronomical_entity>[solen] [GÅR NED]

		--
		-- Sign_agreement
		--

		Sign_agreement_V2 agreement_np signatory_np v2 = lin Clause {
			np = fromMaybe NP emptyNP signatory_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP agreement_np)
		} ;
		-- <Signatory>[De 19 passagerarna och besättningen] [SKRIVER UNDER] <Agreement>[deportationshandlingar]

		--
		-- Silencing
		--

		Silencing_V2 agent_np speaker_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP speaker_np)
		} ;
		-- <Agent>[någon] [TYSTAR] <Speaker>[henne]

		--
		-- Similarity
		--

		Similarity_V entity_1_np entity_2_adv v = lin Clause {
			np = fromMaybe NP emptyNP entity_1_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv entity_2_adv)
		} ;
		-- <Entity_1>[Den] [STÅR] <Entity_2>[mot det gamla skåpet i grönt med röd utsmyckning]

		--
		-- Simultaneity
		--

		Simultaneity_V events_np v = lin Clause {
			np = fromMaybe NP emptyNP events_np ;
			vp = mkVP v
		} ;
		-- <Events>[alla fester] [INFÖLL SAMTIDIGT]

		--
		-- Sleep
		--

		Sleep_V sleeper_np v = lin Clause {
			np = fromMaybe NP emptyNP sleeper_np ;
			vp = mkVP v
		} ;
		-- <Sleeper>[Lillebror Linus] [SLUMRAR]

		--
		-- Smuggling
		--

		Smuggling_V2 goods_np perpetrator_np v2 = lin Clause {
			np = fromMaybe NP emptyNP perpetrator_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP goods_np)
		} ;
		-- <Perpetrator>[hon] [SMUGGLAT IN] <Goods>[en mobiltelefon som en av fångarna skulle använda]

		Smuggling_V2_Pass goal_adv goods_np v2 = lin Clause {
			np = fromMaybe NP emptyNP goods_np ;
			vp = mkVP (mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)) (fromMaybe Adv emptyAdv goal_adv)
		} ;
		-- <Goods>[Medicinerna] [SMUGGLADES] <Goal>[till Sverige]

		--
		-- Soaking
		--

		Soaking_V2 agent_np medium_adv theme_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP theme_np)) (fromMaybe Adv emptyAdv medium_adv)
		} ;
		-- <Agent>[man] ofta [MARINERAR] <Theme>[tunna köttskivor] <Medium>[i en söt vitlöksstark sojasås]

		--
		-- Soaking_up
		--

		Soaking_up_V2 item_np substance_np v2 = lin Clause {
			np = fromMaybe NP emptyNP item_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP substance_np)
		} ;
		-- <Item>[en god pastasort som] [SUGER UPP] <Substance>[såsen]

		Soaking_up_V2_Pass item_np substance_np v2 = lin Clause {
			np = fromMaybe NP emptyNP substance_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep (fromMaybe NP emptyNP item_np))
		} ;
		-- <Substance>[Smöret] [UPPTAS] <Item>[av huden]

		--
		-- Sound_movement
		--

		Sound_movement_V sound_np v = lin Clause {
			np = fromMaybe NP emptyNP sound_np ;
			vp = mkVP v
		} ;
		-- <Sound>[Hymnen] [EKADE]

		--
		-- Speak_on_topic
		--

		Speak_on_topic_V speaker_np topic_adv v = lin Clause {
			np = fromMaybe NP emptyNP speaker_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv topic_adv)
		} ;
		-- <Speaker>[Du] [FÖRELÄSER] även <Topic>[om utbrändhet]

		--
		-- Spelling_and_pronouncing
		--

		Spelling_and_pronouncing_V2 sign_np speaker_np v2 = lin Clause {
			np = fromMaybe NP emptyNP speaker_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP sign_np)
		} ;
		-- <Speaker>[Invånarna] är oerhört snåla och kan inte [SÄGA] <Sign>[R]

		--
		-- State_continue
		--

		State_continue_V entity_np v = lin Clause {
			np = fromMaybe NP emptyNP entity_np ;
			vp = mkVP v
		} ;
		-- <Entity>[vagnen] [HÖLL]

		--
		-- Statement
		--

		Statement_V_1 message_adv speaker_np v = lin Clause {
			np = fromMaybe NP emptyNP speaker_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv message_adv)
		} ;
		-- <Message>[I Sverige döms flera hundra utvecklingsstörda till fängelse varje år] , [SKRIVER] <Speaker>[Svenska Dagbladet]

		Statement_V_2 speaker_np topic_adv v = lin Clause {
			np = fromMaybe NP emptyNP speaker_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv topic_adv)
		} ;
		-- <Speaker>[kulturministern och borgerliga debattörer som] [GLUNKAR] <Topic>[om att smalna av statstelevisionens uppdrag]

		Statement_V2 medium_np message_np v2 = lin Clause {
			np = fromMaybe NP emptyNP medium_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP message_np)
		} ;
		-- <Medium>[Andra ändringar i lagen] [STADGAR] <Message>[fängelsestraff för sexuellt ofredande av barn , handel med mänskliga organ och miljöförstörelse]

		Statement_VS_1 medium_np message_s vs = lin Clause {
			np = fromMaybe NP emptyNP medium_np ;
			vp = mkVP vs (fromMaybe S emptyS message_s)
		} ;
		-- <Medium>[Lagen] [STADGAR] <Message>[att en sådan stämma måste hållas]

		Statement_VS_2 message_s speaker_np vs = lin Clause {
			np = fromMaybe NP emptyNP speaker_np ;
			vp = mkVP vs (fromMaybe S emptyS message_s)
		} ;
		-- <Speaker>[Länsrätten] [FASTSLÅR] <Message>[att det finns inget sagt om löpande vite]

		Statement_VV message_vp speaker_np vv = lin Clause {
			np = fromMaybe NP emptyNP speaker_np ;
			vp = mkVP vv (fromMaybe VP emptyVP message_vp)
		} ;
		-- [UPPGAV] <Speaker>[militären] <Message>[att ytterligare två soldater gripits , misstänkta för inblanding i dödsskjutningen]

		Statement_V2_Pass_1 speaker_np v2 = lin Clause {
			np = emptyNP ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep (fromMaybe NP emptyNP speaker_np))
		} ;
		-- [KOMMENTERAS] <Speaker>[av läraren]

		Statement_V2_Pass_2 topic_np v2 = lin Clause {
			np = fromMaybe NP emptyNP topic_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)
		} ;
		-- <Topic>[Teorin om det öppna polarhavet] [DÖDFÖRKLARADES]

		--
		-- Storing
		--

		Storing_V2 agent_np theme_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP theme_np)
		} ;
		-- <Agent>[man] [LAGRA] på sig <Theme>[ljusa sommarminnen]

		--
		-- Studying
		--

		Studying_V institution_adv student_np v = lin Clause {
			np = fromMaybe NP emptyNP student_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv institution_adv)
		} ;
		-- <Student>[en student som] [LIGGER] <Institution>[vid universitet]

		Studying_V2 student_np subject_np v2 = lin Clause {
			np = fromMaybe NP emptyNP student_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP subject_np)
		} ;
		-- <Student>[han] och [STUDERAR] <Subject>[litteraturvetenskap]

		--
		-- Suasion
		--

		Suasion_V2S addressee_np content_s speaker_np v2s = lin Clause {
			np = fromMaybe NP emptyNP speaker_np ;
			vp = mkVP v2s (fromMaybe NP emptyNP addressee_np) (fromMaybe S emptyS content_s)
		} ;
		-- <Speaker>[jag] [ÖVERTALAT] <Addressee>[honom] och han säger någonting om <Content>[att han ska ringa och väcka mig sju på morgonen någon gång]

		Suasion_V2V addressee_np content_vp speaker_np v2v = lin Clause {
			np = fromMaybe NP emptyNP speaker_np ;
			vp = mkVP v2v (fromMaybe NP emptyNP addressee_np) (fromMaybe VP emptyVP content_vp)
		} ;
		-- <Speaker>[Hon] måste [FÖRMÅ] <Addressee>[honom] <Content>[att bli förtröstansfull]

		Suasion_V2_Pass_1 addressee_np content_adv v2 = lin Clause {
			np = fromMaybe NP emptyNP addressee_np ;
			vp = mkVP (mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)) (fromMaybe Adv emptyAdv content_adv)
		} ;
		-- <Addressee>[Han] hade [ÖVERTALATS] <Content>[till räddningsaktionen]

		Suasion_V2_Pass_2 addressee_np speaker_np v2 = lin Clause {
			np = fromMaybe NP emptyNP addressee_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep (fromMaybe NP emptyNP speaker_np))
		} ;
		-- <Addressee>[Han] hade [ÖVERTALATS] <Speaker>[av sin nu 42-åriga dotter , flickans mamma]

		--
		-- Submitting_documents
		--

		Submitting_documents_V2 authority_adv documents_np submittor_np v2 = lin Clause {
			np = fromMaybe NP emptyNP submittor_np ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP documents_np)) (fromMaybe Adv emptyAdv authority_adv)
		} ;
		-- <Submittor>[Vi] har [SÄNT IN] <Documents>[våra brev] <Authority>[till arrangörerna]

		--
		-- Success_or_failure
		--

		Success_or_failure_V agent_np goal_adv v = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv goal_adv)
		} ;
		-- <Agent>[jag] [TORSKADE] <Goal>[på ett hål]

		Success_or_failure_VV agent_np goal_vp vv = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP vv (fromMaybe VP emptyVP goal_vp)
		} ;
		-- <Agent>[Vissa cd-spelare] [KLARAR AV] <Goal>[att spela upp skivor av andra typer än cd , som exempelvis dvd eller cd-rom]

		Success_or_failure_V2_Pass agent_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)
		} ;
		-- <Agent>[hon] [MISSLYCKATS]

		--
		-- Successful_action
		--

		Successful_action_V_1 instrument_np v = lin Clause {
			np = fromMaybe NP emptyNP instrument_np ;
			vp = mkVP v
		} ;
		-- <Instrument>[En nypa socker] [GÖR SUSEN]

		Successful_action_V_2 means_np v = lin Clause {
			np = fromMaybe NP emptyNP means_np ;
			vp = mkVP v
		} ;
		-- <Means>[Skördar som] [SLOG FEL]

		--
		-- Successfully_communicate_message
		--

		Successfully_communicate_message_V2 communicator_np message_np v2 = lin Clause {
			np = fromMaybe NP emptyNP communicator_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP message_np)
		} ;
		-- <Communicator>[De] har rest runt i delstaterna för att [FÖRANKRA] <Message>[förslagen]

		--
		-- Sufficiency
		--

		Sufficiency_V enabled_situation_adv item_np v = lin Clause {
			np = fromMaybe NP emptyNP item_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv enabled_situation_adv)
		} ;
		-- <Item>[Pengarna] [RÄCKTE] förstås inte <Enabled_situation>[till allt]

		--
		-- Supply
		--

		Supply_V2_1 recipient_np supplier_np theme_adv v2 = lin Clause {
			np = fromMaybe NP emptyNP supplier_np ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP recipient_np)) (fromMaybe Adv emptyAdv theme_adv)
		} ;
		-- <Supplier>[en informatör] är autentisk ( korrekt ) inte att <Supplier>[den] [MATAR] <Recipient>[folk] <Theme>[med önskade uppgifter]

		Supply_V2_2 supplier_np theme_np v2 = lin Clause {
			np = fromMaybe NP emptyNP supplier_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP theme_np)
		} ;
		-- <Supplier>[man] alltså [TILLFÖRA] <Theme>[fukt eller fett]

		Supply_V2_Pass recipient_np v2 = lin Clause {
			np = fromMaybe NP emptyNP recipient_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)
		} ;
		-- [FÖRSÅGS] <Recipient>[kyrkorummet]

		--
		-- Supporting
		--

		Supporting_V2 supported_np supporter_np v2 = lin Clause {
			np = fromMaybe NP emptyNP supporter_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP supported_np)
		} ;
		-- <Supporter>[de] bära och [STÖTTA] <Supported>[den sjuke]

		Supporting_V2_Pass supported_np supporter_np v2 = lin Clause {
			np = fromMaybe NP emptyNP supported_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep (fromMaybe NP emptyNP supporter_np))
		} ;
		-- <Supported>[Varje enskild blomma] [STÖDS] <Supporter>[av ett smalt stödblad]

		--
		-- Surrendering
		--

		Surrendering_V authorities_adv fugitive_np v = lin Clause {
			np = fromMaybe NP emptyNP fugitive_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv authorities_adv)
		} ;
		-- <Fugitive>[De flesta av de upproriska soldaterna] [ÖVERLÄMNADE SIG] <Authorities>[till de pakistanska myndigheterna]

		--
		-- Surrendering_possession
		--

		Surrendering_possession_V2 recipient_adv surrenderer_np theme_np v2 = lin Clause {
			np = fromMaybe NP emptyNP surrenderer_np ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP theme_np)) (fromMaybe Adv emptyAdv recipient_adv)
		} ;
		-- <Surrenderer>[Danmark] tvingats [AVTRÄDA] <Theme>[Norge] <Recipient>[till Sverige]

		--
		-- Suspicion
		--

		Suspicion_V2_Pass incident_adv suspect_np v2 = lin Clause {
			np = fromMaybe NP emptyNP suspect_np ;
			vp = mkVP (mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)) (fromMaybe Adv emptyAdv incident_adv)
		} ;
		-- [MISSTÄNKLIGGJORDES] <Suspect>[han] <Incident>[efter mordet]

		--
		-- Take_place_of
		--

		Take_place_of_V2 new_np old_np role_adv v2 = lin Clause {
			np = fromMaybe NP emptyNP new_np ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP old_np)) (fromMaybe Adv emptyAdv role_adv)
		} ;
		-- <New>[Vice statsminister Mona Sahlin] [AVLÖSTE] <Old>[Jonsson] <Role>[i talarstolen]

		Take_place_of_V2_Pass new_np old_np v2 = lin Clause {
			np = fromMaybe NP emptyNP old_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep (fromMaybe NP emptyNP new_np))
		} ;
		-- <Old>[Den vinglande , kvisslige grabben på rullskridskor] [AVLÖSTES] <New>[av en raffig kvinna i Henrys egen ålder]

		--
		-- Taking
		--

		Taking_V2 agent_np source_adv theme_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP theme_np)) (fromMaybe Adv emptyAdv source_adv)
		} ;
		-- <Agent>[S] [TAR] <Theme>[röster] <Source>[från v]

		Taking_V2_Pass theme_np v2 = lin Clause {
			np = fromMaybe NP emptyNP theme_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)
		} ;
		-- <Theme>[Kostymen] kan [AVHÄMTAS]

		--
		-- Taking_sides
		--

		Taking_sides_V2_1 action_np cognizer_np v2 = lin Clause {
			np = fromMaybe NP emptyNP cognizer_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP action_np)
		} ;
		-- <Cognizer>[vpk] [MOTSATTE SIG] <Action>[en skattesänkning]

		Taking_sides_V2_2 cognizer_np issue_np v2 = lin Clause {
			np = fromMaybe NP emptyNP cognizer_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP issue_np)
		} ;
		-- <Cognizer>[Socialdemokraterna i Stadshuset] har tagit intryck av kritiken och [GÅR EMOT] <Issue>[förslaget]

		--
		-- Tasting
		--

		Tasting_V2 agent_np food_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP food_np)
		} ;
		-- <Agent>[Linda] [PROVSMAKADE] <Food>[en pralin]

		--
		-- Telling
		--

		Telling_V speaker_np topic_adv v = lin Clause {
			np = fromMaybe NP emptyNP speaker_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv topic_adv)
		} ;
		-- <Speaker>[hon] inte kan sluta [MALA PÅ] <Topic>[om hur fel han har i Oh how wrong]

		Telling_V2 addressee_adv message_np speaker_np v2 = lin Clause {
			np = fromMaybe NP emptyNP speaker_np ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP message_np)) (fromMaybe Adv emptyAdv addressee_adv)
		} ;
		-- <Message>[Halv tolv i går kväll fick jag meddelande att stallet där alla tävlingshästar var hade blåst bort] , [BERÄTTAR] <Speaker>[Rolf-Göran Bengtsson] <Addressee>[för TT]

		Telling_VS message_s speaker_np vs = lin Clause {
			np = fromMaybe NP emptyNP speaker_np ;
			vp = mkVP vs (fromMaybe S emptyS message_s)
		} ;
		-- <Speaker>[prästerskapets midjemåttunder århundradens lopp] [GER TILL KÄNNA] <Message>[att denna regel inte har följts]

		--
		-- Temporary_stay
		--

		Temporary_stay_V_1 duration_adv guest_np location_adv v = lin Clause {
			np = fromMaybe NP emptyNP guest_np ;
			vp = mkVP (mkVP (mkVP v) (fromMaybe Adv emptyAdv location_adv)) (fromMaybe Adv emptyAdv duration_adv)
		} ;
		-- <Location>[I Japan] kan <Guest>[man] [UPPEHÅLLA SIG] <Duration>[i tre månader]

		Temporary_stay_V_2 guest_np host_adv v = lin Clause {
			np = fromMaybe NP emptyNP guest_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv host_adv)
		} ;
		-- <Guest>[Issa] [SOV ÖVER] <Host>[hos mig]

		Temporary_stay_V2_Pass guest_np v2 = lin Clause {
			np = fromMaybe NP emptyNP guest_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)
		} ;
		-- <Guest>[han] [VISTAS]

		--
		-- Text_creation
		--

		Text_creation_V2 author_np text_np v2 = lin Clause {
			np = fromMaybe NP emptyNP author_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP text_np)
		} ;
		-- <Author>[Prästen] [SÄGER] <Text>[några ord av förmaning , råd och uppmuntran]

		Text_creation_VS author_np text_s vs = lin Clause {
			np = fromMaybe NP emptyNP author_np ;
			vp = mkVP vs (fromMaybe S emptyS text_s)
		} ;
		-- <Author>[Jessica Andersson] [BLOGGAR] <Text>[om stödet hemifrån]

		Text_creation_V2_Pass text_np v2 = lin Clause {
			np = fromMaybe NP emptyNP text_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)
		} ;
		-- <Text>[Bokstäver , ord och meningar] som [SKRIVS]

		--
		-- Theft
		--

		Theft_V perpetrator_np source_adv v = lin Clause {
			np = fromMaybe NP emptyNP perpetrator_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv source_adv)
		} ;
		-- <Perpetrator>[Två 13-åriga flickor] ertappas när de [SNATTAT] <Source>[på NK]

		Theft_V2 goods_np perpetrator_np victim_adv v2 = lin Clause {
			np = fromMaybe NP emptyNP perpetrator_np ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP goods_np)) (fromMaybe Adv emptyAdv victim_adv)
		} ;
		-- <Perpetrator>[En polisman med fackligt uppdrag] misstänks ha [FÖRSKINGRAT] <Goods>[en stor summa pengar] <Victim>[från sin fackförening i Västerbotten]

		--
		-- Thriving
		--

		Thriving_V entity_np v = lin Clause {
			np = fromMaybe NP emptyNP entity_np ;
			vp = mkVP v
		} ;
		-- <Entity>[Priserna på bredband] [RASAR]

		Thriving_V2_Pass entity_np v2 = lin Clause {
			np = fromMaybe NP emptyNP entity_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)
		} ;
		-- <Entity>[Bluffakturorna] [FRODAS]

		--
		-- Thwarting
		--

		Thwarting_V2_1 action_np preventing_cause_np v2 = lin Clause {
			np = fromMaybe NP emptyNP preventing_cause_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP action_np)
		} ;
		-- <Preventing_cause>[En medlemsstat hotar med att] [BLOCKERA] <Action>[utvecklingen i riktning mot en europeisk arresteringsorder]

		Thwarting_V2_2 preventing_cause_np protagonist_np v2 = lin Clause {
			np = fromMaybe NP emptyNP preventing_cause_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP protagonist_np)
		} ;
		-- <Preventing_cause>[Nervositeten] hotade att [LAMSLÅ] <Protagonist>[världen]

		Thwarting_V2_Pass protagonist_np v2 = lin Clause {
			np = fromMaybe NP emptyNP protagonist_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)
		} ;
		-- <Protagonist>[Blomdahl] [STÄNGS AV]

		--
		-- Tolerating
		--

		Tolerating_V content_adv experiencer_np v = lin Clause {
			np = fromMaybe NP emptyNP experiencer_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv content_adv)
		} ;
		-- <Experiencer>[mjukisar] som inte [STÅR PALL] <Content>[för några glas med jobbkollegorna]

		--
		-- Topic
		--

		Topic_V topic_np v = lin Clause {
			np = fromMaybe NP emptyNP topic_np ;
			vp = mkVP v
		} ;
		-- [GÄLLER] <Topic>[ett skeende som i sin komplexitet överträffar det mesta Finland har sett]

		Topic_V2_1 communicator_np topic_np v2 = lin Clause {
			np = fromMaybe NP emptyNP communicator_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP topic_np)
		} ;
		-- <Communicator>[jag] [TA UPP] <Topic>[problemet med Europaparlamentet]

		Topic_V2_2 text_np topic_np v2 = lin Clause {
			np = fromMaybe NP emptyNP text_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP topic_np)
		} ;
		-- <Text>[mitt brev] [RÖRDE] <Topic>[frågor som i hög grad var aktuella under den senaste delsessionen]

		--
		-- Travel
		--

		Travel_V_1 area_adv v = lin Clause {
			np = emptyNP ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv area_adv)
		} ;
		-- [RYGGSÄCKSLUFFAT] <Area>[i Australien och Nya Zeeland]

		Travel_V_2 goal_adv traveler_np v = lin Clause {
			np = fromMaybe NP emptyNP traveler_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv goal_adv)
		} ;
		-- <Traveler>[Göteborgs nye trafikdirektör] tänker fortsätta [TÅGPENDLA] <Goal>[till jobbet]

		Travel_V_3 mode_of_transportation_adv path_adv traveler_np v = lin Clause {
			np = fromMaybe NP emptyNP traveler_np ;
			vp = mkVP (mkVP (mkVP v) (fromMaybe Adv emptyAdv mode_of_transportation_adv)) (fromMaybe Adv emptyAdv path_adv)
		} ;
		-- [ARBETSPENDLADE] <Traveler>[500 personer] <Mode_of_transportation>[med tåg] <Path>[mellan Varberg och Göteborg]

		--
		-- Traversing
		--

		Traversing_V path_adv source_adv theme_np v = lin Clause {
			np = fromMaybe NP emptyNP theme_np ;
			vp = mkVP (mkVP (mkVP v) (fromMaybe Adv emptyAdv path_adv)) (fromMaybe Adv emptyAdv source_adv)
		} ;
		-- <Theme>[Vi] [TVÄRAR] <Path>[in] <Source>[från stigen]

		Traversing_V2 path_np theme_np v2 = lin Clause {
			np = fromMaybe NP emptyNP theme_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP path_np)
		} ;
		-- <Theme>[Du] ämnade [PASSERA] <Path>[Lund]

		--
		-- Trying_out
		--

		Trying_out_V2 entity_np evaluator_np v2 = lin Clause {
			np = fromMaybe NP emptyNP evaluator_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP entity_np)
		} ;
		-- <Evaluator>[Vi] ska [TESTKÖRA] <Entity>[verken]

		--
		-- Unattributed_information
		--

		Unattributed_information_VS_Pass reported_fact_s vs = lin Clause {
			np = emptyNP ;
			vp = mkVP vs (fromMaybe S emptyS reported_fact_s)
		} ;
		-- [SÄGS] <Reported_fact>[att han föredrog ett glas vin med vänner som S A Hedlund och Viktor Rydberg]

		--
		-- Undergo_change
		--

		Undergo_change_V entity_np v = lin Clause {
			np = fromMaybe NP emptyNP entity_np ;
			vp = mkVP v
		} ;
		-- <Entity>[Matchen] [SVÄNGDE]

		--
		-- Undergoing
		--

		Undergoing_V2 entity_np event_np v2 = lin Clause {
			np = fromMaybe NP emptyNP entity_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP event_np)
		} ;
		-- <Entity>[han] grips och får [UNDERKASTA SIG] <Event>[provtagning]

		--
		-- Undressing
		--

		Undressing_V2 clothing_np wearer_np v2 = lin Clause {
			np = fromMaybe NP emptyNP wearer_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP clothing_np)
		} ;
		-- <Wearer>[Man] [AVKLÄDDE] <Clothing>[allt]

		--
		-- Use_firearm
		--

		Use_firearm_V2 agent_np firearm_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP firearm_np)
		} ;
		-- <Agent>[terroristerna] [AVFYRAT] <Firearm>[sina maskingevär]

		--
		-- Using
		--

		Using_V2 agent_np instrument_np purpose_adv v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP instrument_np)) (fromMaybe Adv emptyAdv purpose_adv)
		} ;
		-- <Agent>[Swebus] [TILLÄMPAR] <Instrument>[en strikt företagspolicy] <Purpose>[för att behålla en drogfri arbetsmiljö]

		Using_V2_Pass instrument_np v2 = lin Clause {
			np = fromMaybe NP emptyNP instrument_np ;
			vp = mkVP (passiveVP v2) (mkAdv by8agent_Prep emptyNP)
		} ;
		-- <Instrument>[Säve flygplats] [TAS I ANSPRÅK]

		--
		-- Verdict
		--

		Verdict_V2 defendant_np finding_adv judge_np v2 = lin Clause {
			np = fromMaybe NP emptyNP judge_np ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP defendant_np)) (fromMaybe Adv emptyAdv finding_adv)
		} ;
		-- <Judge>[Tingsrätten] [FINNER] <Defendant>[honom] <Finding>[skyldig på samtliga åtalspunkter]

		--
		-- Verification
		--

		Verification_V2 inspector_np medium_adv unconfirmed_content_np v2 = lin Clause {
			np = fromMaybe NP emptyNP inspector_np ;
			vp = mkVP (mkVP v2 (fromMaybe NP emptyNP unconfirmed_content_np)) (fromMaybe Adv emptyAdv medium_adv)
		} ;
		-- <Inspector>[41-åringen] påstås ha [STYRKT] <Unconfirmed_content>[detta] <Medium>[genom falska eller felaktiga dokument]

		Verification_VS inspector_np unconfirmed_content_s vs = lin Clause {
			np = fromMaybe NP emptyNP inspector_np ;
			vp = mkVP vs (fromMaybe S emptyS unconfirmed_content_s)
		} ;
		-- <Inspector>[de] [FASTSTÄLLA] <Unconfirmed_content>[att det verkligen rörde sig om en sprängladdning av något slag]

		--
		-- Visiting
		--

		Visiting_V2 agent_np entity_np v2 = lin Clause {
			np = fromMaybe NP emptyNP agent_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP entity_np)
		} ;
		-- [BESÖKTE] <Agent>[jag] <Entity>[hemsidan för FNs klimatmöte i Köpenhamn]

		--
		-- Wagering
		--

		Wagering_VS gambler_np outcome_s vs = lin Clause {
			np = fromMaybe NP emptyNP gambler_np ;
			vp = mkVP vs (fromMaybe S emptyS outcome_s)
		} ;
		-- <Gambler>[Jag] kan [SLÅ VAD] <Outcome>[om att Häckens 16-årige Dulee Johnsson har bättre teknik än alla damer i hela Sverige]

		--
		-- Waiting
		--

		Waiting_V protagonist_np salient_entity_adv v = lin Clause {
			np = fromMaybe NP emptyNP protagonist_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv salient_entity_adv)
		} ;
		-- <Protagonist>[man] få [VÄNTA] <Salient_entity>[på sin första uppkörning]

		--
		-- Waking_up
		--

		Waking_up_V sleep_state_adv sleeper_np v = lin Clause {
			np = fromMaybe NP emptyNP sleeper_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv sleep_state_adv)
		} ;
		-- <Sleeper>[Jättarna] börjar [VAKNA] <Sleep_state>[ur sin slummer]

		--
		-- Waver_between_options
		--

		Waver_between_options_V_1 cognizer_np issue_adv v = lin Clause {
			np = fromMaybe NP emptyNP cognizer_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv issue_adv)
		} ;
		-- <Cognizer>[Jag] bara [TVEKAR] <Issue>[mellan vilken metod jag ska välja]

		Waver_between_options_V_2 cognizer_np options_adv v = lin Clause {
			np = fromMaybe NP emptyNP cognizer_np ;
			vp = mkVP (mkVP v) (fromMaybe Adv emptyAdv options_adv)
		} ;
		-- <Cognizer>[Jag] stod först och [VELADE] , <Options>[mellan vitt och svart]

		--
		-- Wearing
		--

		Wearing_V2 clothing_np wearer_np v2 = lin Clause {
			np = fromMaybe NP emptyNP wearer_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP clothing_np)
		} ;
		-- [BÄR] <Wearer>[de] dessutom <Clothing>[kilten]

		--
		-- Win_prize
		--

		Win_prize_V2 competitor_np prize_np v2 = lin Clause {
			np = fromMaybe NP emptyNP competitor_np ;
			vp = mkVP v2 (fromMaybe NP emptyNP prize_np)
		} ;
		-- <Competitor>[hon] [VANN] <Prize>[en Oscar]

		--
		-- Withdraw_from_participation
		--

		Withdraw_from_participation_V participant_np v = lin Clause {
			np = fromMaybe NP emptyNP participant_np ;
			vp = mkVP v
		} ;
		-- <Participant>[en överförmyndare] [DRAR SIG TILLBAKA]

}
