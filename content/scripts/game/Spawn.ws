
exec function spawnX(character : string, optional quantity : int, optional distance : float, optional isHostile : bool){

    var converted: string = _convert(character);
    if(converted != ""){
        _spawnFromPath(_convert(character), quantity, distance, isHostile);
    } else {
        GetWitcherPlayer().DisplayHudMessage("NPC not found");
    }

}

function _convert(path: string): string {
    switch ( path )
    {
        case "uma":
            return _mainPath("uma");
        case "avallach":
            return _mainPath("avallach");
        case "baron":
            return _mainPath("baron");
        case "emhyr":
            return _mainPath("emhyr");
        case "dandelion":
            return _mainPath("dandelion");
        case "yennefer": case "yen":
            return _mainPath("yennefer");
        case "vesemir":
            return _mainPath("vesemir");
        case "radovid":
            return _mainPath("radovid");
        case "mousesack": case "ermion":
            return _mainPath("mousesack");
        case "hjalmar":
            return _mainPath("hjalmar");
        case "eredin_main":
            return _mainPath("eredin");
        case "cirilla":
            return _mainPath("cirilla");
        case "triss":
            return _mainPath("triss");

        case "keira_metz": case "keira":
            return _mainCharPath("keira_metz");
        case "geels":
            return _mainCharPath("geels");
        case "ciri_young":
            return _mainCharPath("ciri_young");

        case "eskel":
            return _secondPath("eskel");
        case "anabelle":
            return _secondPath("anabelle");
        case "carduin":
            return _secondPath("carduin"); // mage
        case "elihal":
            return _secondPath("elihal");
        case "felicia_cori":
            return _secondPath("felicia_cori");
        case "pellar":
            return _secondPath("guslar");
        case "hallgrim":
            return _secondPath("hallgrim");
        case "hemmelfart":
            return _secondPath("hemmelfart");
        case "hjort":
            return _secondPath("hjort");
        case "ida_emean_aep_sivney":
            return _secondPath("ida_emean_aep_sivney");
        case "lady_bran":
            return _secondPath("lady_bran");
        case "lambert":
            return _secondPath("lambert");
        case "menge":
            return _secondPath("menge");
        case "priscilla":
            return _secondPath("priscilla");
        case "tamara":
            return _secondPath("tamara");
        case "udalryk":
            return _secondPath("udalryk");
        case "ves":
            return _secondPath("ves");
        case "vespula":
            return _secondPath("vespula");
        case "grenn":
            return _secondPath("bandit_grenn");
        case "zoltan":
            return _secondPath("zoltan_chivay");
        case "tomira": case "ass":
            return _secondPath("prologue_village_herbalist");

        case "eredin":
            return _npcPath("enemy_eredin");
        case "imlerith":
            return _npcPath("enemy_imlerith");
        case "caranthir":
            return _npcPath("canaris");

        case "letho":
            return _testEnemyPath("enemy_witcher");
        case "sorceress": case "yennefer_sorceress":
            return _testEnemyPath("enemy_sorceress");
        case "succubus":
            return _testEnemyPath("enemy_succubus");

        case "wildhunt_minion_mh": case "wildhunt_minion":
            return _monsterPath("wildhunt_minion_mh");
        case "wildhunt_minion_lvl1":
            return _monsterPath("wildhunt_minion_lvl1");
        case "wildhunt_minion_lvl2":
            return _monsterPath("wildhunt_minion_lvl2");

        case "wraith_mh": case "wraith":
            return _monsterPath("wraith_mh");
        case "wraith_lvl1":
            return _monsterPath("wraith_lvl1");
        case "wraith_lvl2":
            return _monsterPath("wraith_lvl2");
        case "wraith_lvl3":
            return _monsterPath("wraith_lvl3");
        case "wraith_lvl4":
            return _monsterPath("wraith_lvl4");

        case "noonwraith_mh": case "noonwraith":
            return _monsterPath("noonwraith_mh");
        case "noonwraith_lvl1":
            return _monsterPath("noonwraith_lvl1");
        case "noonwraith_lvl2":
            return _monsterPath("noonwraith_lvl2");
        case "noonwraith_lvl3":
            return _monsterPath("noonwraith_lvl3");
        case "noonwraith_lvl1__doppelganger": case "noonwraith_doppelganger":
            return _monsterPath("noonwraith_lvl1__doppelganger");

        case "pesta":
            return _monsterPath("_quest__noonwright_pesta");

        case "nightwraith_mh": case "nightwraith":
            return _monsterPath("nightwraith_mh");
        case "nightwraith_lvl1":
            return _monsterPath("nightwraith_lvl1");
        case "nightwraith_lvl2":
            return _monsterPath("nightwraith_lvl2");
        case "nightwraith_lvl3":
            return _monsterPath("nightwraith_lvl3");
        case "nightwraith_lvl1__doppelganger": case "nightwraith_doppelganger":
            return _monsterPath("nightwraith_lvl1__doppelganger");

        case "alghoul_mh": case "alghoul":
            return _monsterPath("alghoul_mh");
        case "alghoul_lvl1":
            return _monsterPath("alghoul_lvl1");
        case "alghoul_lvl2":
            return _monsterPath("alghoul_lvl2");
        case "alghoul_lvl3":
            return _monsterPath("alghoul_lvl3");
        case "alghoul_lvl4":
            return _monsterPath("alghoul_lvl4");

        case "fiend_mh": case "fiend":
            return _monsterPath("bies_mh");
        case "fiend_lvl1":
            return _monsterPath("bies_lvl1");
        case "fiend_lvl2":
            return _monsterPath("bies_lvl2");

        case "chort": case "czart": case "czart_mh":
            return _monsterPath("czart_mh");
        case "chort_lvl1": case "czart_lvl1":
            return _monsterPath("czart_lvl1");

        case "drowner_lvl1": case "drowner":
            return _monsterPath("drowner_lvl1");
        case "drowner_lvl2":
            return _monsterPath("drowner_lvl2");
        case "drowner_lvl3":
            return _monsterPath("drowner_lvl3");
        case "drowner_lvl4__dead": case "drowner_lvl4":
            return _monsterPath("drowner_lvl4__dead");

        case "fogling_mh": case "fogling":
            return _monsterPath("fogling_mh");
        case "fogling_lvl1":
            return _monsterPath("fogling_lvl1");
        case "fogling_lvl1__doppelganger": case "fogling_doppelganger":
            return _monsterPath("fogling_lvl1__doppelganger");
        case "fogling_lvl2":
            return _monsterPath("fogling_lvl2");
        case "fogling_lvl3__willowisp": case "fogling_lvl3":
            return _monsterPath("fogling_lvl3__willowisp");

        case "cockatrice_mh": case "cockatrice":
            return _monsterPath("cockatrice_mh");
        case "cockatrice_lvl1":
            return _monsterPath("cockatrice_lvl1");

        case "basilisk_lvl1": case "basilisk":
            return _monsterPath("cockatrice_lvl1");

        case "black_mage":
            return _monsterPath("black_mage_lvl1");

        case "burnedman":
            return _monsterPath("burnedman_lvl1");

        case "fugas_lvl1": case "fugas":
            return _monsterPath("fugas_lvl1");
        case "fugas_lvl2":
            return _monsterPath("fugas_lvl2");

        case "gargoyle_lvl1": case "gargoyle":
            return _monsterPath("gargoyle_lvl1");

        case "ghoul_lvl1": case "ghoul":
            return _monsterPath("ghoul_lvl1");
        case "ghoul_lvl2":
            return _monsterPath("ghoul_lvl2");
        case "ghoul_lvl3":
            return _monsterPath("ghoul_lvl3");

        case "golem_lvl1": case "golem":
            return _monsterPath("golem_lvl1");
        case "golem_lvl2":
            return _monsterPath("golem_lvl2");
        case "golem_lvl2__ifryt": case "golem_ifryt":
            return _monsterPath("golem_lvl2__ifryt");
        case "golem_lvl3":
            return _monsterPath("golem_lvl3");

        case "griffin_lvl1": case "griffin":
            return _monsterPath("gryphon_lvl1");
        case "griffin_lvl2":
            return _monsterPath("gryphon_lvl2");
        case "gryphon_lvl3__volcanic": case "griffin_lvl3":
            return _monsterPath("gryphon_lvl3__volcanic");

        case "harpy_lvl1": case "harpy":
            return _monsterPath("harpy_lvl1");
        case "harpy_lvl2":
            return _monsterPath("harpy_lvl2");
        case "harpy_lvl3": case "harpy_lvl3__erynia":
            return _monsterPath("harpy_lvl3__erynia");

        case "ice_giant":
            return _monsterPath("ice_giant");

        case "arachas_lvl1": case "arachas":
            return _monsterPath("arachas_lvl1");
        case "arachas_lvl2":
            return _monsterPath("arachas_lvl2");
        case "arachas_armored": case "arachas_lvl2__armored":
            return _monsterPath("arachas_lvl2__armored");
        case "arachas_poison": case "arachas_lvl3__poison":
            return _monsterPath("arachas_lvl3__poison");

        case "bear_berserker_lvl1": case "bear_berserker":
            return _monsterPath("bear_berserker_lvl1");
        case "bear_lvl1__black": case "bear_black": case "bear":
            return _monsterPath("bear_lvl1__black");
        case "bear_lvl2__grizzly": case "bear_grizzly":
            return _monsterPath("bear_lvl2__grizzly");
        case "bear_lvl3__white": case "bear_white":
            return _monsterPath("bear_lvl3__white");
        case "_quest__bear_grizzly_honey": case "bear_honey":
            return _monsterPath("bear_lvl3__white");


        case "nekker_lvl1": case "nekker":
            return _monsterPath("nekker_lvl1");
        case "nekker_lvl2":
            return _monsterPath("nekker_lvl2");

        case "miscreant_greater": case "botchling_monster":
            return _monsterPath("_quest__miscreant_greater");
        case "miscreant": case "botchling":
            return _monsterPath("_quest__miscreant");

        case "rotfiend_lvl1": case "rotfiend":
            return _monsterPath("rotfiend_lvl1");
        case "rotfiend_lvl2": case "rotfiend_gas":
            return _monsterPath("rotfiend_lvl2");
        case "rotfiend_lvl3":
            return _monsterPath("rotfiend_lvl3");

        case "siren_lvl1": case "siren":
            return _monsterPath("siren_lvl1");
        case "siren_lvl2__lamia": case "siren_lvl2_lamia":
            return _monsterPath("siren_lvl2__lamia");
        case "siren_mh__lamia": case "siren_lamia":
            return _monsterPath("siren_mh__lamia");

        case "wild_dog": case "wild_dog_lvl1":
            return _monsterPath("wild_dog_lvl1");

        case "elemental_dao_mh": case "elemental":
            return _monsterPath("elemental_dao_mh");
        case "elemental_dao_lvl1": case "elemental_lvl1":
            return _monsterPath("elemental_dao_lvl1");
        case "elemental_dao_lvl2": case "elemental_lvl2":
            return _monsterPath("elemental_dao_lvl2");
        case "elemental_dao_lvl3__ice": case "elemental_ice":
            return _monsterPath("elemental_dao_lvl3__ice");

        case "lessog": case "leshen":
            return _monsterPath("lessog_mh");
        case "lessog_lvl1": case "leshen_lvl1":
            return _monsterPath("lessog_lvl1");
        case "lessog_lvl2__ancient": case "leshen_ancient":
            return _monsterPath("lessog_lvl2__ancient");

        case "cyclops": case "cyclops_lvl1":
            return _monsterPath("cyclop_lvl1");
        case "cyclops_lvl2":
            return _monsterPath("cyclop_lvl2");

        case "endrega": case "endriaga_lvl1__worker":
            return _monsterPath("endriaga_lvl1__worker");
        case "endrega_tailed": case "endriaga_lvl2__tailed":
            return _monsterPath("endriaga_lvl2__tailed");
        case "endrega_spikey": case "endriaga_lvl3__spikey":
            return _monsterPath("endriaga_lvl3__spikey");

        case "forktail": case "forktail_mh":
            return _monsterPath("forktail_mh");
        case "forktail_lvl1":
            return _monsterPath("forktail_lvl1");
        case "forktail_lvl2":
            return _monsterPath("forktail_lvl2");

        case "ekima": case "vampire_ekima_mh":
            return _monsterPath("vampire_ekima_mh");
        case "ekima_lvl1": case "vampire_ekima_lvl1":
            return _monsterPath("vampire_ekima_lvl1");

        case "katakan": case "vampire_katakan_mh":
            return _monsterPath("vampire_katakan_mh");
        case "katakan_lvl1": case "vampire_katakan_lvl1":
            return _monsterPath("vampire_katakan_lvl1");

        case "werewolf_lvl1": case "werewolf":
            return _monsterPath("werewolf_lvl1");
        case "werewolf_lvl2":
            return _monsterPath("werewolf_lvl2");
        case "werewolf_lvl3": case "werewolf_lvl3__lycan":
            return _monsterPath("werewolf_lvl3__lycan");
        case "werewolf_lvl4": case "werewolf_lvl4__lycan":
            return _monsterPath("werewolf_lvl4__lycan");
        case "werewolf_quest": case "_quest__werewolf":
            return _monsterPath("_quest__werewolf");

        case "wyvern_mh": case "wyvern":
            return _monsterPath("wyvern_mh");
        case "wyvern_lvl1":
            return _monsterPath("wyvern_lvl1");
        case "wyvern_lvl2":
            return _monsterPath("wyvern_lvl2");

        case "wolf": case "wolf_lvl1":
            return _monsterPath("wolf_lvl1");
        case "wolf_summon": case "wolf_lvl1__summon":
            return _monsterPath("wolf_lvl1__summon");
        case "wolf_summon_were": case "wolf_lvl1__summon_were":
            return _monsterPath("wolf_lvl1__summon_were");
        case "wolf_alpha": case "wolf_lvl2__alpha":
            return _monsterPath("wolf_lvl2__alpha");
        case "wolf_white": case "wolf_white_lvl2":
            return _monsterPath("wolf_white_lvl2");
        case "wolf_white_alpha": case "wolf_white_lvl3__alpha":
            return _monsterPath("wolf_white_lvl3__alpha");

        case "hag_grave_barons_wife": case "hag_grave_lvl1__barons_wife":
            return _monsterPath("hag_grave_lvl1__barons_wife");
        case "gravehag": case "hag_grave__mh":
            return _monsterPath("hag_grave__mh");
        case "hag_grave_lvl1":
            return _monsterPath("hag_grave_lvl1");
        case "hag_water": case "waterhag":
            return _monsterPath("hag_water_mh");
        case "hag_water_lvl1":
            return _monsterPath("hag_water_lvl1");
        case "hag_water_lvl2":
            return _monsterPath("hag_water_lvl2");

        case "troll_cave_lvl1": case "troll":
            return _monsterPath("troll_cave_lvl1");
        case "troll_cave_lvl2":
            return _monsterPath("troll_cave_lvl2");
        case "troll_cave_lvl3":
            return _monsterPath("troll_cave_lvl3");
        case "troll_black": case "troll_cave_mh__black":
            return _monsterPath("troll_cave_mh__black");
        case "troll_ice": case "troll_cave_lvl3__ice":
            return _monsterPath("troll_cave_lvl3__ice");

        case "him":
            return _monsterPath("_quest__him");

        case "blood_flies":
            return _monsterPath("blood_flies");

        case "witch_1": case "crone_1":
            return _monsterPath("_quest__witch_1");
        case "witch_2": case "crone_2":
            return _monsterPath("_quest__witch_2");
        case "witch_3": case "crone_3":
            return _monsterPath("_quest__witch_3");

        case "wildhunt_2h_sword":
            return _wildPath("wlh_2h_sword");
        case "wildhunt_2h_spear":
            return _wildPath("wlh_2h_spear");
        case "wildhunt_2h_axe":
            return _wildPath("wlh_2h_axe");
        case "wildhunt_2h_hammer":
            return _wildPath("wlh_2h_hammer");


        case "skellige_bow":
            return _skePath("ske_bow");
        case "skellige_shield_axe_t1":
            return _skePath("ske_shield_axe_t1");
        case "skellige_shield_axe_t2":
            return _skePath("ske_shield_axe_t2");
        case "skellige_1h_axe_t1":
            return _skePath("ske_1h_axe_t1");
        case "skellige_1h_club":
            return _skePath("ske_1h_club");
        case "skellige_2h_spear":
            return _skePath("ske_2h_spear");

        case "redania_crossbow":
            return _redPath("red_crossbow");
        case "redania_2h_halberd":
            return _redPath("red_2h_halberd");
        case "redania_shield_mace":
            return _redPath("red_shield_mace");
        case "redania_1h_sword":
            return _redPath("red_1h_sword");
        case "redania_2h_halberd_elite":
            return _redPath("red_2h_halberd_elite");
        case "redania_1h_sword_elite":
            return _redPath("red_1h_sword_elite");
        case "redania_crossbow_turret_elite":
            return _redPath("red_crossbow_turret_elite");
        case "redania_shield_sword_elite":
            return _redPath("red_shield_sword_elite");
        case "redania_crossbow_elite":
            return _redPath("red_crossbow_elite");
        case "redania_2h_sword_elite":
            return _redPath("red_2h_sword_elite");

        case "novigrad_1h_sword_t1":
            return _novPath("nov_1h_sword_t1");
        case "novigrad_1h_sword_t2":
            return _novPath("nov_1h_sword_t2");
        case "novigrad_1h_mace_t2":
            return _novPath("nov_1h_mace_t2");
        case "novigrad_1h_mace_t1":
            return _novPath("nov_1h_mace_t1");
        case "novigrad_1h_club":
            return _novPath("nov_1h_club");

        case "skellige_tuirseach_sword":
            return _skeRePath("skellige_warrior_tuirseach_sword");
        case "skellige_tuirseach_shield":
            return _skeRePath("skellige_warrior_tuirseach_shield");
        case "skellige_tuirseach_axe":
            return _skeRePath("skellige_warrior_tuirseach_axe");
        case "skellige_heymaey_sword":
            return _skeRePath("skellige_warrior_heymaey_sword");
        case "skellige_heymaey_shield":
            return _skeRePath("skellige_warrior_heymaey_shield");
        case "skellige_heymaey_bow":
            return _skeRePath("skellige_warrior_heymaey_bow");
        case "skellige_craite_bow":
            return _skeRePath("skellige_warrior_craite_bow");
        case "skellige_craite_axe":
            return _skeRePath("skellige_warrior_craite_axe");
        case "skellige_craite_sword":
            return _skeRePath("skellige_warrior_craite_sword");
        case "skellige_craite_shield":
            return _skeRePath("skellige_warrior_craite_shield");
        case "skellige_brokvar_sword":
            return _skeRePath("skellige_warrior_brokvar_sword");
        case "skellige_brokvar_shield":
            return _skeRePath("skellige_warrior_brokvar_shield");
        case "skellige_brokvar_axe":
            return _skeRePath("skellige_warrior_brokvar_axe");

        case "guerilla_archer":
            return _vesPath("mq3035_ves_men_archers");
        case "guerilla_melee":
            return _vesPath("mq3035_ves_men_melee");
        case "temeria_shield":
            return _temPath("temerian_soldier_shield");
        case "temeria_bow":
            return _temPath("temerian_soldier_bow");
        case "temeria_sword":
            return _temPath("temerian_soldier_sword");

        case "redania_soldier":
            return _oxePath("redanian_soldier");
        case "redania_shield":
            return _oxePath("redanian_soldier_shield");

        case "scoiatael_man":
            return _scoPath("novigrad_scoiatael_man");
        case "scoiatael_woman":
            return _scoPath("novigrad_scoiatael_female");
        case "scoiatael_dwarf":
            return _scoPath("novigrad_scoiatael_dwarf");
        case "guerilla_roche_follower":
            return _comNmlPath("roche_soldier");
        case "guerilla_sword":
            return _comNmlPath("roche_soldier_sword");
        case "guerilla_ranger":
            return _comNmlPath("temerian_guerilla_ranger");
        case "guerilla":
            return _comNmlPath("temerian_guerilla");
        case "nilfgaard_crossbow":
            return _comNmlPath("nilfgaardian_soldier_ranged_crossbow");
        case "nilfgaard_spear":
            return _nilVesPath("sq312_commando_spear");
        case "nilfgaard_ranged":
            return _nilVesPath("sq312_commando_ranged");
        case "nilfgaard_heavy":
            return _nilVesPath("sq312_commando_heavy");
        case "nilfgaard_rider":
            return _nilVesPath("sq312_commando_melee_rider");
        case "nilfgaard_halberd":
            return _nilVesPath("sq312_commando_melee_halberd");
        case "nilfgaard_melee":
            return _nilVesPath("sq312_commando_melee");
        case "witchhunter_crossbow":
            return _inqPath("inq_crossbow");
        case "witchhunter_2h_sword":
            return _inqPath("inq_2h_sword");
        case "witchhunter_1h_mace_t1":
            return _inqPath("inq_1h_mace_t1");
        case "witchhunter_1h_sword_t1":
            return _inqPath("inq_1h_sword_t1");
        case "witchhunter_1h_mace_t2":
            return _inqPath("inq_1h_mace_t2");
        case "witchhunter_1h_sword_t2":
            return _inqPath("inq_1h_sword_t2");

        case "cow":
            return _animalPath("cow");
        case "cat":
            return _animalPath("cat");
        case "bat":
            return _animalPath("bat");
        case "chicken":
            return _animalPath("chicken");
        case "crab":
            return _animalPath("crab");
        case "crow":
            return _animalPath("crow");
        case "deer":
            return _animalPath("deer");
        case "snow_deer":
            return _animalPath("snow_deer");
        case "dog":
            return _animalPath("dog");
        case "goat":
            return _animalPath("goat");
        case "goose":
            return _animalPath("goose");
        case "goose_leader":
            return _animalPath("goose_leader");
        case "hare":
            return _animalPath("hare");
        case "mountain_goat":
            return _animalPath("mountain_goat");
        case "owl":
            return _animalPath("owl");
        case "pig":
            return _animalPath("pig");
        case "pigeon":
            return _animalPath("pigeon");
        case "ram":
            return _animalPath("ram");
        case "rat":
            return _animalPath("rat");
        case "rooster":
            return _animalPath("rooster");
        case "seagull":
            return _animalPath("seagull");
        case "sheep":
            return _animalPath("sheep");
        case "snow_rabbit":
            return _animalPath("snow_rabbit");
        case "sparrow":
            return _animalPath("sparrow");
        case "swallow":
            return _animalPath("swallow");
        case "toad":
            return _animalPath("toad");
        case "whale":
            return _animalPath("whale");
        case "fish_kingfish":
            return _animalPath("fish_kingfish");
        case "fish_mackerel":
            return _animalPath("fish_mackerel");
        case "fish_roach":
            return _animalPath("fish_roach");
        case "fish_tuna":
            return _animalPath("fish_tuna");

        case "dettlaff_monster":
            return _bloodPath("detlaff_monster");
        case "bruxa":
            return _bloodPath("bruxa");
        case "kikimore":
            return _bloodPath("kikimore");
        case "kikimore_small":
            return _bloodPath("kikimore_small");
        case "dettlaff_vampire":
            return _bloodPath("dettlaff_vampire");
        case "wight":
            return _bloodPath("wicht");
        case "spotted_wight":
            return _bloodPath("spooncollector");
        case "panther_leopard":
            return _bloodPath("panther_leopard");
        case "panther_black":
            return _bloodPath("panther_black");
        case "panther_mountain":
            return _bloodPath("panther_mountain");
        case "panther_fairy":
            return _bloodPath("panther_black_fairytale_witch");
        case "shaelmaar":
            return _bloodPath("sharley");
        case "shaelmaar_red":
            return _bloodPath("sharley_mh");
        case "shaelmaar_grey":
            return _bloodPath("sharley_q701");
        case "shaelmaar_normal":
            return _bloodPath("sharley_q701_normal_scale");
        case "nightwraith_fairy":
            return _bloodPath("nightwraith_banshee");
        case "skeleton_fairy":
            return _bloodPath("nightwraith_banshee_summon");
        case "giant_dagonet":
            return _bloodPath("q701_dagonet_giant");
        case "giant_cloud":
            return _bloodPath("q704_cloud_giant");
        case "regis_vampire":
            return _bloodPath("regis_vampire");
        case "spirit_cat":
            return _bloodPath("spirit_cat");
        case "vivienne_bird":
            return _bloodPath("vivienne_bird_form");
        case "fleder":
            return _bloodPath("fleder");
        case "fairy_werewolf":
            return _bloodPath("bigbadwolf");
        case "spriggan":
            return _bloodPath("spriggan");
        case "gravier":
            return _bloodPath("gravier");
        case "fairy_witch":
            return _bloodPath("fairytale_witch");
        case "basilisk_white":
            return _bloodPath("basilisk_white");


        case "water_hag_late":
            return _bloodLivingPath("water_hag_late");
        case "wraith_late":
            return _bloodLivingPath("water_hag_late");
        case "spider_large_late":
            return _bloodLivingPath("spider_large_late");
        case "bear_late":
            return _bloodLivingPath("bear_late");
        case "wyvern_late":
            return _bloodLivingPath("wyvern");
        case "mountain_panther_late":
            return _bloodLivingPath("mountain_panther_late");
        case "kikimora_small_mid":
            return _bloodLivingPath("kikimora_small_mid");
        case "rotfiend_mid":
            return _bloodLivingPath("rotfiend_mid");

        case "dettlaff":
            return _bloodMainPath("dettlaff");
        case "regis":
            return _bloodMainPath("regis");
        case "anna_henrietta": case "duchess":
            return _bloodMainPath("anna_henrietta");

        case "damien":
            return _bloodQuestSecPath("damien");
        case "butler": case "majordomo":
            return _bloodQuestSecPath("butler");
        case "unseen_elder":
            return _bloodSecPath("original_vampire");

        case "shani":
            return _hosMainPath("shani");
        case "ewald_borsody":
            return _hosMainPath("ewald_borsody");
        case "horst_borsody":
            return _hosMainPath("horst_borsody");
        case "olgierd":
            return _hosMainPath("olgierd");
        case "mirror_man": case "master_mirror": case "gaunter":
            return _hosMainPath("mirror_man");
        case "olgierd":
            return _hosMainPath("olgierd");

        case "caretaker":
            return _heartsSecPath("caretaker");
        case "ofir_mage":
            return _heartsSecPath("hakland_mage");

        case "olgierd_nightmare":
            return _hosMonsterPath("ethernal");
        case "nightwraith_iris":
            return _hosMonsterPath("nightwraith_iris");
        case "toad_prince":
            return _hosMonsterPath("toad");
        case "harpy_helmet":
            return _hosMonsterPath("harpy_helmet_lvl1");
        case "harpy_helmet_erynia":
            return _hosMonsterPath("harpy_helmet_lvl3__erynia");

        case "geralt":
            return "gameplay\templates\characters\player\player.w2ent";
    }
    return "";
}

function _mainPath(n: string): string {
    return "quests/main_npcs/" + n + ".w2ent";
}

function _mainCharPath(n: string): string {
    return "characters/npc_entities/main_npc/" + n + ".w2ent";
}

function _secondPath(n: string): string {
    return "quests/secondary_npcs/" + n + ".w2ent";
}

function _monsterPath(n: string): string {
    return "characters/npc_entities/monsters/" + n + ".w2ent";
}

function _wildPath(n: string): string {
    return "gameplay/templates/characters/presets/wild_hunt/" + n + ".w2ent";
}

function _skePath(n: string): string {
    return "gameplay/templates/characters/presets/skellige/" + n + ".w2ent";
}

function _redPath(n: string): string {
    return "gameplay/templates/characters/presets/redania/" + n + ".w2ent";
}

function _novPath(n: string): string {
    return "gameplay/templates/characters/presets/novigrad/" + n + ".w2ent";
}

function _skeRePath(n: string): string {
    return "gameplay/community/community_npcs/skellige/regular/" + n + ".w2ent";
}

function _vesPath(n: string) : string {
    return "quests/minor_quests/novigrad/quest_files/mq3035_emhyr/characters/" + n + ".w2ent";
}

function _temPath(n: string) : string {
    return "gameplay/community/community_npcs/prologue/regular/" + n + ".w2ent";
}

function _oxePath(n: string): string {
    return "gameplay/community/community_npcs/novigrad/oxenfurt/" + n + ".w2ent";
}

function _scoPath(n: string): string {
    return "gameplay/community/community_npcs/novigrad/scoiatael/" + n + ".w2ent";
}

function _comNmlPath(n: string): string {
    return "gameplay/community/community_npcs/nml/regular/" + n + ".w2ent";
}

function _nilVesPath(n: string): string {
  return "quests/sidequests/novigrad/quest_files/sq312_ves/characters/" + n + ".w2ent";
}

function _inqPath(n: string): string {
    return "gameplay/templates/characters/presets/inquisition/" + n + ".w2ent";
}

function _animalPath(n: string): string {
    return "characters/npc_entities/animals/" + n + ".w2ent";
}

function _testEnemyPath(n: string): string {
    return "gameplay/templates/characters/npcs/test_enemies/" + n + ".w2ent";
}

function _e3Path(n: string): string {
    return "quests/part_1/quest_files/q105_witches/characters/" + n + ".w2ent";
}

function _npcPath(n: string) : string {
    return "gameplay/templates/characters/npcs/" + n + ".w2ent";
}

function _bloodPath(n: string) : string {
    return "dlc/bob/data/characters/npc_entities/monsters/" + n + ".w2ent";
}
function _bloodMainPath(n: string): string {
    return "dlc/bob/data/characters/npc_entities/main_npc/" + n + ".w2ent";
}
function _bloodSecPath(n: string): string {
    return "dlc/bob/data/characters/npc_entities/secondary_npc/" + n + ".w2ent";
}
function _bloodQuestSecPath(n: string): string {
    return "dlc/bob/data/quests/secondary_npcs/" + n + ".w2ent";
}
function _bloodLivingPath(n: string): string {
    return "dlc/bob/data/living_world/enemy_templates/" + n + ".w2ent";
}


function _hosMainPath(n: string) : string {
    return "dlc/ep1/data/characters/npc_entities/main_npc/" + n + ".w2ent";
}
function _heartsSecPath(n: string) : string {
    return "dlc/ep1/data/characters/npc_entities/secondary_npc/" + n + ".w2ent";
}
function _hosMonsterPath(n: string) : string {
    return "dlc/ep1/data/characters/npc_entities/monsters/" + n + ".w2ent";
}



function _spawnFromPath(path : string, optional quantity : int, optional distance : float, optional isHostile : bool )
{
	var entity : CEntity;
	var pos, cameraDir, player, posFin, normal, posTemp: Vector;
	var i, sign: int;
	var s,r,x,y: float;
	var template: CEntityTemplate;
	var resourcePath: string;
    var rot : EulerAngles;
	quantity = Max(quantity, 1);

    if( distance == 0 ) distance = 3;


    rot = thePlayer.GetWorldRotation();
	rot.Yaw += 180;


	cameraDir = theCamera.GetCameraDirection();
	cameraDir.X *= distance;
	cameraDir.Y *= distance;


	player = thePlayer.GetWorldPosition();


	pos = cameraDir + player;
	pos.Z = player.Z;


	posFin.Z = pos.Z;
	s = quantity / 0.2;
	r = SqrtF(s/Pi());


	template = (CEntityTemplate)LoadResource(path,true);

	for(i=0; i<quantity; i+=1)
	{
		x = RandF() * r;
		y = RandF() * (r - x);

		if(RandRange(2))
			sign = 1;
		else
			sign = -1;

		posFin.X = pos.X + sign * x;

		if(RandRange(2))
			sign = 1;
		else
			sign = -1;

		posFin.Y = pos.Y + sign * y;

        if(theGame.GetWorld().StaticTrace( posFin + Vector(0,0,5), posFin - Vector(0,0,5), posTemp, normal ))
        {
            posFin = posTemp;
        }

        entity = theGame.CreateEntity(template, posFin, rot);

		if( isHostile )
		{
			((CActor)entity).SetTemporaryAttitudeGroup( 'hostile_to_player', AGP_Default );
		}
	}
}
