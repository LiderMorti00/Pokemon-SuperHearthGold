// Generado por tools/sinnoh/sync_trainers.py: entrenadores de Sinnoh (Platino).
// Se incluye al final de sTrainerData en data/Trainers.c.

    [738] = {
        .name = "-",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_NOTHING,
            .trainerClass = TRAINERCLASS_PKMN_TRAINER_ETHAN,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = 0,
            .battleType = SINGLE_BATTLE,
        },
    },

    [739] = {
        .name = "-",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_NOTHING,
            .trainerClass = TRAINERCLASS_PKMN_TRAINER_ETHAN,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = 0,
            .battleType = SINGLE_BATTLE,
        },
    },

    [740] = {
        .name = "-",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_NOTHING,
            .trainerClass = TRAINERCLASS_PKMN_TRAINER_ETHAN,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = 0,
            .battleType = SINGLE_BATTLE,
        },
    },

    [741] = { // black_belt_david
        .name = "David",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_BLACK_BELT,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 40,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 68,
                .species = SPECIES_STEELIX,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 40,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 69,
                .species = SPECIES_STEELIX,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Aiyaah! We’re coming out swinging\\nwith super-heavy judo chops!\\r" },
            { .type = TRMSG_LOSE, .text = "That was...\\nA complete trashing!\\n" },
            { .type = TRMSG_AFTER, .text = "I must rededicate myself to training.\\nThe road extends into infinity...\\n" },
        },
    },

    [742] = { // worker_jackson
        .name = "Jackson",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_WORKER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 10,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 67,
                .species = SPECIES_MAGNEMITE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 10,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 67,
                .species = SPECIES_MAGNEMITE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 10,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 67,
                .species = SPECIES_MAGNEMITE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Up and down you go on the lifts.\\nMe? I like to battle!\\r" },
            { .type = TRMSG_LOSE, .text = "You’ve got me feeling down!\\n" },
            { .type = TRMSG_AFTER, .text = "I can’t keep this up!\\nI’ll go back to working on the lifts.\\n" },
        },
    },

    [743] = { // worker_gary
        .name = "Gary",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_WORKER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 10,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 69,
                .species = SPECIES_MAGNEMITE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "A Pokémon Gym isn’t only about seeing\\nhow tough your Pokémon happen to be.\\rIt’s so much deeper than just that.\\nIt’s a test of you as a person.\\r" },
            { .type = TRMSG_LOSE, .text = "That move was devastating!\\n" },
            { .type = TRMSG_AFTER, .text = "I get to work all day with my\\nPokémon, and even battle sometimes.\\rI get all the fun I need every day!" },
        },
    },

    [744] = { // black_belt_ricky
        .name = "Ricky",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_BLACK_BELT,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 40,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 69,
                .species = SPECIES_STEELIX,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Steel represents an unbending spirit!\\rIf one refuses to accept defeat,\\nthe path to victory reveals itself!\\r" },
            { .type = TRMSG_LOSE, .text = "I never gave up, but still I failed to\\nwin...\\n" },
            { .type = TRMSG_AFTER, .text = "If you give up, well, that’s when\\neverything ends for you!\\n" },
        },
    },

    [745] = { // ace_trainer_cesar
        .name = "Cesar",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_ACE_TRAINER_M,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 60,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 70,
                .species = SPECIES_SCIZOR,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "An ace has the knowledge and\\nexperience of battling at high levels.\\rI’ll demonstrate what that means to\\na noob like you!\\r" },
            { .type = TRMSG_LOSE, .text = "Wow...\\nI’m in the mood to sing a lullaby...\\n" },
            { .type = TRMSG_AFTER, .text = "Your earnest enthusiasm...\\nI guess that kinda makes you an ace.\\rMaybe you’re a Trainer who has the\\npotential to surpass aces!\\n" },
        },
    },

    [746] = { // worker_gerardo
        .name = "Gerardo",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_WORKER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 10,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 68,
                .species = SPECIES_MAGNEMITE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 10,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 68,
                .species = SPECIES_MAGNEMITE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Pokémon and people have worked\\ntogether for many years.\\rLet us show you an example of that\\nhistory!\\r" },
            { .type = TRMSG_LOSE, .text = "A spectacular loss!\\nBut it’s still a loss!\\n" },
            { .type = TRMSG_AFTER, .text = "The way you helped each other...\\nThat is what made you prevail!\\n" },
        },
    },

    [747] = { // ace_trainer_breanna
        .name = "Breanna",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_ACE_TRAINER_F,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 60,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 68,
                .species = SPECIES_BRONZOR,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 60,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 68,
                .species = SPECIES_BRONZOR,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 60,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 69,
                .species = SPECIES_BRONZOR,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "By focusing on only one type, you can\\nreally see the strengths and\\fweaknesses of that Pokémon.\\r" },
            { .type = TRMSG_LOSE, .text = "My focus was too narrow minded..." },
            { .type = TRMSG_AFTER, .text = "Start by becoming friendly with your\\nPokémon. I mean really friendly.\\rIf you do that, you’ll learn naturally\\nhow you should battle with it.\\n" },
        },
    },

    [748] = { // youngster_jonathon
        .name = "Jonathon",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_YOUNGSTER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 10,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 56,
                .species = SPECIES_GEODUDE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "You avoided the long way around?\\nLet’s see why you’d do that!\\r" },
            { .type = TRMSG_LOSE, .text = "Now I understand why you decided to\\nbattle with me.\\n" },
            { .type = TRMSG_AFTER, .text = "You should go whichever way you\\nwant, shortcut or the long way!\\n" },
        },
    },

    [749] = { // youngster_darius
        .name = "Darius",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_YOUNGSTER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 10,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 55,
                .species = SPECIES_GEODUDE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 10,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 55,
                .species = SPECIES_ONIX,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Only those who want to win can\\nchallenge a Pokémon Gym!\\r" },
            { .type = TRMSG_LOSE, .text = "Gggh...\\nThis is humiliating!\\n" },
            { .type = TRMSG_AFTER, .text = "One day, I’m going to become a tough\\nTrainer like you.\\n" },
        },
    },

    [750] = { // scientist_travon
        .name = "Travon",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_SCIENTIST,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 20,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 60,
                .species = SPECIES_KADABRA,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Our mission is to implement our\\noperations without question.\\rIt is all for the new world order\\nthat our boss will lead!\\r" },
            { .type = TRMSG_LOSE, .text = "This won’t go unpunished...\\n" },
            { .type = TRMSG_AFTER, .text = "I’m willing to do anything to get ahead\\nin Team Galactic.\\rOne day you’ll see what we are all\\nabout.\\rIt’s wonder, compassion, splendor,\\nhumor, power, awe, and tragedy!\\n" },
        },
    },

    [751] = { // youngster_donny
        .name = "Donny",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_YOUNGSTER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 10,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 60,
                .species = SPECIES_GASTLY,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 10,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 61,
                .species = SPECIES_DRIFLOON,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Hey, now!\\nYou’re not even close to the door yet.\\rYou have to beat me before you can\\ngo, you know?\\r" },
            { .type = TRMSG_LOSE, .text = "Argh! I should’ve dazzled you by\\nshining my light in your eyes!\\n" },
            { .type = TRMSG_AFTER, .text = "Just walk around and look for the blue\\nmarks on the tiles.\\n" },
        },
    },

    [752] = { // lass_molly
        .name = "Molly",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_LASS,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 10,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 62,
                .species = SPECIES_MISDREAVUS,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Boo! Did I scare you?\\nThis battle will!\\r" },
            { .type = TRMSG_LOSE, .text = "Uh, whoopsie!\\nThat didn’t end well!\\n" },
            { .type = TRMSG_AFTER, .text = "Since you’re here, you might as well\\ntake on every Trainer.\\n" },
        },
    },

    [753] = { // school_kid_mackenzie
        .name = "Mackenzie",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_SCHOOL_KID_F,
            .items = { ITEM_SUPER_POTION, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 10,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 61,
                .species = SPECIES_DRIFLOON,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 10,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 61,
                .species = SPECIES_DRIFLOON,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Eek! That’s so bright!\\rSurprise attack!\\r" },
            { .type = TRMSG_LOSE, .text = "Your strength is dazzling!\\nI have to shield my eyes!\\n" },
            { .type = TRMSG_AFTER, .text = "I’m going over the reasons why I\\nlost. That way, I’ll win next time.\\n" },
        },
    },

    [754] = { // ace_trainer_allen
        .name = "Allen",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_ACE_TRAINER_M,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 60,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 61,
                .species = SPECIES_GASTLY,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 60,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 61,
                .species = SPECIES_GASTLY,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 60,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 62,
                .species = SPECIES_HAUNTER,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "What, were you just dawdling around\\nhoping I’d notice you for a battle?\\rYou know you’re going to get whupped\\nhere, don’t you?\\r" },
            { .type = TRMSG_LOSE, .text = "I kinda deserved that, didn’t I?\\nI gotta stop mouthing off like that...\\n" },
            { .type = TRMSG_AFTER, .text = "I’ll remember you and your shifty\\nPokémon, too. I’m watching you...\\n" },
        },
    },

    [755] = { // school_kid_chance
        .name = "Chance",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_SCHOOL_KID_M,
            .items = { ITEM_X_DEFENSE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 10,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 62,
                .species = SPECIES_GASTLY,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Are you lost?\\nAre you enjoying yourself?\\r" },
            { .type = TRMSG_LOSE, .text = "Let me guess.\\nYou are enjoying yourself.\\n" },
            { .type = TRMSG_AFTER, .text = "Whatever happens in life, it’s better to\\ntry to enjoy it the best one can.\\rBeing in the dark here, I came to\\nrealize that.\\n" },
        },
    },

    [756] = { // ace_trainer_catherine
        .name = "Catherine",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_ACE_TRAINER_F,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 60,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 62,
                .species = SPECIES_HAUNTER,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 60,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 62,
                .species = SPECIES_MISDREAVUS,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "What does it feel like, taking one step\\nafter another into darkness?\\r" },
            { .type = TRMSG_LOSE, .text = "You’re the kind of person who can keep\\ngoing forward even into the unknown.\\n" },
            { .type = TRMSG_AFTER, .text = "I think, sometimes, one has to make\\nmistakes to learn what is right.\\n" },
        },
    },

    [757] = { // tuber_jacky
        .name = "Jacky",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_TUBER_M,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 10,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 66,
                .species = SPECIES_BIBAREL,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "My body isn’t the only thing I\\nwork on toughening up here.\\rI also work on my Pokémon and my\\nspirit!\\r" },
            { .type = TRMSG_LOSE, .text = "Wow, Trainer! You just might be\\ntougher than our Gym Leader!\\n" },
            { .type = TRMSG_AFTER, .text = "Maybe I’ll do like Wake,\\rI mean, Crasher Wake, and wear\\nthe same kind of mask.\\n" },
        },
    },

    [758] = { // sailor_damian
        .name = "Damian",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_SAILOR,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 10,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 66,
                .species = SPECIES_WINGULL,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 10,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 66,
                .species = SPECIES_PELIPPER,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I’ve been around the world, going from\\nplace to place training Pokémon.\\rIt’s this Gym I’ve chosen to make my\\nhome!\\rYou can bet it’s tough!\\r" },
            { .type = TRMSG_LOSE, .text = "You!\\nYou’re truly top-class tough!\\n" },
            { .type = TRMSG_AFTER, .text = "If you were to go around the world,\\nI’m sure you’d meet tougher Pokémon.\\n" },
        },
    },

    [759] = { // tuber_caitlyn
        .name = "Caitlyn",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_TUBER_F,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 10,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 64,
                .species = SPECIES_AZURILL,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 10,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 65,
                .species = SPECIES_MARILL,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 10,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 66,
                .species = SPECIES_AZUMARILL,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I want to become a strong Trainer\\nlike Crasher Wake!\\r" },
            { .type = TRMSG_LOSE, .text = "Groan...\\nYou’re too much.\\n" },
            { .type = TRMSG_AFTER, .text = "Maybe I’ll do like Wake...\\rI mean, Crasher Wake, and use\\nthe same kinds of Pokémon.\\n" },
        },
    },

    [760] = { // sailor_samson
        .name = "Samson",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_SAILOR,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 10,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 65,
                .species = SPECIES_WINGULL,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 10,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 65,
                .species = SPECIES_SHELLOS,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 10,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 66,
                .species = SPECIES_GOLDUCK,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Like the raging sea, I crash down\\nand wash away everything before me!\\rThat’s just how I roll!\\r" },
            { .type = TRMSG_LOSE, .text = "That wave didn’t even wash\\nmy hands...\\n" },
            { .type = TRMSG_AFTER, .text = "I’m now becalmed like a waveless\\nsea...\\n" },
        },
    },

    [761] = { // fisherman_erick
        .name = "Erick",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_FISHERMAN,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 10,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 64,
                .species = SPECIES_GOLDEEN,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 10,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 66,
                .species = SPECIES_SEAKING,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 10,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 66,
                .species = SPECIES_GYARADOS,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I’ve landed the most fish Pokémon\\nin the world. I’m next!\\r" },
            { .type = TRMSG_LOSE, .text = "Being number one in the world doesn’t\\nmean a thing...\\n" },
            { .type = TRMSG_AFTER, .text = "I figure I got too wrapped up in\\nfishing and neglected training.\\n" },
        },
    },

    [762] = { // fisherman_walter
        .name = "Walter",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_FISHERMAN,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 10,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 67,
                .species = SPECIES_WHISCASH,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I wield the stupendous power of water!\\nDon’t think you can win!\\r" },
            { .type = TRMSG_LOSE, .text = "But the kid wins anyway!\\nI’m just bowled over!\\n" },
            { .type = TRMSG_AFTER, .text = "The water rising and falling is tricky,\\nbut don’t let it annoy you.\\rIf you lose sight of yourself, that’s\\nwhen you’re set to lose.\\n" },
        },
    },

    [763] = { // black_belt_colby
        .name = "Colby",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_BLACK_BELT,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 40,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 62,
                .species = SPECIES_MACHOKE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 40,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 63,
                .species = SPECIES_MACHOKE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 40,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 64,
                .species = SPECIES_MACHOKE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "We’re the Karate Quads!\\rI will strike a blow for love with my\\nfist! Hiyah, looooooooove!\\r" },
            { .type = TRMSG_LOSE, .text = "Argh! Crunched!\\n" },
            { .type = TRMSG_AFTER, .text = "Your Pokémon sure are tough!\\rBut our Gym Leader Maylene will\\nbreak you like a stack of bricks!\\n" },
        },
    },

    [764] = { // black_belt_darren
        .name = "Darren",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_BLACK_BELT,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 40,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 63,
                .species = SPECIES_MACHOP,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 40,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 63,
                .species = SPECIES_MEDITITE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 40,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 63,
                .species = SPECIES_MACHOKE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "We’re the Karate Quads!\\rI will strike a blow for courage with\\nmy fist! Hiyah, couraaaaaaaaaaage!\\r" },
            { .type = TRMSG_LOSE, .text = "I couldn’t force my way to victory...\\n" },
            { .type = TRMSG_AFTER, .text = "To overwhelm by force...\\nThat is my ideal beat-down style.\\rIt doesn’t seem to work that way\\nwith Pokémon, however.\\n" },
        },
    },

    [765] = { // black_belt_jeffery
        .name = "Jeffery",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_BLACK_BELT,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 40,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 64,
                .species = SPECIES_HERACROSS,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "We’re the Karate Quads!\\rI will strike a blow for tears with\\nmy fist! Hiyah, teeeeeeaaaaaaaaars!\\r" },
            { .type = TRMSG_LOSE, .text = "I’m so hungry, kid...\\nI don’t have any strength left...\\n" },
            { .type = TRMSG_AFTER, .text = "I lost because I didn’t eat\\nenough pizza.\\r...No. Anything I say will sound\\nlike I’m making excuses." },
        },
    },

    [766] = { // black_belt_rafael
        .name = "Rafael",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_BLACK_BELT,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 40,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 63,
                .species = SPECIES_CROAGUNK,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 40,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 63,
                .species = SPECIES_MACHOKE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "We’re the Karate Quads!\\rI will strike a blow for hope with my\\nfist! Hiyah, hoooooooooooooope!\\r" },
            { .type = TRMSG_LOSE, .text = "We came up short, but not by much.\\n" },
            { .type = TRMSG_AFTER, .text = "I’ll have to redo my training, though.\\nMaylene’s gonna trample me again...\\n" },
        },
    },

    [767] = { // school_kid_tiera
        .name = "Tiera",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_SCHOOL_KID_F,
            .items = { ITEM_HYPER_POTION, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 10,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 74,
                .species = SPECIES_PACHIRISU,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Can you make it to the Gym Leader?\\nYou sure now?\\r" },
            { .type = TRMSG_LOSE, .text = "The gears spin round and round...\\nI spin down and out...\\n" },
            { .type = TRMSG_AFTER, .text = "Our Gym’s trick walkways are sure\\nto make your head spin!\\n" },
        },
    },

    [768] = { // school_kid_forrest
        .name = "Forrest",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_SCHOOL_KID_M,
            .items = { ITEM_X_SPEED, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 10,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 74,
                .species = SPECIES_MAGNETON,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "This is the toughest Gym in Sinnoh.\\rThat’s why I’m here--to learn the\\nbest battle techniques around!\\r" },
            { .type = TRMSG_LOSE, .text = "...You’re tough.\\n" },
            { .type = TRMSG_AFTER, .text = "You just showed me that there’s\\nstill lots I need to learn.\\rThe world of Pokémon is deep!\\n" },
        },
    },

    [769] = { // guitarist_jerry
        .name = "Jerry",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_GUITARIST,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 10,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 72,
                .species = SPECIES_MAGNEMITE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 10,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 72,
                .species = SPECIES_LUXIO,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 10,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 72,
                .species = SPECIES_LUXIO,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I want to win!\\nThat desire I pour into my guitar!\\rI want to win!\\nThat passion compels my Pokémon!\\r" },
            { .type = TRMSG_LOSE, .text = "We couldn’t win...\\nNo encores for us...\\n" },
            { .type = TRMSG_AFTER, .text = "The Trainer’s desire to win!\\rIf you don’t lose that, there’s\\nno limit on what you can become!\\n" },
        },
    },

    [770] = { // poke_kid_meghan
        .name = "Meghan",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_POKE_KID,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 10,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 71,
                .species = SPECIES_PIKACHU,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 10,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 71,
                .species = SPECIES_PIKACHU,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 10,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 71,
                .species = SPECIES_PIKACHU,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 10,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 71,
                .species = SPECIES_PIKACHU,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Look at the way I’m dressed.\\nCan’t you see that I’m hardcore?\\r" },
            { .type = TRMSG_LOSE, .text = "I was being serious!\\nDon’t laugh at me! I mean it!\\n" },
            { .type = TRMSG_AFTER, .text = "I dress this way so I can get a feel for\\nhow electric Pokémon think.\\rWould you like to try, too?\\n" },
        },
    },

    [771] = { // ace_trainer_destiny
        .name = "Destiny",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_ACE_TRAINER_F,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 60,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 74,
                .species = SPECIES_ELECTABUZZ,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 60,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 74,
                .species = SPECIES_RAICHU,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I’m not just looking for tough\\nTrainers to battle.\\rI’ve been battling here because\\nI want to feel the rush!\\r" },
            { .type = TRMSG_LOSE, .text = "Your power is thrilling...\\nI’m thrilled down to my toes!\\n" },
            { .type = TRMSG_AFTER, .text = "I’m so glad that there are Pokémon!\\rThere isn’t much else that gives me\\nthe thrill that Pokémon do!\\n" },
        },
    },

    [772] = { // guitarist_preston
        .name = "Preston",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_GUITARIST,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 10,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 73,
                .species = SPECIES_LUXIO,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 10,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 73,
                .species = SPECIES_LUXIO,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Spark!\\rThis is what our Gym Leader did\\nto the Gym out of boredom!\\r" },
            { .type = TRMSG_LOSE, .text = "Spark...\\n" },
            { .type = TRMSG_AFTER, .text = "We were lacking energy...\\rNo, we lacked more than that. We\\ndidn’t want the win enough.\\n" },
        },
    },

    [773] = { // guitarist_lonnie
        .name = "Lonnie",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_GUITARIST,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 10,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 74,
                .species = SPECIES_RAICHU,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Whether you’re a Trainer or a\\nGuitarist, it takes dedication to\\fimprove your mad skills!\\r" },
            { .type = TRMSG_LOSE, .text = "My skills seem to have let me down.\\nI must have been out of tune!\\n" },
            { .type = TRMSG_AFTER, .text = "The way you battle, I can feel the\\nvery heart of rock and roll.\\rTell me, are you maybe a fan of\\nrocking out?\\n" },
        },
    },

    [774] = { // ace_trainer_zachery
        .name = "Zachery",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_ACE_TRAINER_M,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 60,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 74,
                .species = SPECIES_ELECTABUZZ,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 60,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 74,
                .species = SPECIES_MAGNETON,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Wow! I’m surprised you’ve come this\\nfar, but you’ll have to turn back.\\rThere isn’t any chance that you\\ncould ever beat me!\\r" },
            { .type = TRMSG_LOSE, .text = "What makes your Pokémon\\nso special?\\n" },
            { .type = TRMSG_AFTER, .text = "As a challenger, you’re one tough\\nTrainer.\\n" },
        },
    },

    [775] = { // ace_trainer_anton
        .name = "Anton",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_ACE_TRAINER_M,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 72,
                .species = SPECIES_GLALIE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "We spend all our time battling in the\\nblizzards of Snowpoint City.\\rWe’ll show you how it’s toughened\\nus up!\\r" },
            { .type = TRMSG_LOSE, .text = "What’s with your toughness?!\\n" },
            { .type = TRMSG_AFTER, .text = "You’ve battled all over, you say?\\nThat makes you tough, perhaps.\\n" },
        },
    },

    [776] = { // ace_trainer_savannah
        .name = "Savannah",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_ACE_TRAINER_F,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 60,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 70,
                .species = SPECIES_SNORUNT,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 60,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 70,
                .species = SPECIES_SNORUNT,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 60,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 71,
                .species = SPECIES_GLALIE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Is the Gym’s trick floor making you\\na little hot under the collar?\\rIf you can’t maintain your cool in\\nbattle, you’ll freeze up.\\r" },
            { .type = TRMSG_LOSE, .text = "You were surprisingly cool...\\nAt least I have my warm boots.\\n" },
            { .type = TRMSG_AFTER, .text = "Your Pokémon look so hot in battle.\\nSo hot, they’re cool! Hahah!" },
        },
    },

    [777] = { // ace_trainer_alicia
        .name = "Alicia",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_ACE_TRAINER_F,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 60,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 70,
                .species = SPECIES_SNEASEL,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 60,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 72,
                .species = SPECIES_SNEASEL,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Are you feeling all run-down?\\rBut a good Trainer is one who wins no\\nmatter the situation!\\r" },
            { .type = TRMSG_LOSE, .text = "That’s right. A good Trainer will win,\\nno matter what the situation may be.\\n" },
            { .type = TRMSG_AFTER, .text = "The Trainer’s feelings...\\nThe Pokémon’s feelings...\\rIf they are one and the same, you\\nwill never lose.\\n" },
        },
    },

    [778] = { // ace_trainer_isaiah
        .name = "Isaiah",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_ACE_TRAINER_M,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 60,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 72,
                .species = SPECIES_PILOSWINE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "My willpower was shaped and tempered\\nby howling blizzards.\\rI’ll bring it to bear on you!\\r" },
            { .type = TRMSG_LOSE, .text = "You weren’t even fazed...\\n" },
            { .type = TRMSG_AFTER, .text = "I’ve battled countless Trainers\\nand many more Pokémon still.\\rMy spirit has been hardened from all\\nthe battles I have fought." },
        },
    },

    [779] = { // ace_trainer_brenna
        .name = "Brenna",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_ACE_TRAINER_F,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 70,
                .species = SPECIES_SNEASEL,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 70,
                .species = SPECIES_SNORUNT,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 71,
                .species = SPECIES_SNOVER,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I’ve only been involved with Pokémon\\nfor a short time.\\rI managed to get this far because\\nskilled friends toughened me up!\\r" },
            { .type = TRMSG_LOSE, .text = "I can’t believe how tough you are!\\n" },
            { .type = TRMSG_AFTER, .text = "If you have wonderful friends, there\\nis no limit to how far you can go.\\n" },
        },
    },

    [780] = { // ace_trainer_sergio
        .name = "Sergio",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_ACE_TRAINER_M,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 60,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 71,
                .species = SPECIES_SNOVER,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 60,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 71,
                .species = SPECIES_SNEASEL,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "...It’s t-too cold.\\nI can’t even feel my t-tongue.\\r" },
            { .type = TRMSG_LOSE, .text = "This result...\\n...It’s cold. Bitter cold.\\n" },
            { .type = TRMSG_AFTER, .text = "The higher up you slide from, the\\nmore speed you’ll have to smash\\fthose big snowballs.\\n" },
        },
    },

    [781] = { // worker_colin
        .name = "Colin",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_WORKER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 53,
                .species = SPECIES_GEODUDE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 54,
                .species = SPECIES_MACHOP,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Fine, all righty then.\\nJust a quick battle on my break!\\r" },
            { .type = TRMSG_LOSE, .text = "Wahaha!\\nMercy, I cry mercy!\\n" },
            { .type = TRMSG_AFTER, .text = "I’d better get on back to work...\\rYou know, I’d rather be traveling\\naround with Pokémon the way you do.\\n" },
        },
    },

    [782] = { // worker_mason
        .name = "Mason",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_WORKER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 55,
                .species = SPECIES_GEODUDE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I’m gonna let you in on a secret...\\nI snuck my Pokémon to work!\\r" },
            { .type = TRMSG_LOSE, .text = "Well, now aren’t you something!\\n" },
            { .type = TRMSG_AFTER, .text = "OK, OK, time for work! I’ll work up\\na thirst with my Pokémon!\\n" },
        },
    },

    [783] = { // bug_catcher_jack
        .name = "Jack",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_BUG_CATCHER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 56,
                .species = SPECIES_WURMPLE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 57,
                .species = SPECIES_SILCOON,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 20,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 58,
                .species = SPECIES_BEAUTIFLY,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "What’s cool, you might ask? No?\\nI’ll tell you anyway: bug Pokémon!\\r" },
            { .type = TRMSG_LOSE, .text = "Don’t ignore bug Pokémon!\\nThat really bugs me!\\n" },
            { .type = TRMSG_AFTER, .text = "It would seem that coolness alone\\ndoesn’t add up to any wins...\\n" },
        },
    },

    [784] = { // bug_catcher_phillip
        .name = "Phillip",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_BUG_CATCHER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 56,
                .species = SPECIES_WURMPLE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 57,
                .species = SPECIES_CASCOON,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 20,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 58,
                .species = SPECIES_DUSTOX,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Here comes the swarm!\\r" },
            { .type = TRMSG_LOSE, .text = "Whoooh...\\n" },
            { .type = TRMSG_AFTER, .text = "There’s a Pokémon ability named Swarm.\\n" },
        },
    },

    [785] = { // psychic_kody
        .name = "Kody",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_PSYCHIC_M,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 20,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 59,
                .species = SPECIES_MEDITITE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "A strange presence has been felt...\\nIt is emanating from...you!\\r" },
            { .type = TRMSG_LOSE, .text = "Oh, no!\\nMy MEDITITE!" },
            { .type = TRMSG_AFTER, .text = "The Old Chateau... I sense...\\na particularly strong presence there." },
        },
    },

    [786] = { // psychic_lindsey
        .name = "Lindsey",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_PSYCHIC_F,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 20,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 59,
                .species = SPECIES_ABRA,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I see it...\\nI see it...\\rI see you going down in defeat...\\r" },
            { .type = TRMSG_LOSE, .text = "It is I that has gone down in defeat." },
            { .type = TRMSG_AFTER, .text = "The Old Chateau...\\nThere should be none alive in it...\\rAnd yet there is a pervasive sense of\\na presence..." },
        },
    },

    [787] = { // lass_briana
        .name = "Briana",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_LASS,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 58,
                .species = SPECIES_PACHIRISU,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "We’re just out on a power walk!\\r" },
            { .type = TRMSG_LOSE, .text = "Oh, you!\\n" },
            { .type = TRMSG_AFTER, .text = "You can’t avoid bug Pokémon ever in\\nthe forest.\\rI didn’t have any Antidotes with me,\\neither. It was the worst!\\n" },
        },
    },

    [788] = { // bug_catcher_donald
        .name = "Donald",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_BUG_CATCHER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 10,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 57,
                .species = SPECIES_BURMY,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 10,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 57,
                .species = SPECIES_BURMY,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "My senses tingle...\\nI’ve spotted a rare Pokémon!\\r" },
            { .type = TRMSG_LOSE, .text = "Awawawawah...\\n" },
            { .type = TRMSG_AFTER, .text = "I thought it was a rare Pokémon, but\\nit turned out to be just a Trainer!\\n" },
        },
    },

    [789] = { // psychic_elijah
        .name = "Elijah",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_PSYCHIC_M,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 20,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 59,
                .species = SPECIES_ABRA,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "When a Trainer and a Pokémon bond\\nas one, a wondrous power is born...\\r" },
            { .type = TRMSG_LOSE, .text = "Urmmm...\\nUrrrrmmmmm...\\n" },
            { .type = TRMSG_AFTER, .text = "There still remain many mysteries yet\\nto be solved in this strange world...\\n" },
        },
    },

    [790] = { // psychic_rachael
        .name = "Rachael",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_PSYCHIC_F,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 20,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 59,
                .species = SPECIES_PSYDUCK,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "This forest is strange, you know...\\nIt seems to fill me with energy...\\r" },
            { .type = TRMSG_LOSE, .text = "Your victory...\\nThere is nothing strange about it." },
            { .type = TRMSG_AFTER, .text = "Forests are mystifying... They seem\\nto gather such unexplainable energy." },
        },
    },

    [791] = { // worker_dillan
        .name = "Dillan",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_WORKER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 67,
                .species = SPECIES_MACHOP,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 67,
                .species = SPECIES_MACHOKE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I work in the fiery foundry.\\nYou bet I’m hot and sweaty!\\r" },
            { .type = TRMSG_LOSE, .text = "I burned out...\\n" },
            { .type = TRMSG_AFTER, .text = "I toughened up my muscles from\\nhonest work.\\rPokémon have nothing on me!\\n" },
        },
    },

    [792] = { // worker_holden
        .name = "Holden",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_WORKER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 66,
                .species = SPECIES_MAGNEMITE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 66,
                .species = SPECIES_MAGNEMITE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 66,
                .species = SPECIES_MAGNEMITE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Well! It’s not often we get a visitor\\nlike you to the ironworks!\\rLet’s mark the occasion with\\na battle!\\r" },
            { .type = TRMSG_LOSE, .text = "Fire! And once more, only because I\\nfeel like it, fiyaaaah!\\n" },
            { .type = TRMSG_AFTER, .text = "The floor panels move automatically.\\nWe’re pretty proud of them here!\\n" },
        },
    },

    [793] = { // worker_conrad
        .name = "Conrad",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_WORKER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 68,
                .species = SPECIES_MAGMAR,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Are you maybe getting annoyed by\\nwhere the floor panels take you?\\r" },
            { .type = TRMSG_LOSE, .text = "I’m going down in flames!\\n" },
            { .type = TRMSG_AFTER, .text = "The sweat of a working man is\\nbeautiful to behold...\\rThere is also beauty in the tears\\nwept from defeat...\\n" },
        },
    },

    [794] = { // ruin_maniac_karl
        .name = "Karl",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_RUIN_MANIAC,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 60,
                .species = SPECIES_GEODUDE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 61,
                .species = SPECIES_GEODUDE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 62,
                .species = SPECIES_BRONZOR,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Ancient ruins rife with the UNOWN...\\nThere has to be a meaning!\\rBut its significance eludes me, and\\nthat’s gotten me cranky!\\r" },
            { .type = TRMSG_LOSE, .text = "The search must continue!\\n" },
            { .type = TRMSG_AFTER, .text = "The significance of the ancient ruins...\\rOnly Pokémon that look like the letters\\nof some strange language...\\rCan they be trying to convey a message\\nto us?\\n" },
        },
    },

    [795] = { // psychic_bryce
        .name = "Bryce",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_PSYCHIC_M,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 72,
                .species = SPECIES_HAUNTER,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 73,
                .species = SPECIES_GARDEVOIR,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 73,
                .species = SPECIES_GENGAR,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I am a Psychic!\\nI can see your future!\\r" },
            { .type = TRMSG_LOSE, .text = "So be it! I will now divulge what\\nI know of your future... Hmm!\\n" },
            { .type = TRMSG_AFTER, .text = "I see it now!\\rYou will battle the Elite Four of the\\nPokémon League!\\n" },
        },
    },

    [796] = { // black_belt_miles
        .name = "Miles",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_BLACK_BELT,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 30,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 74,
                .species = SPECIES_MACHAMP,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "My Pokémon knows karate!\\nI’m warning you, it’s a tough one!\\r" },
            { .type = TRMSG_LOSE, .text = "I’ve met my match in strength!\\n" },
            { .type = TRMSG_AFTER, .text = "I’ve made it this far in life using the\\nkarate I learned on the Internet!\\n" },
        },
    },

    [797] = { // bird_keeper_hana
        .name = "Hana",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_BIRD_KEEPER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 73,
                .species = SPECIES_NOCTOWL,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 74,
                .species = SPECIES_TOGETIC,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I keep battling so I can soar\\never higher into the skies!\\r" },
            { .type = TRMSG_LOSE, .text = "It seems I’ve been grounded...\\n" },
            { .type = TRMSG_AFTER, .text = "The wings of freedom...\\rI know I’ll find them if I can win\\nmy way through the Pokémon League...\\n" },
        },
    },

    [798] = { // ace_trainer_mariah
        .name = "Mariah",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_ACE_TRAINER_F,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 73,
                .species = SPECIES_BLISSEY,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 73,
                .species = SPECIES_GLALIE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 74,
                .species = SPECIES_MAGNEZONE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Show me how you’ve battled to get\\nhere! Let’s do this!\\r" },
            { .type = TRMSG_LOSE, .text = "So, that’s how you battled...?\\n" },
            { .type = TRMSG_AFTER, .text = "Once you emerge from Victory Road,\\nthe Pokémon League lies directly\\fahead...\\rBut many Trainers fail to ever find\\ntheir way on Victory Road...\\n" },
        },
    },

    [799] = { // veteran_edgar
        .name = "Edgar",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_VETERAN,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 100,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 73,
                .species = SPECIES_PORYGON_Z,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 100,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 73,
                .species = SPECIES_TANGROWTH,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 100,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 73,
                .species = SPECIES_EMPOLEON,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I can sense that your Pokémon have\\na lot of trust in you.\\rYou and your Pokémon...\\nYou seem to be aglow.\\r" },
            { .type = TRMSG_LOSE, .text = "Ah, I understand it now!\\n" },
            { .type = TRMSG_AFTER, .text = "Neither Pokémon nor people live\\nforever.\\rBut it is the very frailty of life that\\nallows us to shine!" },
        },
    },

    [800] = { // dragon_tamer_clinton
        .name = "Clinton",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_DRAGON_TAMER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 72,
                .species = SPECIES_GIBLE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 73,
                .species = SPECIES_SWABLU,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 74,
                .species = SPECIES_GABITE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "This is a place where tough Trainers\\nnaturally congregate.\\rIt’s ideal for training!\\r" },
            { .type = TRMSG_LOSE, .text = "That’s why I like it here; I get to\\nbattle tough characters like you.\\n" },
            { .type = TRMSG_AFTER, .text = "When two roads diverge, you must\\nchoose the path less traveled...\\n" },
        },
    },

    [801] = { // ace_trainer_omar
        .name = "Omar",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_ACE_TRAINER_M,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 73,
                .species = SPECIES_MAMOSWINE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 73,
                .species = SPECIES_MOTHIM,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 74,
                .species = SPECIES_RAMPARDOS,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "You... One look at you tells me\\nyou’re a real contender!\\r" },
            { .type = TRMSG_LOSE, .text = "You’re as tough as you look." },
            { .type = TRMSG_AFTER, .text = "One day, people will run to the other\\nside of the road when I walk by ’em.\\rIt’s a goal of mine I’m working on." },
        },
    },

    [802] = { // ace_trainer_sydney
        .name = "Sydney",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_ACE_TRAINER_F,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 74,
                .species = SPECIES_CLEFABLE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 74,
                .species = SPECIES_TORTERRA,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "This total stranger’ll be a good way\\nto see if I have what it takes to own\\fthe Pokémon League’s Elite Four!\\r" },
            { .type = TRMSG_LOSE, .text = "That battle just now must make you\\ntougher than everyone in the world.\\n" },
            { .type = TRMSG_AFTER, .text = "It doesn’t appear as if anyone could\\neven try to stand against your might.\\rThe Elite Four should just surrender." },
        },
    },

    [803] = { // veteran_clayton
        .name = "Clayton",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_VETERAN,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 100,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 74,
                .species = SPECIES_STARAPTOR,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 100,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 74,
                .species = SPECIES_LICKILICKY,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Let me see how well your Pokémon can\\nbattle!\\r" },
            { .type = TRMSG_LOSE, .text = "Brilliant!\\n" },
            { .type = TRMSG_AFTER, .text = "Rather than navigating Victory Road,\\nI have a much better time putting\\fyoung Trainers like you to the test.\\n" },
        },
    },

    [804] = { // double_team_al_and_kay
        .name = "Al & Kay",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_DOUBLE_TEAM,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = DOUBLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 75,
                .species = SPECIES_STARAPTOR,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 75,
                .species = SPECIES_AMBIPOM,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_DBL_INTRO_1, .text = "Al: I intend to perfect my Double\\nBattle technique.\\rThat will make me better all around.\\r" },
            { .type = TRMSG_DBL_LOSE_1, .text = "Al: You! You’re an expert\\ndouble battler, too!\\n" },
            { .type = TRMSG_DBL_AFTER_1, .text = "Al: Your mastery over several\\nPokémon at once...\\rYou’re a remarkable Trainer!\\n" },
            { .type = TRMSG_DBL_1POKE_1, .text = "Al: You have but one Pokémon?\\rI would say that you are taking\\nVictory Road too lightly, kid.\\n" },
            { .type = TRMSG_DBL_INTRO_2, .text = "Kay: I want to improve my doubles\\ntechnique as much as I can.\\rThat will improve me as a Trainer.\\r" },
            { .type = TRMSG_DBL_LOSE_2, .text = "Kay: My goodness!\\nYou’re great at doubles, too!" },
            { .type = TRMSG_DBL_AFTER_2, .text = "Kay: Depending on the combinations,\\nevery kind of Pokémon can excel.\\rAt least, that’s what I think.\\n" },
            { .type = TRMSG_DBL_1POKE_2, .text = "Kay: You’re really going through\\nVictory Road with only one Pokémon?\\n" },
        },
    },

    [805] = { // double_team_jo_and_pat
        .name = "Jo & Pat",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_DOUBLE_TEAM,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = DOUBLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 75,
                .species = SPECIES_LUMINEON,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 75,
                .species = SPECIES_RAPIDASH,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_DBL_INTRO_1, .text = "Pat: It’s a doubles team of aces!\\nWe’re gonna overwhelm you!\\r" },
            { .type = TRMSG_DBL_LOSE_1, .text = "Pat: You and your Pokémon will gain\\npower by helping each other out.\\n" },
            { .type = TRMSG_DBL_AFTER_1, .text = "Pat: The combination of you and\\nyour awesome Pokémon...\\rIt’s the ultimate tag team!\\n" },
            { .type = TRMSG_DBL_1POKE_1, .text = "Pat: If you don’t mind, we’re hoping\\nfor some two-on-two battle action.\\n" },
            { .type = TRMSG_DBL_INTRO_2, .text = "Jo: We form a combination that’s\\nin perfect sync!\\rHow do you expect to counter that?\\r" },
            { .type = TRMSG_DBL_LOSE_2, .text = "Jo: You and your Pokémon make\\na beautiful combination!\\n" },
            { .type = TRMSG_DBL_AFTER_2, .text = "Jo: Yup, the way you battle is\\nfantastic!\\rYou should try to take the Elite Four\\nright now--not later!\\n" },
            { .type = TRMSG_DBL_1POKE_2, .text = "Jo: We want to have a battle\\nwithout an advantage.\\rPlease come back when you have\\nat least two Pokémon!\\n" },
        },
    },

    [806] = { // dragon_tamer_ondrej
        .name = "Ondrej",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_DRAGON_TAMER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 73,
                .species = SPECIES_ALTARIA,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 74,
                .species = SPECIES_GABITE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I take Pokémon that are tough to begin\\nwith and toughen them up even more.\\rYou can help me!\\r" },
            { .type = TRMSG_LOSE, .text = "There’s no way I could have won!\\n" },
            { .type = TRMSG_AFTER, .text = "How should I teach the most powerful\\nof the Dragon-type moves...?\\n" },
        },
    },

    [807] = { // psychic_valencia
        .name = "Valencia",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_PSYCHIC_F,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 72,
                .species = SPECIES_CHIMECHO,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 73,
                .species = SPECIES_ABSOL,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 73,
                .species = SPECIES_DUSKNOIR,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I am a Psychic!\\nI can see your past!\\r" },
            { .type = TRMSG_LOSE, .text = "Your past...\\nYou’ve been through a lot...\\n" },
            { .type = TRMSG_AFTER, .text = "Let me guess.\\nHave you met any legendary Pokémon?\\n" },
        },
    },

    [808] = { // ace_trainer_henry
        .name = "Henry",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_ACE_TRAINER_M,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 74,
                .species = SPECIES_RHYDON,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 74,
                .species = SPECIES_CARNIVINE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Victory Road... Somehow, it feels as\\nif my journey is now coming to an end.\\rBut, before the final chapter is\\nwritten, I must pen your defeat!\\r" },
            { .type = TRMSG_LOSE, .text = "That wasn’t how I planned the final\\nchapter to go in my writing class..." },
            { .type = TRMSG_AFTER, .text = "If you don’t give up, you can reach\\nyour goal.\\rThat perseverance is what’s important\\nto Trainers. That’s in my book, too." },
        },
    },

    [809] = { // ace_trainer_micah
        .name = "Micah",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_ACE_TRAINER_M,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 78,
                .species = SPECIES_METANG,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 78,
                .species = SPECIES_LUDICOLO,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "When Trainers lock eyes...\\rThat’s right! It’s time to let\\ntheir Pokémon go wild!\\r" },
            { .type = TRMSG_LOSE, .text = "Your Pokémon have a real peppy feel to\\nthem!\\n" },
            { .type = TRMSG_AFTER, .text = "Whether you’re talking to people or\\nPokémon, it’s important to always look\\fthem square in the eyes.\\n" },
        },
    },

    [810] = { // ace_trainer_brandi
        .name = "Brandi",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_ACE_TRAINER_F,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 77,
                .species = SPECIES_MAROWAK,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 79,
                .species = SPECIES_KANGASKHAN,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I will win. I am sure of it.\\nTherefore, you will lose!\\r" },
            { .type = TRMSG_LOSE, .text = "But...\\nThis isn’t possible!\\n" },
            { .type = TRMSG_AFTER, .text = "It’s not that you’ve won.\\nIt’s just that I lost!\\r...It’s all the same.\\nGo, me.\\n" },
        },
    },

    [811] = { // psychic_desiree
        .name = "Desiree",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_PSYCHIC_F,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 77,
                .species = SPECIES_MR_MIME,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 77,
                .species = SPECIES_MISMAGIUS,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Allow me to demonstrate how a true\\nPsychic conducts a battle!\\r" },
            { .type = TRMSG_LOSE, .text = "Did I get to show you anything...?\\nAnything at all?\\n" },
            { .type = TRMSG_AFTER, .text = "What can psychic power be used for?\\rWell, one mustn’t use it for committing\\ncrimes.\\rBut, I don’t use it for doing good,\\neither.\\rUsing psychic power leaves me too worn\\nout!\\n" },
        },
    },

    [812] = { // psychic_landon
        .name = "Landon",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_PSYCHIC_M,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 77,
                .species = SPECIES_SHUPPET,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 78,
                .species = SPECIES_ALAKAZAM,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Now we shall battle, and from it will\\nemerge one loser...\\r" },
            { .type = TRMSG_LOSE, .text = "...!\\n" },
            { .type = TRMSG_AFTER, .text = "I can use psychic powers, but\\nbattling isn’t so simple...\\rIt takes much more to win!\\n" },
        },
    },

    [813] = { // black_belt_eddie
        .name = "Eddie",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_BLACK_BELT,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 30,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 76,
                .species = SPECIES_MANKEY,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 30,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 77,
                .species = SPECIES_MACHOKE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 30,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 78,
                .species = SPECIES_INFERNAPE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I trained all of my gnarly Pokémon\\nat the Fighting Dojo in Kanto!\\r" },
            { .type = TRMSG_LOSE, .text = "D  n     i\\n  o  e     n...\\n" },
            { .type = TRMSG_AFTER, .text = "We’re gonna go ahead and leave...\\nYou know, go train elsewhere.\\n" },
        },
    },

    [814] = { // veteran_terrell
        .name = "Terrell",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_VETERAN,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 100,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 77,
                .species = SPECIES_PARASECT,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 100,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 77,
                .species = SPECIES_RHYDON,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 100,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 78,
                .species = SPECIES_MAGMAR,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "What it means to battle...\\nIts joys, its sorrows...\\fI’ve experienced it all!\\r" },
            { .type = TRMSG_LOSE, .text = "My sorrow deepens...\\n" },
            { .type = TRMSG_AFTER, .text = "You may be a child, but you’ve taught\\nme a whole lot. I thank you humbly.\\n" },
        },
    },

    [815] = { // ace_trainer_arthur
        .name = "Arthur",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_ACE_TRAINER_M,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 77,
                .species = SPECIES_GASTRODON,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 77,
                .species = SPECIES_BEEDRILL,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 78,
                .species = SPECIES_ELECTRODE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I want my Pokémon to get a taste of\\nthe sweetness that is victory.\\rI can’t afford to lose this one!\\r" },
            { .type = TRMSG_LOSE, .text = "This defeat has the tang of my bitter\\ntears..." },
            { .type = TRMSG_AFTER, .text = "I’m sorry, my Pokémon team...\\rI promise, I’ll get better at this so\\nyou can get a taste of victory!\\n" },
        },
    },

    [816] = { // ace_trainer_clarice
        .name = "Clarice",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_ACE_TRAINER_F,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 77,
                .species = SPECIES_SWALOT,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 77,
                .species = SPECIES_NINETALES,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 78,
                .species = SPECIES_MAGNEZONE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Let me see what you got there, kid.\\nI could give you some advice.\\r" },
            { .type = TRMSG_LOSE, .text = "You got way too much!\\n" },
            { .type = TRMSG_AFTER, .text = "Well, I don’t have any advice for\\nsomeone as tough as you!\\n" },
        },
    },

    [817] = { // psychic_deandre
        .name = "Deandre",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_PSYCHIC_M,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 78,
                .species = SPECIES_DUSKNOIR,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "A battle is a clash of willpower!\\rThe one who wants the win the most\\nwill emerge the victor!\\r" },
            { .type = TRMSG_LOSE, .text = "But... I thought I could win!\\n" },
            { .type = TRMSG_AFTER, .text = "Psychic power...\\rI know it isn’t easy to believe in\\nsomething that you can’t see.\\rBut love, friendship...\\nYou can’t see those, either.\\n" },
        },
    },

    [818] = { // psychic_kendra
        .name = "Kendra",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_PSYCHIC_F,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 76,
                .species = SPECIES_CHIMECHO,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 76,
                .species = SPECIES_HAUNTER,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 78,
                .species = SPECIES_GENGAR,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I see it!\\nI see a victory for me!\\r" },
            { .type = TRMSG_LOSE, .text = "The future...is different!\\nWhy?!\\n" },
            { .type = TRMSG_AFTER, .text = "Your efforts have altered the very\\npath of the future!\\n" },
        },
    },

    [819] = { // bird_keeper_autumn
        .name = "Autumn",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_BIRD_KEEPER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 77,
                .species = SPECIES_MURKROW,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 77,
                .species = SPECIES_XATU,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "The sharp vision of my bird Pokémon\\nwill see through your weaknesses!\\r" },
            { .type = TRMSG_LOSE, .text = "Don’t you have an Achilles’ heel?" },
            { .type = TRMSG_AFTER, .text = "I want to become stronger, but only\\nwith my favorite Pokémon.\\n" },
        },
    },

    [820] = { // dragon_tamer_joe
        .name = "Joe",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_DRAGON_TAMER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 76,
                .species = SPECIES_DRATINI,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 78,
                .species = SPECIES_GABITE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Learning how to manage tough Pokémon\\nis the shortcut to getting tough.\\r" },
            { .type = TRMSG_LOSE, .text = "I lost? But how is that possible?!\\n" },
            { .type = TRMSG_AFTER, .text = "Getting the best out of any Pokémon...\\nThat’s what makes a good Trainer...\\n" },
        },
    },

    [821] = { // black_belt_willie
        .name = "Willie",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_BLACK_BELT,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 30,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 77,
                .species = SPECIES_HERACROSS,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 30,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 77,
                .species = SPECIES_MACHAMP,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Judo chop!\\nPokémon battle!\\r" },
            { .type = TRMSG_LOSE, .text = "Wrroar!\\nJudo chop defeated!" },
            { .type = TRMSG_AFTER, .text = "I’ll forget that we lost!\\r...Wait, if I did that, we’d never\\nlearn from our mistakes...\\n" },
        },
    },

    [822] = { // veteran_brenden
        .name = "Brenden",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_VETERAN,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 100,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 77,
                .species = SPECIES_FORRETRESS,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 100,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 77,
                .species = SPECIES_GYARADOS,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 100,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 77,
                .species = SPECIES_HIPPOWDON,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I’ll wheel out some wicked Pokémon\\nand even wickeder moves!\\r" },
            { .type = TRMSG_LOSE, .text = "All I can manage now is to wheeze\\nout a few meek sighs...\\n" },
            { .type = TRMSG_AFTER, .text = "I don’t see what my age has to do\\nwith playing with Pokémon, frankly.\\n" },
        },
    },

    [823] = { // picnicker_diana
        .name = "Diana",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_PICNICKER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 55,
                .species = SPECIES_BIDOOF,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "To celebrate my getting through this\\ncave, I’m going to battle you!\\r" },
            { .type = TRMSG_LOSE, .text = "Well, I guess losing is something\\nto commemorate, too...\\n" },
            { .type = TRMSG_AFTER, .text = "Getting through that cave feels\\nlike an adventure.\\n" },
        },
    },

    [824] = { // camper_curtis
        .name = "Curtis",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_CAMPER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 54,
                .species = SPECIES_STARLY,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 54,
                .species = SPECIES_SHINX,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "We Trainers will accept challenges\\nanywhere! It’s what we do.\\r" },
            { .type = TRMSG_LOSE, .text = "Hmm...\\nInsufficiently raised?\\n" },
            { .type = TRMSG_AFTER, .text = "Pokémon can appear anywhere in a cave.\\nIt’s not like the tall grass by roads.\\n" },
        },
    },

    [825] = { // veteran_grant
        .name = "Grant",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_VETERAN,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 100,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 67,
                .species = SPECIES_RIOLU,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 100,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 67,
                .species = SPECIES_STARAPTOR,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 100,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 67,
                .species = SPECIES_GRAVELER,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I’m a Veteran, yes, but don’t you\\ndare treat me like a senior citizen!\\r" },
            { .type = TRMSG_LOSE, .text = "Grrr...\\nSo young, and yet so talented!\\n" },
            { .type = TRMSG_AFTER, .text = "I’ll always remain young at heart.\\nNever let them say you’re too old!\\n" },
        },
    },

    [826] = { // dragon_tamer_darien
        .name = "Darien",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_DRAGON_TAMER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 80,
                .species = SPECIES_DRAGONITE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "My Pokémon and I seek only victory!\\r" },
            { .type = TRMSG_LOSE, .text = "Arrrgh! My Pokémon...\\n" },
            { .type = TRMSG_AFTER, .text = "I failed my Pokémon!\\nI wasn’t prepared enough to lead it!\\rI don’t ever want my precious Pokémon\\nto be humiliated again!\\n" },
        },
    },

    [827] = { // ace_trainer_keenan
        .name = "Keenan",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_ACE_TRAINER_M,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 79,
                .species = SPECIES_PRIMEAPE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 79,
                .species = SPECIES_ELECTABUZZ,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 80,
                .species = SPECIES_BANETTE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "What it means to win battles...\\nThat is what I seek.\\fTeach me if you will!\\r" },
            { .type = TRMSG_LOSE, .text = "I grow less certain still...\\n" },
            { .type = TRMSG_AFTER, .text = "Perhaps there is no meaning to\\nvictory, but still I will battle!\\rThat is what makes me a Trainer!\\n" },
        },
    },

    [828] = { // ace_trainer_kassandra
        .name = "Kassandra",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_ACE_TRAINER_F,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 79,
                .species = SPECIES_JUMPLUFF,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 79,
                .species = SPECIES_ONIX,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 80,
                .species = SPECIES_AMPHAROS,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "You’ve come all this way for Pokémon?\\nYou must be dedicated.\\r" },
            { .type = TRMSG_LOSE, .text = "Your dedication won out.\\n" },
            { .type = TRMSG_AFTER, .text = "The Pokémon here must battle each\\nother all the time.\\rThat must be why they are so strong\\nin this area.\\n" },
        },
    },

    [829] = { // ace_trainer_skylar
        .name = "Skylar",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_ACE_TRAINER_M,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 79,
                .species = SPECIES_LOUDRED,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 80,
                .species = SPECIES_RAMPARDOS,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 79,
                .species = SPECIES_PELIPPER,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I was born in Floaroma Town.\\nI’m sure thrilled to be here.\\rIt took a long time to get here.\\nWe’re not going to lose again!\\r" },
            { .type = TRMSG_LOSE, .text = "We went down...\\nWe couldn’t stick it out...\\n" },
            { .type = TRMSG_AFTER, .text = "You can level all you want, but that\\nwon’t guarantee you any wins.\\rBut we keep trying to get better.\\nThat’s what makes us Trainers.\\n" },
        },
    },

    [830] = { // ace_trainer_natasha
        .name = "Natasha",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_ACE_TRAINER_F,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 79,
                .species = SPECIES_WIGGLYTUFF,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 80,
                .species = SPECIES_GARDEVOIR,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 79,
                .species = SPECIES_MEDICHAM,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I came here after winning my way\\nthrough the Battle Tower!\\r" },
            { .type = TRMSG_LOSE, .text = "But...\\nI had a win streak going...\\n" },
            { .type = TRMSG_AFTER, .text = "Train more at the Battle Tower...\\nThat’s what I’ll do.\\n" },
        },
    },

    [831] = { // psychic_chelsey
        .name = "Chelsey",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_PSYCHIC_F,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 79,
                .species = SPECIES_LUNATONE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 80,
                .species = SPECIES_GARDEVOIR,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I’ll use my mystifying psychic power\\nto pulverize you!\\r" },
            { .type = TRMSG_LOSE, .text = "That’s what I get for making idle\\nclaims...\\n" },
            { .type = TRMSG_AFTER, .text = "Psychic power is a mystery that\\ndefies explanation.\\rBut if everything could be explained,\\nit would be a boring world." },
        },
    },

    [832] = { // psychic_sterling
        .name = "Sterling",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_PSYCHIC_M,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 79,
                .species = SPECIES_SOLROCK,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 80,
                .species = SPECIES_GALLADE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I had a revelation this morning.\\rI knew that I would have a wonderful\\nencounter here today.\\r" },
            { .type = TRMSG_LOSE, .text = "There’s nothing wonderful about this!\\n" },
            { .type = TRMSG_AFTER, .text = "Is my sense of premonition nothing\\nto write home about?\\n" },
        },
    },

    [833] = { // bird_keeper_krystal
        .name = "Krystal",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_BIRD_KEEPER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 78,
                .species = SPECIES_STARAVIA,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 79,
                .species = SPECIES_FEAROW,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 80,
                .species = SPECIES_NOCTOWL,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "With one mighty flap, my birds blow\\naway the embers of aggression!\\r" },
            { .type = TRMSG_LOSE, .text = "We failed to get off the ground...\\n" },
            { .type = TRMSG_AFTER, .text = "The HM Fly isn’t useful inside caves.\\nIt’s such a shame.\\n" },
        },
    },

    [834] = { // black_belt_ray
        .name = "Ray",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_BLACK_BELT,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 30,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 79,
                .species = SPECIES_BRELOOM,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 30,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 79,
                .species = SPECIES_TOXICROAK,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "My Pokémon can destroy anything.\\nAnd you think you can win?!\\r" },
            { .type = TRMSG_LOSE, .text = "We weren’t up to the task!\\n" },
            { .type = TRMSG_AFTER, .text = "Even though my team could break\\nbricks and shatter boulders, they\\ffailed to dent your spirits!\\n" },
        },
    },

    [835] = { // ace_trainer_stefan
        .name = "Stefan",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_ACE_TRAINER_M,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 79,
                .species = SPECIES_PUPITAR,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 81,
                .species = SPECIES_TORTERRA,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Let me ask to see if you know.\\nWhat is time?\\r" },
            { .type = TRMSG_LOSE, .text = "Another memory...\\nIn a chain of memories.\\n" },
            { .type = TRMSG_AFTER, .text = "For me, time is the fabric woven by\\nmemories, one after another...\\n" },
        },
    },

    [836] = { // ace_trainer_jasmin
        .name = "Jasmin",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_ACE_TRAINER_F,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 81,
                .species = SPECIES_DRAPION,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Can you answer this for me?\\nWhat is space?\\r" },
            { .type = TRMSG_LOSE, .text = "And another...\\nA new memory was born.\\n" },
            { .type = TRMSG_AFTER, .text = "For me, space is where memories are\\nmade...\\n" },
        },
    },

    [837] = { // dragon_tamer_drake
        .name = "Drake",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_DRAGON_TAMER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 79,
                .species = SPECIES_GIBLE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 79,
                .species = SPECIES_GABITE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 79,
                .species = SPECIES_DRAGONAIR,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Dragons and a fiery mountain...\\nIt’s a totally classic setup!\\r" },
            { .type = TRMSG_LOSE, .text = "Losing isn’t a happy occasion...\\n" },
            { .type = TRMSG_AFTER, .text = "My Pokémon seem to like it here\\na lot.\\n" },
        },
    },

    [838] = { // black_belt_jarrett
        .name = "Jarrett",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_BLACK_BELT,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 30,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 80,
                .species = SPECIES_MACHAMP,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Hear the howl of my iron fists!\\nHowdy! I’m crazy for karate!\\r" },
            { .type = TRMSG_LOSE, .text = "Losing made it clear to me.\\nYou’re crazy about Pokémon!\\n" },
            { .type = TRMSG_AFTER, .text = "I love seeing people who love Pokémon\\nmore than anything!\\n" },
        },
    },

    [839] = { // ace_trainer_abel
        .name = "Abel",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_ACE_TRAINER_M,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 80,
                .species = SPECIES_GLALIE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 80,
                .species = SPECIES_CROBAT,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "The Trainers and Pokémon that gather\\nhere aren’t pushovers.\\fThey all have tricks up their sleeves!\\r" },
            { .type = TRMSG_LOSE, .text = "You’re not a Trainer that can be\\ntaken lightly!\\n" },
            { .type = TRMSG_AFTER, .text = "The Pokémon you’ll meet here won’t\\nmake it easy for you to move onward.\\n" },
        },
    },

    [840] = { // ace_trainer_monique
        .name = "Monique",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_ACE_TRAINER_F,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 79,
                .species = SPECIES_LUXRAY,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 80,
                .species = SPECIES_URSARING,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 79,
                .species = SPECIES_GLISCOR,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "We’re all good to go!\\nWe just have to battle now!\\r" },
            { .type = TRMSG_LOSE, .text = "Aww...\\nI’m out of useful items!\\n" },
            { .type = TRMSG_AFTER, .text = "We came completely unprepared for\\nthis little adventure...\\n" },
        },
    },

    [841] = { // veteran_harlan
        .name = "Harlan",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_VETERAN,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 100,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 79,
                .species = SPECIES_RATICATE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 100,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 79,
                .species = SPECIES_DRIFBLIM,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 100,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 80,
                .species = SPECIES_SHIFTRY,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "What do you expect to achieve here?\\nI’ll be the one to make that call!\\r" },
            { .type = TRMSG_LOSE, .text = "You’ve earned the right to be here.\\nBoth you and your Pokémon.\\n" },
            { .type = TRMSG_AFTER, .text = "You may find it odd, but the stink\\nof sulfur from the volcanic gas\\fis what draws me here.\\n" },
        },
    },

    [842] = { // dragon_tamer_kenny
        .name = "Kenny",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_DRAGON_TAMER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 79,
                .species = SPECIES_BAGON,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 79,
                .species = SPECIES_SHELGON,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 79,
                .species = SPECIES_VIBRAVA,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Are you seeking the mythical\\nPokémon, too? Let’s battle, then!\\r" },
            { .type = TRMSG_LOSE, .text = "There’s nothing left...\\n" },
            { .type = TRMSG_AFTER, .text = "The mythical Pokémon that sleeps\\ndeep in a volcano...\\rCould it be a dragon Pokémon?\\n" },
        },
    },

    [843] = { // camper_diego
        .name = "Diego",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_CAMPER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 61,
                .species = SPECIES_AIPOM,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Humph! You’re lost, aren’t you?\\nI’ll guide you if you can beat me.\\r" },
            { .type = TRMSG_LOSE, .text = "You didn’t really have to win!\\nI’m not going to guide you now!\\n" },
            { .type = TRMSG_AFTER, .text = "I’m not lost, I tell you!\\nI’m camping! That’s my story!\\n" },
        },
    },

    [844] = { // picnicker_tori
        .name = "Tori",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_PICNICKER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 61,
                .species = SPECIES_PSYDUCK,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Where am I? Am I lost? Who are you?\\nAre you a Pokémon Trainer?\\r" },
            { .type = TRMSG_LOSE, .text = "OK, so we’re both Trainers.\\nThat’s a start, right?\\n" },
            { .type = TRMSG_AFTER, .text = "I just wanted to have a picnic under\\nthe Cycling Road.\\rI didn’t think I would get lost\\nin a place like this..." },
        },
    },

    [845] = { // lass_cassidy
        .name = "Cassidy",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_LASS,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 61,
                .species = SPECIES_BUNEARY,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Hush now, lost little Pokémon, don’t\\nyou cry.\\rI’m here to take care of you!\\r" },
            { .type = TRMSG_LOSE, .text = "Sniffle... W-who’s crying now?\\n" },
            { .type = TRMSG_AFTER, .text = "Speaking of crying, I’m positive I\\nheard crying from deeper in the cave.\\n" },
        },
    },

    [846] = { // youngster_wayne
        .name = "Wayne",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_YOUNGSTER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 59,
                .species = SPECIES_STARAVIA,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 60,
                .species = SPECIES_SHELLOS,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 60,
                .species = SPECIES_PONYTA,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Did you come to play, too?\\nWanna play battle with me?\\r" },
            { .type = TRMSG_LOSE, .text = "You were just toying with me!" },
            { .type = TRMSG_AFTER, .text = "I’m playing hide-and-seek here.\\nI like some underground tag, too.\\n" },
        },
    },

    [847] = { // hiker_reginald
        .name = "Reginald",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_HIKER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 60,
                .species = SPECIES_GEODUDE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 60,
                .species = SPECIES_GEODUDE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Look! A Trainer lost in Wayward Cave!\\r" },
            { .type = TRMSG_LOSE, .text = "I strayed from the battle plan!\\n" },
            { .type = TRMSG_AFTER, .text = "Me? No, I’m not lost.\\nI live here!\\n" },
        },
    },

    [848] = { // collector_terry
        .name = "Terry",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_COLLECTOR,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 61,
                .species = SPECIES_GIBLE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "You look like you might just have\\nthe Pokémon I’ve been looking for!\\r" },
            { .type = TRMSG_LOSE, .text = "You didn’t have a single Pokémon\\nI wanted... You’re no Collector!\\n" },
            { .type = TRMSG_AFTER, .text = "I’m very picky, so I want to collect\\nevery Pokémon without anyone’s help.\\r...I do have friends, though.\\nNo, seriously! I do!\\n" },
        },
    },

    [849] = { // picnicker_ana
        .name = "Ana",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_PICNICKER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 61,
                .species = SPECIES_HOOTHOOT,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "What every good picnic needs is a\\ncute setting, good food, and a fun\\fbattle!\\r" },
            { .type = TRMSG_LOSE, .text = "That wasn’t any fun for me!\\n" },
            { .type = TRMSG_AFTER, .text = "Why have a picnic here? I don’t know.\\nThere’s no deep meaning to it." },
        },
    },

    [850] = { // camper_parker
        .name = "Parker",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_CAMPER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 60,
                .species = SPECIES_BUIZEL,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 60,
                .species = SPECIES_SHINX,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Huh? Are you lost too?\\nNo? It doesn’t matter.\\fLet’s have a quick Pokémon battle!\\r" },
            { .type = TRMSG_LOSE, .text = "Lost?\\nThere’s nothing lost about this kid!\\n" },
            { .type = TRMSG_AFTER, .text = "I got separated from my friends...\\rI’ve got my Pokémon with me, so I’m\\nOK, but...\\n" },
        },
    },

    [851] = { // ruin_maniac_gerald
        .name = "Gerald",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_RUIN_MANIAC,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 60,
                .species = SPECIES_GEODUDE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 61,
                .species = SPECIES_BRONZOR,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "In deep tunnels and caves, there’re\\na couple things you’re sure to see.\\rZUBAT and Ruin Maniacs!\\r" },
            { .type = TRMSG_LOSE, .text = "Your awesome power...\\nIt’s mystifying.\\n" },
            { .type = TRMSG_AFTER, .text = "I’ve scoured every inch of this\\nplace... Most of it while I was lost.\\rAnyway, if there’s one thing I can\\nsay, this place can’t be called ruins!\\n" },
        },
    },

    [852] = { // hiker_lorenzo
        .name = "Lorenzo",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_HIKER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 61,
                .species = SPECIES_ONIX,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Wandering around, I got hungry, so\\nI ate some wild mushrooms...\\rThey gave me gas, and now I can’t\\nstop burping! Bluurrf!\\r" },
            { .type = TRMSG_LOSE, .text = "Bleff! Hurk!\\nI think...I’m getting better...\\n" },
            { .type = TRMSG_AFTER, .text = "I hear there’s a Pokémon that has\\nmushrooms growing on its back.\\rNot around here, somewhere far away.\\nI wonder if they taste any good?" },
        },
    },

    [853] = { // camper_lawrence
        .name = "Lawrence",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_CAMPER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 67,
                .species = SPECIES_AIPOM,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 68,
                .species = SPECIES_FLOATZEL,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Yeah, I like to camp! So what?\\nLet’s battle!\\r" },
            { .type = TRMSG_LOSE, .text = "I should’ve just stuck to\\ncamping out here...\\n" },
            { .type = TRMSG_AFTER, .text = "When I’m with my Pokémon, I can camp\\njust about anywhere I want!\\n" },
        },
    },

    [854] = { // picnicker_summer
        .name = "Summer",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_PICNICKER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 69,
                .species = SPECIES_RAICHU,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "May we have a battle, please?\\rIt will be something to lighten up this\\nboring picnic with.\\r" },
            { .type = TRMSG_LOSE, .text = "We’re not going to win if we play\\naround like that...\\n" },
            { .type = TRMSG_AFTER, .text = "I’m going home to play with my\\nPokémon!\\n" },
        },
    },

    [855] = { // worker_noel
        .name = "Noel",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_WORKER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 67,
                .species = SPECIES_MAGNEMITE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 68,
                .species = SPECIES_MAGNEMITE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "The working-class hero says hi!\\r" },
            { .type = TRMSG_LOSE, .text = "The working-class hero waves bye...\\n" },
            { .type = TRMSG_AFTER, .text = "I used to work here a long time\\nago, before it shut down.\\rI worked at the ironworks near\\nFloaroma Town, too.\\rYou might say I’m drawn by iron\\nas if by magnet!\\n" },
        },
    },

    [856] = { // worker_braden
        .name = "Braden",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_WORKER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 69,
                .species = SPECIES_STEELIX,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "While I’m making sure the lifts are\\nsafe, I’ll focus on a battle with you!\\r" },
            { .type = TRMSG_LOSE, .text = "A-OK! Looks safe to me!\\nNot a problem in sight!\\n" },
            { .type = TRMSG_AFTER, .text = "I routinely check the lifts here.\\nYou can be sure of their safety!\\n" },
        },
    },

    [857] = { // hiker_damon
        .name = "Damon",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_HIKER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 68,
                .species = SPECIES_NOSEPASS,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 67,
                .species = SPECIES_ONIX,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 67,
                .species = SPECIES_STEELIX,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Every good Hiker gets a boost of\\nenergy when surrounded by boulders!\\rWrooooar! Coming at you!\\nLet me blow off some steam!\\r" },
            { .type = TRMSG_LOSE, .text = "Whew... Crazy, delicious sugar!\\nI think I’ve calmed down now...\\n" },
            { .type = TRMSG_AFTER, .text = "If it’s called a mountain, you can\\nbe sure I’ll be climbing it.\\rEven if it’s a mountain of food, I’ll\\nstill be stickin’ my flag on top!\\n" },
        },
    },

    [858] = { // hiker_maurice
        .name = "Maurice",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_HIKER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 68,
                .species = SPECIES_GRAVELER,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 68,
                .species = SPECIES_RHYHORN,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "When you’re up in the mountains,\\na battle’d do for a proper greeting!\\r" },
            { .type = TRMSG_LOSE, .text = "Yahoo!\\n" },
            { .type = TRMSG_AFTER, .text = "Actually, when you’re up in the\\nmountains, a simple hi’d do if\\fyou walk past someone.\\rOh, and this isn’t the mountains.\\n" },
        },
    },

    [859] = { // black_belt_kendal
        .name = "Kendal",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_BLACK_BELT,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 30,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 69,
                .species = SPECIES_TOXICROAK,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I’ll pound the fear of my fists into\\nyou all karate style, punk!\\r" },
            { .type = TRMSG_LOSE, .text = "I’m so sorry...\\nI got a bit mouthy there, didn’t I?\\n" },
            { .type = TRMSG_AFTER, .text = "So, I’m gonna try and shatter steel!\\rI wonder how many more years it\\nwould take for me to do that?\\n" },
        },
    },

    [860] = { // battle_girl_tyler
        .name = "Tyler",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_BATTLE_GIRL,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 30,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 69,
                .species = SPECIES_MEDICHAM,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Beating you would be my 100th\\nstraight win! Here’s to a fun battle!\\r" },
            { .type = TRMSG_LOSE, .text = "How could I lose now?!\\nThis is beyond aggravating!\\n" },
            { .type = TRMSG_AFTER, .text = "I wish I could beat Maylene in\\nVeilstone City one day...\\n" },
        },
    },

    [861] = { // worker_brendon
        .name = "Brendon",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_WORKER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 67,
                .species = SPECIES_GEODUDE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 67,
                .species = SPECIES_GEODUDE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 68,
                .species = SPECIES_MACHOKE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Hey! This is no playground!\\nIf you’re gonna play, battle me!\\r" },
            { .type = TRMSG_LOSE, .text = "You played me like an amateur!\\n" },
            { .type = TRMSG_AFTER, .text = "They were going to close this place\\nup so no one could get in.\\rBut, they left it open so people and\\nPokémon can get together here." },
        },
    },

    [862] = { // worker_quentin
        .name = "Quentin",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_WORKER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 67,
                .species = SPECIES_MAGNEMITE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 67,
                .species = SPECIES_MACHOP,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 67,
                .species = SPECIES_GRAVELER,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "The Canalave Gym folks use this place\\nas their training grounds.\\r" },
            { .type = TRMSG_LOSE, .text = "Maybe I should head to the Gym and\\nwork out there...\\n" },
            { .type = TRMSG_AFTER, .text = "Roark spent his childhood playing\\nhere, I think...\\n" },
        },
    },

    [863] = { // ace_trainer_jonah
        .name = "Jonah",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_ACE_TRAINER_M,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 68,
                .species = SPECIES_QUAGSIRE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 68,
                .species = SPECIES_STARAPTOR,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 69,
                .species = SPECIES_HIPPOPOTAS,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "If we were to battle, your Pokémon \\nwould become tougher.\\rLikewise, my Pokémon would also\\nbecome tougher.\\rIt’s all good.\\nThis calls for a battle!\\r" },
            { .type = TRMSG_LOSE, .text = "You know, I would have really enjoyed\\na win there. Would’ve been real nice.\\n" },
            { .type = TRMSG_AFTER, .text = "This mine’s been abandoned, but\\nnow it’s home to many Pokémon.\\rI guess everything finds a place\\nto call home someday..." },
        },
    },

    [864] = { // ace_trainer_brenda
        .name = "Brenda",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_ACE_TRAINER_F,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 69,
                .species = SPECIES_LOPUNNY,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 68,
                .species = SPECIES_KIRLIA,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 68,
                .species = SPECIES_MEDICHAM,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Tough Pokémon...\\nTough Trainers...\\rYou tell me, where else can I find\\na place as good as this to train?\\r" },
            { .type = TRMSG_LOSE, .text = "That was good.\\nYou’ve bonded well with your Pokémon.\\n" },
            { .type = TRMSG_AFTER, .text = "Tough Pokémon...\\nTough Trainers...\\rTheir strength comes from their bond.\\nAnd that’s something that can be\\fmade stronger anywhere.\\n" },
        },
    },

    [865] = { // scientist_fredrick
        .name = "Fredrick",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_SCIENTIST,
            .items = { ITEM_X_DEFENSE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 70,
                .species = SPECIES_KIRLIA,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 70,
                .species = SPECIES_KADABRA,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Hey, now! Our HQ is a state-of-the-\\nart facility!\\rA snot-nosed kid like you ought to\\nkeep your dirty hands to yourself!\\r" },
            { .type = TRMSG_LOSE, .text = "You and your Pokémon weren’t part\\nof my calculations...\\n" },
            { .type = TRMSG_AFTER, .text = "Our boss is trying to create an\\nentirely new world.\\rA world only for us!\\nFor Team Galactic!\\n" },
        },
    },

    [866] = { // scientist_darrius
        .name = "Darrius",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_SCIENTIST,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 71,
                .species = SPECIES_PORYGON2,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I won’t let you disrupt our research!\\nThis is for Team Galactic!\\r" },
            { .type = TRMSG_LOSE, .text = "I got whipped...\\nI look pathetic...\\n" },
            { .type = TRMSG_AFTER, .text = "Our boss is a scientific genius!\\rHe will make the power of mythical\\nPokémon his own!\\n" },
        },
    },

    [867] = { // youngster_tristan
        .name = "Tristan",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_YOUNGSTER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 53,
                .species = SPECIES_STARLY,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "You’re a Pokémon Trainer, and so am I!\\nOur eyes met, so battle we must!\\r" },
            { .type = TRMSG_LOSE, .text = "Too strong!\\nToo strong!" },
            { .type = TRMSG_AFTER, .text = "Don’t be shy about talking to\\nTrainers you’d like to battle.\\rPokémon grow stronger and stronger\\nfrom battling." },
        },
    },

    [868] = { // lass_natalie
        .name = "Natalie",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_LASS,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 53,
                .species = SPECIES_BIDOOF,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I spy, with my little eye...\\nA Trainer!\\rA battle, please!\\r" },
            { .type = TRMSG_LOSE, .text = "Oh, boo!\\nI can’t win!" },
            { .type = TRMSG_AFTER, .text = "My Pokémon are all tuckered out!\\nI need to go to a Pokémon Center!" },
        },
    },

    [869] = { // youngster_logan
        .name = "Logan",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_YOUNGSTER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 53,
                .species = SPECIES_BURMY,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Let’s have a Pokémon battle!\\nHumph! But I’m gonna win!\\r" },
            { .type = TRMSG_LOSE, .text = "You beat me?!\\nYou’ve got talent!" },
            { .type = TRMSG_AFTER, .text = "It was fun battling!\\nYup! I’m going to battle everyone!" },
        },
    },

    [870] = { // youngster_sebastian
        .name = "Sebastian",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_YOUNGSTER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 54,
                .species = SPECIES_MACHOP,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Before I challenge the Pokémon Gym\\nLeader, I’ll test my strength on you!\\r" },
            { .type = TRMSG_LOSE, .text = "I guess it means I’m not ready for\\nthe Gym challenge yet...\\n" },
            { .type = TRMSG_AFTER, .text = "I guess if you don’t have a single\\nGym Badge, you’re a total nobody...\\n" },
        },
    },

    [871] = { // youngster_michael
        .name = "Michael",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_YOUNGSTER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 54,
                .species = SPECIES_KRICKETOT,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 53,
                .species = SPECIES_ZUBAT,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I get my get-up-and-go from my\\nPokémon!\\rHere we go!\\nKRICKETOT! ZUBAT!\\r" },
            { .type = TRMSG_LOSE, .text = "Ack! My Pokémon..." },
            { .type = TRMSG_AFTER, .text = "Keep out of the grass or dodge the\\neyes of Trainers...?\\rI always have a tough time choosing.\\n" },
        },
    },

    [872] = { // lass_kaitlin
        .name = "Kaitlin",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_LASS,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 52,
                .species = SPECIES_BIDOOF,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 52,
                .species = SPECIES_BUDEW,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 52,
                .species = SPECIES_STARLY,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 52,
                .species = SPECIES_ABRA,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I found a Trainer while looking for\\nsome Pokémon!\\r" },
            { .type = TRMSG_LOSE, .text = "Hunh? You’re finished so soon?\\n" },
            { .type = TRMSG_AFTER, .text = "I walk through tall grass until I\\nfind the Pokémon I want.\\n" },
        },
    },

    [873] = { // youngster_dallas
        .name = "Dallas",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_YOUNGSTER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 54,
                .species = SPECIES_SHINX,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I’m never apart from my SHINX.\\nOur bond is strong!\\r" },
            { .type = TRMSG_LOSE, .text = "So sad...\\nAnd so crushed...\\n" },
            { .type = TRMSG_AFTER, .text = "I don’t bear grudges over losing.\\nBut I promise I’ll get tougher!\\n" },
        },
    },

    [874] = { // lass_madeline
        .name = "Madeline",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_LASS,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 54,
                .species = SPECIES_PSYDUCK,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I got a nifty-keen Gym Badge from\\nthe Gym Leader in Oreburgh City!\\r" },
            { .type = TRMSG_LOSE, .text = "Oh, I lost! Lalala!\\n" },
            { .type = TRMSG_AFTER, .text = "I’m collecting lots of Gym Badges.\\nThey’re so sparkly and pretty!\\n" },
        },
    },

    [875] = { // lass_sarah
        .name = "Sarah",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_LASS,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 54,
                .species = SPECIES_SHINX,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Oh, a weak-looking Trainer...\\nDo you want to have a go?\\r" },
            { .type = TRMSG_LOSE, .text = "Aww...\\nI should have said no.\\n" },
            { .type = TRMSG_AFTER, .text = "Oh, you’re so mean!\\nI just started training Pokémon!\\n" },
        },
    },

    [876] = { // lass_samantha
        .name = "Samantha",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_LASS,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 54,
                .species = SPECIES_BUDEW,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "May I please trouble you for a\\nbattle?\\r" },
            { .type = TRMSG_LOSE, .text = "Oh...\\nYou’re so strong...\\n" },
            { .type = TRMSG_AFTER, .text = "Maybe I could have won if my Pokémon\\nwas holding a Berry...\\n" },
        },
    },

    [877] = { // youngster_tyler
        .name = "Tyler",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_YOUNGSTER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 10,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 54,
                .species = SPECIES_MAGIKARP,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I’ll beat you with the MAGIKARP my dad\\ngave me!\\r" },
            { .type = TRMSG_LOSE, .text = "But they’re Pokémon I got from my\\ndad...\\n" },
            { .type = TRMSG_AFTER, .text = "Who gave you your first Pokémon?\\rYour first Pokémon is the one with\\nthe most fond memories, I think.\\n" },
        },
    },

    [878] = { // bug_catcher_brandon
        .name = "Brandon",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_BUG_CATCHER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 55,
                .species = SPECIES_WURMPLE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 56,
                .species = SPECIES_KRICKETOT,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Hey, hey, let me show off my bug\\nPokémon!\\r" },
            { .type = TRMSG_LOSE, .text = "I’m not going to be able to explain\\nthe charms of bug Pokémon this way!\\n" },
            { .type = TRMSG_AFTER, .text = "Bug Pokémon grow quickly, and they do\\nstuff like poison and paralyze, and\\fthey’re cute and yet cool.\\rYou gotta believe me. They’re good!\\n" },
        },
    },

    [879] = { // aroma_lady_taylor
        .name = "Taylor",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_AROMA_LADY,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 55,
                .species = SPECIES_BUDEW,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 56,
                .species = SPECIES_CHERUBI,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "What kind of person are you, to be\\ndrawn here by the scent of flowers?\\r" },
            { .type = TRMSG_LOSE, .text = "It was a strong Trainer who was drawn\\nhere by the scent of flowers!\\n" },
            { .type = TRMSG_AFTER, .text = "By the way, have you collected new\\napps from the Pokétch Company?\\n" },
        },
    },

    [880] = { // twins_liv_and_liz
        .name = "Liv & Liz",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_TWINS,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS,
            .battleType = DOUBLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 56,
                .species = SPECIES_PACHIRISU,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 56,
                .species = SPECIES_PACHIRISU,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_DBL_INTRO_1, .text = "Liv: We can one-shot this Trainer,\\ncan’t we, Liz?\\r" },
            { .type = TRMSG_DBL_LOSE_1, .text = "Liv: Oh, oh, oh?\\n" },
            { .type = TRMSG_DBL_AFTER_1, .text = "Liv: This Trainer...will brag about\\nbeating us, Liz.\\n" },
            { .type = TRMSG_DBL_1POKE_1, .text = "Liv: You only have one Pokémon?\\nThat’s so boring!" },
            { .type = TRMSG_DBL_INTRO_2, .text = "Liz: We’re the strongest in our\\nclass!\\r" },
            { .type = TRMSG_DBL_LOSE_2, .text = "Liz: Oh, but, wait!\\n" },
            { .type = TRMSG_DBL_AFTER_2, .text = "Liz: This Trainer...is really happy about\\nbeating us, Liv.\\n" },
            { .type = TRMSG_DBL_1POKE_2, .text = "Liz: Um, will you battle with us?\\nMe and Liv?\\n" },
        },
    },

    [881] = { // hiker_daniel
        .name = "Daniel",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_HIKER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 55,
                .species = SPECIES_GEODUDE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 56,
                .species = SPECIES_GEODUDE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 56,
                .species = SPECIES_GEODUDE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "There’s no mountain here, but I’m\\ndressed to hike! Gahaha! Here goes!\\r" },
            { .type = TRMSG_LOSE, .text = "Oh, yeah!\\nA refreshing battle that was!\\n" },
            { .type = TRMSG_AFTER, .text = "You can find the same kinds of\\nPokémon in all sorts of places.\\rThere’s no law saying a Hiker can’t\\ngo searching off in the mountains!\\n" },
        },
    },

    [882] = { // aroma_lady_elizabeth
        .name = "Elizabeth",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_AROMA_LADY,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 57,
                .species = SPECIES_ROSELIA,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I love Pokémon that smell sweet.\\nLike this one--get a whiff of this!\\r" },
            { .type = TRMSG_LOSE, .text = "Did you understand what I meant?\\nDidn’t my Pokémon smell nice?\\n" },
            { .type = TRMSG_AFTER, .text = "If you plant lots of Berries, you\\ncan be surrounded by sweet scents.\\n" },
        },
    },

    [883] = { // camper_jacob
        .name = "Jacob",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_CAMPER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 57,
                .species = SPECIES_PONYTA,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Hey, how about you and me battle before\\nI go into Eterna Forest?\\r" },
            { .type = TRMSG_LOSE, .text = "That really dampened my spirits.\\n" },
            { .type = TRMSG_AFTER, .text = "I heard that really tough Pokémon\\nappear in Eterna Forest.\\rI need to be more prepared than this!\\n" },
        },
    },

    [884] = { // picnicker_siena
        .name = "Siena",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_PICNICKER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 56,
                .species = SPECIES_BIDOOF,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 56,
                .species = SPECIES_PACHIRISU,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "What kinds of Pokémon live around\\nhere, I wonder?\\r" },
            { .type = TRMSG_LOSE, .text = "I’m shocked!\\nHow did I lose?\\n" },
            { .type = TRMSG_AFTER, .text = "I know all sorts of things about\\nPokémon!\\rLet’s see... There are males and\\nfemales, and some aren’t either!\\n" },
        },
    },

    [885] = { // hiker_nicholas
        .name = "Nicholas",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_HIKER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 57,
                .species = SPECIES_ONIX,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I’ve lost my way...\\nHere of all places...\\r" },
            { .type = TRMSG_LOSE, .text = "Having lost his way, the Trainer lost\\nthe battle too...\\n" },
            { .type = TRMSG_AFTER, .text = "From being lost in the mountains so\\nlong, I became a Hiker...\\n" },
        },
    },

    [886] = { // battle_girl_kelsey
        .name = "Kelsey",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_BATTLE_GIRL,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 20,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 58,
                .species = SPECIES_MACHOP,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Hiyah!\\nThere’s no holding anything back!\\r" },
            { .type = TRMSG_LOSE, .text = "I... I concede!\\nI think you’re on a different level...\\n" },
            { .type = TRMSG_AFTER, .text = "Hiyah! You put me in my place!\\nI appreciate it!\\n" },
        },
    },

    [887] = { // picnicker_karina
        .name = "Karina",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_PICNICKER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 57,
                .species = SPECIES_PIPLUP,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Oh, I don’t know.\\nShould I play a little?\\r" },
            { .type = TRMSG_LOSE, .text = "Oh, boo!\\nHow insulting!\\n" },
            { .type = TRMSG_AFTER, .text = "Listen very closely...\\nCan you hear the cries of Pokémon?\\n" },
        },
    },

    [888] = { // camper_zackary
        .name = "Zackary",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_CAMPER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 57,
                .species = SPECIES_AIPOM,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "It’s a long way between Floaroma\\nand Eterna City. So, let’s battle!\\r" },
            { .type = TRMSG_LOSE, .text = "Wawawaah!\\nI’m out of Pokémon that can go!\\n" },
            { .type = TRMSG_AFTER, .text = "Camping with Pokémon!\\nDo you have any idea how fun that is?\\n" },
        },
    },

    [889] = { // fisherman_andrew
        .name = "Andrew",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_FISHERMAN,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 54,
                .species = SPECIES_MAGIKARP,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 55,
                .species = SPECIES_MAGIKARP,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 56,
                .species = SPECIES_MAGIKARP,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 56,
                .species = SPECIES_MAGIKARP,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 57,
                .species = SPECIES_MAGIKARP,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 58,
                .species = SPECIES_MAGIKARP,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Nothing’s biting...\\nI could use a break, I suppose.\\r" },
            { .type = TRMSG_LOSE, .text = "Well, that didn’t do anything for me...\\n" },
            { .type = TRMSG_AFTER, .text = "!\\rYank your fishing rod when that\\nappears. That’s how you fish.\\n" },
        },
    },

    [890] = { // fisherman_joseph
        .name = "Joseph",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_FISHERMAN,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 59,
                .species = SPECIES_GOLDEEN,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "How about that!\\nI’ve netted me a feisty Trainer!\\r" },
            { .type = TRMSG_LOSE, .text = "I let a big win slip away...\\n" },
            { .type = TRMSG_AFTER, .text = "Do you have a fishing rod?\\nCatch some big ones!\\n" },
        },
    },

    [891] = { // fisherman_zachary
        .name = "Zachary",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_FISHERMAN,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 57,
                .species = SPECIES_MAGIKARP,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 58,
                .species = SPECIES_GOLDEEN,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 57,
                .species = SPECIES_MAGIKARP,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I fished up some tough Pokémon!\\nLet’s have ourselves a battle!\\r" },
            { .type = TRMSG_LOSE, .text = "Losing to a kid has me gasping like\\na MAGIKARP...\\n" },
            { .type = TRMSG_AFTER, .text = "My feet are tangled, too!\\nOuch! Ouch!\\n" },
        },
    },

    [892] = { // cyclist_axel
        .name = "Axel",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_CYCLIST_M,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 61,
                .species = SPECIES_PIKACHU,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Yo! Cycling and Pokémon!\\nWhich do you prefer?\\r" },
            { .type = TRMSG_LOSE, .text = "Hey, not bad, you!\\n" },
            { .type = TRMSG_AFTER, .text = "This Cycling Road is one fine place--\\ngreat bikes, superb Pokémon,\\fand awesome Trainers all around!\\n" },
        },
    },

    [893] = { // cyclist_megan
        .name = "Megan",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_CYCLIST_F,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 61,
                .species = SPECIES_STARAVIA,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Cycling feels great!\\rIt will feel even better when I beat\\nyou in a battle!\\r" },
            { .type = TRMSG_LOSE, .text = "Whew!\\nYou worked us over.\\n" },
            { .type = TRMSG_AFTER, .text = "I like spinning the pedals backward\\nwhile sailing downhill.\\n" },
        },
    },

    [894] = { // cyclist_james
        .name = "James",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_CYCLIST_M,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 61,
                .species = SPECIES_PONYTA,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Ding-ding! Watch out, you!\\nOr, did you want to battle?\\r" },
            { .type = TRMSG_LOSE, .text = "Despite all the effort, I’m just spinning\\nmy wheels...\\rIt’s always that way with me!\\n" },
            { .type = TRMSG_AFTER, .text = "I might try racing through Cycling\\nRoad in one long shot.\\n" },
        },
    },

    [895] = { // cyclist_nicole
        .name = "Nicole",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_CYCLIST_F,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 59,
                .species = SPECIES_STARLY,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 59,
                .species = SPECIES_STARLY,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 60,
                .species = SPECIES_STARLY,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "The both of us are on Bikes, and we\\nboth have Pokémon!\\rI can’t let you get the better of me!\\r" },
            { .type = TRMSG_LOSE, .text = "Oh, geez...\\nI seem to have fallen off my Bike." },
            { .type = TRMSG_AFTER, .text = "I should have challenged you to a race,\\nnot a battle!\\n" },
        },
    },

    [896] = { // cyclist_john
        .name = "John",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_CYCLIST_M,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 59,
                .species = SPECIES_STARLY,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 60,
                .species = SPECIES_STARAVIA,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "That Bike you’ve got there...it’s the\\ntype that can change gears!\\rYou gotta love that!\\nSure, I’ll give you a battle!\\r" },
            { .type = TRMSG_LOSE, .text = "Crash! Tinkle...\\n" },
            { .type = TRMSG_AFTER, .text = "The 3-speed makes for easy turning,\\nand the 4-speed’s for going fast.\\rI love them both!\\n" },
        },
    },

    [897] = { // cyclist_kayla
        .name = "Kayla",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_CYCLIST_F,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 61,
                .species = SPECIES_PIKACHU,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "If you beat me, you can count on\\nsomething rotten coming your way!\\r" },
            { .type = TRMSG_LOSE, .text = "Kerrrash!" },
            { .type = TRMSG_AFTER, .text = "Aww!\\nWhy did you beat me?!\\rI hope you get so lost in Wayward Cave\\nyou cry! Boo-hoo-hoo!\\n" },
        },
    },

    [898] = { // cyclist_ryan
        .name = "Ryan",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_CYCLIST_M,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 61,
                .species = SPECIES_SHINX,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "A bike will carry you a long way.\\rThe only thing that limits you is your\\nown endurance!\\r" },
            { .type = TRMSG_LOSE, .text = "Gasp... Gasp... Gasp...\\n" },
            { .type = TRMSG_AFTER, .text = "My Pokémon and I are plumb worn out.\\nWe should be getting home to rest...\\n" },
        },
    },

    [899] = { // cyclist_rachel
        .name = "Rachel",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_CYCLIST_F,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 60,
                .species = SPECIES_PONYTA,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 59,
                .species = SPECIES_SHINX,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Some people compete over speed, and\\nsome compete over technique.\\rWhich kind are you?\\r" },
            { .type = TRMSG_LOSE, .text = "You’re a speedy technician!\\n" },
            { .type = TRMSG_AFTER, .text = "I enjoy the scenery.\\rDon’t you think the area below\\nCycling Road looks nice?\\n" },
        },
    },

    [900] = { // hiker_theodore
        .name = "Theodore",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_HIKER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 59,
                .species = SPECIES_ONIX,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 60,
                .species = SPECIES_ONIX,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Whoa! You startled me!\\nWell, we may as well battle!\\r" },
            { .type = TRMSG_LOSE, .text = "Your power startles me!\\n" },
            { .type = TRMSG_AFTER, .text = "We Hikers are bighearted guys!\\nLosing doesn’t bother us!\\n" },
        },
    },

    [901] = { // camper_anthony
        .name = "Anthony",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_CAMPER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 61,
                .species = SPECIES_CHIMCHAR,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Go for it, my Pokémon!\\nI’ll do my best, too!\\r" },
            { .type = TRMSG_LOSE, .text = "Oh...\\nWe lost...\\n" },
            { .type = TRMSG_AFTER, .text = "Dig for Fossils in the Underground.\\rThe mining museum might be able to\\nbring back the ancient Pokémon!\\n" },
        },
    },

    [902] = { // picnicker_lauren
        .name = "Lauren",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_PICNICKER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 61,
                .species = SPECIES_PACHIRISU,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Go do it, my Pokémon!\\nI’ll work hard, too!\\r" },
            { .type = TRMSG_LOSE, .text = "Oh...\\nWe lost..." },
            { .type = TRMSG_AFTER, .text = "I think we’ll visit the TV station in\\nJubilife City next.\\rOr maybe we should go to the Global\\nTerminal?\\n" },
        },
    },

    [903] = { // youngster_austin
        .name = "Austin",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_YOUNGSTER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 59,
                .species = SPECIES_BUIZEL,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 59,
                .species = SPECIES_LUXIO,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 61,
                .species = SPECIES_GLIGAR,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I wear shorts the whole year!\\nI’ve got energy to burn!\\r" },
            { .type = TRMSG_LOSE, .text = "I couldn’t win with just energy...\\nNothing’s really that easy!\\n" },
            { .type = TRMSG_AFTER, .text = "Pokémon don’t wear clothes.\\nI worry about them getting cold.\\n" },
        },
    },

    [904] = { // hiker_justin
        .name = "Justin",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_HIKER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 60,
                .species = SPECIES_GEODUDE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 60,
                .species = SPECIES_NOSEPASS,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I just got through Mt. Coronet, but\\nI’ve still got energy to burn!\\r" },
            { .type = TRMSG_LOSE, .text = "Whoops!\\nTaken down easily!\\n" },
            { .type = TRMSG_AFTER, .text = "We need to rest up in Oreburgh City\\nbefore heading to Mt. Coronet again.\\n" },
        },
    },

    [905] = { // hiker_kevin
        .name = "Kevin",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_HIKER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 59,
                .species = SPECIES_GEODUDE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 59,
                .species = SPECIES_GEODUDE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 60,
                .species = SPECIES_ONIX,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 60,
                .species = SPECIES_GEODUDE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Wahaha!\\nLaughter brings good fortune!\\r" },
            { .type = TRMSG_LOSE, .text = "Wahahaha! There’s nothing that\\nI can do but laugh!\\n" },
            { .type = TRMSG_AFTER, .text = "Wahahahaha!\\n...Go ahead, laugh at me--the loser!\\n" },
        },
    },

    [906] = { // battle_girl_helen
        .name = "Helen",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_BATTLE_GIRL,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 20,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 61,
                .species = SPECIES_MACHOP,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 20,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 61,
                .species = SPECIES_MEDITITE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "OK, OK!\\nLet’s be quick about this!\\r" },
            { .type = TRMSG_LOSE, .text = "Oh, yeah? Let’s do this again!\\n...Oops. I’m out of Pokémon!\\n" },
            { .type = TRMSG_AFTER, .text = "Yup! Good going!\\nI like the way you battle!\\n" },
        },
    },

    [907] = { // hiker_robert
        .name = "Robert",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_HIKER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 61,
                .species = SPECIES_NOSEPASS,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Gahahaha! You’re just a little kid!\\rHow’re you supposed to beat a big\\nman like me?\\r" },
            { .type = TRMSG_LOSE, .text = "Oh my, a big man like me got schooled\\nby a little kid like you!\\n" },
            { .type = TRMSG_AFTER, .text = "Wow, you’re sure impressive!\\rI guess it makes no difference if\\nyou’re young or old in battles.\\n" },
        },
    },

    [908] = { // hiker_alexander
        .name = "Alexander",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_HIKER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 69,
                .species = SPECIES_GRAVELER,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 70,
                .species = SPECIES_PROBOPASS,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "They call me the Echo Man!\\nBattle with me! Yahoo!\\r" },
            { .type = TRMSG_LOSE, .text = "Ohh... Yo...\\nYodelay...\\n" },
            { .type = TRMSG_AFTER, .text = "Here’s good advice from the Echo Man!\\rIf you’re at a loss as to where you\\nshould be going, check the Town Map!\\n" },
        },
    },

    [909] = { // hiker_jonathan
        .name = "Jonathan",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_HIKER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 61,
                .species = SPECIES_ONIX,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "If I beat you, will you share some\\nfood with me?\\r" },
            { .type = TRMSG_LOSE, .text = "We were starved for food, and now\\nwe’re starved for a win...\\n" },
            { .type = TRMSG_AFTER, .text = "Sigh... I feel even hungrier...\\nMaybe I’ll chow down some Berries...\\rBut that’s kind of gross.\\nWhat am I, a Pokémon?\\n" },
        },
    },

    [910] = { // black_belt_kyle
        .name = "Kyle",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_BLACK_BELT,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 30,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 62,
                .species = SPECIES_MACHOP,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "This karate man’s going to pulverize\\nyou!\\r" },
            { .type = TRMSG_LOSE, .text = "We got pulverized...\\n" },
            { .type = TRMSG_AFTER, .text = "It’s obvious I need to train myself\\nand my Pokémon harder.\\rHey, if you’ve got a Vs. Seeker, you’d\\nbetter put it to good use.\\rNothing beats some repeated battling\\nfor toughening up your Pokémon.\\n" },
        },
    },

    [911] = { // fisherman_cody
        .name = "Cody",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_FISHERMAN,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 67,
                .species = SPECIES_BARBOACH,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 67,
                .species = SPECIES_GYARADOS,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Muhihi...\\nI’ll haul you up and out!\\r" },
            { .type = TRMSG_LOSE, .text = "Restraint is my favorite word.\\nLike...from crushing my opponents.\\n" },
            { .type = TRMSG_AFTER, .text = "You need a Good Rod if you want to\\ncatch good Pokémon.\\n" },
        },
    },

    [912] = { // aroma_lady_hannah
        .name = "Hannah",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_AROMA_LADY,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 59,
                .species = SPECIES_ROSELIA,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 61,
                .species = SPECIES_COMBEE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Oh, you want to have a battle?\\rI was meaning to enter a Contest,\\nbut beating you won’t take long...\\r" },
            { .type = TRMSG_LOSE, .text = "Oh, you have us beaten.\\n" },
            { .type = TRMSG_AFTER, .text = "You and your Pokémon have so much\\nenergy.\\rI think you would do well in\\nContests, too.\\n" },
        },
    },

    [913] = { // artist_william
        .name = "William",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_ARTIST,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 60,
                .species = SPECIES_MIME_JR,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 60,
                .species = SPECIES_BONSLY,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "You and I!\\rLet us create a scene!\\nA fantastic tableau of battle!\\r" },
            { .type = TRMSG_LOSE, .text = "Magnificent!\\nI am aglow with inspiration!\\n" },
            { .type = TRMSG_AFTER, .text = "That battle will surely become a\\nstupendous masterpiece painting!\\rI shall title it...\\r“My Pokémon Is Fight”!\\n" },
        },
    },

    [914] = { // breeder_albert
        .name = "Albert",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_PKMN_BREEDER_M,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 60,
                .species = SPECIES_BUDEW,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 60,
                .species = SPECIES_BONSLY,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 60,
                .species = SPECIES_PICHU,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 60,
                .species = SPECIES_EEVEE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Let me see how much you’ve raised\\nyour Pokémon.\\r" },
            { .type = TRMSG_LOSE, .text = "Good stuff! Your Pokémon are in\\nimpeccable condition.\\n" },
            { .type = TRMSG_AFTER, .text = "It’s obvious you raise your Pokémon\\nwith a lot of love.\\n" },
        },
    },

    [915] = { // breeder_jennifer
        .name = "Jennifer",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_PKMN_BREEDER_F,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 60,
                .species = SPECIES_BUDEW,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 60,
                .species = SPECIES_MIME_JR,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 60,
                .species = SPECIES_CLEFFA,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 60,
                .species = SPECIES_EEVEE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Please, let me battle the Pokémon\\nyou’ve raised!\\r" },
            { .type = TRMSG_LOSE, .text = "Giggle...\\nThey’re raised with a lot of care!\\n" },
            { .type = TRMSG_AFTER, .text = "Raise your Pokémon with lots of love,\\nand they’ll bond closely with you.\\n" },
        },
    },

    [916] = { // cowgirl_shelley
        .name = "Shelley",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_COWGIRL,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 62,
                .species = SPECIES_PONYTA,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Say, honey, where’d you come from?\\nWhat kinds of Pokémon are you with?\\r" },
            { .type = TRMSG_LOSE, .text = "Fancy folks like you have fancy\\nPokémon too, it looks like.\\n" },
            { .type = TRMSG_AFTER, .text = "While working the ranch, I get to raise\\nmy Pokémon, too.\\rI’d say it’s the best of both worlds!\\n" },
        },
    },

    [917] = { // jogger_richard
        .name = "Richard",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_JOGGER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 62,
                .species = SPECIES_LUXIO,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I jog every morning to keep my\\nPokémon fit.\\r" },
            { .type = TRMSG_LOSE, .text = "Oops!\\nYou threw off my running rhythm.\\n" },
            { .type = TRMSG_AFTER, .text = "Nothing beats being fit and healthy!\\rCome on, won’t you run with me?\\nTo a better tomorrow!\\n" },
        },
    },

    [918] = { // jogger_raul
        .name = "Raul",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_JOGGER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 62,
                .species = SPECIES_STARAVIA,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Jogging is about rhythm.\\nBattling is about rhythm, too!\\r" },
            { .type = TRMSG_LOSE, .text = "It’s a goal of sorts, I’d say!\\n" },
            { .type = TRMSG_AFTER, .text = "If I get out of rhythm, I can’t get my\\nact together.\\n" },
        },
    },

    [919] = { // poke_kid_danielle
        .name = "Danielle",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_POKE_KID,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 61,
                .species = SPECIES_PICHU,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Hi, hi!\\nI’m a Pokémon!\\r" },
            { .type = TRMSG_LOSE, .text = "So sad...\\nSo bitter...\\n" },
            { .type = TRMSG_AFTER, .text = "I don’t want to be a Trainer.\\nI want to be a Pokémon!\\n" },
        },
    },

    [920] = { // twins_emma_and_lil
        .name = "Emma & Lil",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_TWINS,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = DOUBLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 61,
                .species = SPECIES_BONSLY,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 61,
                .species = SPECIES_MIME_JR,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_DBL_INTRO_1, .text = "Emma: We’re tough because we battle\\ntogether!\\r" },
            { .type = TRMSG_DBL_LOSE_1, .text = "Emma: Waaah!\\n" },
            { .type = TRMSG_DBL_AFTER_1, .text = "Emma: That was awesome!\\nAre you maybe a Pokémon genius?\\fYou’re well deserving of respect!\\n" },
            { .type = TRMSG_DBL_1POKE_1, .text = "We won’t talk to people who have only\\none Pokémon!\\n" },
            { .type = TRMSG_DBL_INTRO_2, .text = "Lil: We’re gonna crunch and\\nmunch you all up!\\r" },
            { .type = TRMSG_DBL_LOSE_2, .text = "Lil: Hwaaah!\\n" },
            { .type = TRMSG_DBL_AFTER_2, .text = "Lil: We’re going to be super-strong\\nTrainers like you!\\rI just decided now!\\nPlease cheer for us!\\n" },
            { .type = TRMSG_DBL_1POKE_2, .text = "We don’t talk to people who have only\\none Pokémon!\\n" },
        },
    },

    [921] = { // young_couple_ty_and_sue
        .name = "Ty & Sue",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_YOUNG_COUPLE,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = DOUBLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 62,
                .species = SPECIES_BUNEARY,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 62,
                .species = SPECIES_BUIZEL,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_DBL_INTRO_1, .text = "Ty: You’re not supposed to intrude\\non my time with Sue!\\r" },
            { .type = TRMSG_DBL_LOSE_1, .text = "Ty: I only have eyes for Sue.\\nMaybe that’s why we lost?\\n" },
            { .type = TRMSG_DBL_AFTER_1, .text = "Ty: Sue, even in defeat, you’re\\nso beautiful...!\\n" },
            { .type = TRMSG_DBL_1POKE_1, .text = "Ty: I don’t want to do anything\\nwithout Sue...\\rBring two Pokémon at least, OK?\\n" },
            { .type = TRMSG_DBL_INTRO_2, .text = "Sue: Huh?\\nYou want to battle with me?\\rI will if I can team with Ty!\\r" },
            { .type = TRMSG_DBL_LOSE_2, .text = "Sue: I’m sorry, Ty!\\n" },
            { .type = TRMSG_DBL_AFTER_2, .text = "Sue: We lost... Ty, I need a hug\\nto make it all better!\\n" },
            { .type = TRMSG_DBL_1POKE_2, .text = "Sue: I only want to battle next to my\\nsweet Ty.\\rDon’t you have two Pokémon?\\n" },
        },
    },

    [922] = { // youngster_oliver
        .name = "Oliver",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_YOUNGSTER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 60,
                .species = SPECIES_MOTHIM,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 60,
                .species = SPECIES_BARBOACH,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 61,
                .species = SPECIES_CHATOT,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Waah! Ghost! Get away! Eek!\\nHelp me, team!\\r" },
            { .type = TRMSG_LOSE, .text = "Hey...\\nYou’re no ghost...\\n" },
            { .type = TRMSG_AFTER, .text = "I had to come to the Lost Tower on\\na dare...\\rI have to go to the top and use Defog\\nthere...\\n" },
        },
    },

    [923] = { // pokefan_leonard
        .name = "Leonard",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_POKEFAN_M,
            .items = { ITEM_FULL_HEAL, ITEM_SUPER_POTION, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 60,
                .species = SPECIES_PICHU,
                .item = ITEM_SITRUS_BERRY,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 60,
                .species = SPECIES_PICHU,
                .item = ITEM_SITRUS_BERRY,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 61,
                .species = SPECIES_PIKACHU,
                .item = ITEM_SITRUS_BERRY,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I can’t explain it...\\nBeing here compels me to battle!\\r" },
            { .type = TRMSG_LOSE, .text = "Hunh?!\\nWhat was I just doing?!\\n" },
            { .type = TRMSG_AFTER, .text = "The desire to do battle lingers on...\\rDo such spirits of Pokémon still roam\\nwithin these walls?\\n" },
        },
    },

    [924] = { // roughneck_kirby
        .name = "Kirby",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_ROUGHNECK,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 62,
                .species = SPECIES_CLEFFA,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "My Pokémon were taken from me...\\nTeam Galactic did it...\\rEver since, I’ve never forgiven\\ntheir faces...\\r" },
            { .type = TRMSG_LOSE, .text = "Gwaaaaaah!\\n" },
            { .type = TRMSG_AFTER, .text = "I’m not doing my Pokémon any favors\\nby ruining its memory like this...\\rI can’t be wallowing around forever.\\nI gotta move on and turn the page." },
        },
    },

    [925] = { // pokefan_rebekah
        .name = "Rebekah",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_POKEFAN,
            .items = { ITEM_FULL_HEAL, ITEM_SUPER_POTION, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 62,
                .species = SPECIES_BONSLY,
                .item = ITEM_SITRUS_BERRY,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I need to shake off my sorrow...\\nPlease, battle with me!\\r" },
            { .type = TRMSG_LOSE, .text = "My sorrow has deepened...\\n" },
            { .type = TRMSG_AFTER, .text = "I won’t ever forget the Pokémon that\\nI’ve spent time with, however fleeting.\\n" },
        },
    },

    [926] = { // young_couple_mike_and_nat
        .name = "Mike & Nat",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_YOUNG_COUPLE,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = DOUBLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 62,
                .species = SPECIES_MURKROW,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 62,
                .species = SPECIES_MISDREAVUS,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_DBL_INTRO_1, .text = "Mike: I can’t embarrass myself again.\\nNot in front of my girlfriend!\\r" },
            { .type = TRMSG_DBL_LOSE_1, .text = "Mike: Awww, jeez.\\nMan, that’s a downer...\\n" },
            { .type = TRMSG_DBL_AFTER_1, .text = "Mike: Coming here again brings back\\nall kinds of memories of me and Nat.\\n" },
            { .type = TRMSG_DBL_1POKE_1, .text = "Mike: You can’t battle with us.\\nNot with one Pokémon, anyway.\\n" },
            { .type = TRMSG_DBL_INTRO_2, .text = "Nat: I don’t want to look bad again.\\nNot when my boyfriend is watching!\\r" },
            { .type = TRMSG_DBL_LOSE_2, .text = "Nat: This makes me feel hollow\\ninside... Oh, so hollow...\\n" },
            { .type = TRMSG_DBL_AFTER_2, .text = "Nat: The Pokémon that brought me and\\nMike together is buried here...\\n" },
            { .type = TRMSG_DBL_1POKE_2, .text = "Nat: You do have at least two\\nPokémon, don’t you?\\n" },
        },
    },

    [927] = { // belle_and_pa_beth_and_bob
        .name = "Beth & Bob",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_YOUNG_COUPLE,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = DOUBLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 62,
                .species = SPECIES_PONYTA,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 62,
                .species = SPECIES_PONYTA,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_DBL_INTRO_1, .text = "It makes no difference where we are.\\rIf you have Pokémon with you,\\nI reckon you ought to battle.\\r" },
            { .type = TRMSG_DBL_LOSE_1, .text = "You’ve got a lot of giddyap and go\\nin you!\\n" },
            { .type = TRMSG_DBL_AFTER_1, .text = "Over a long life, you’ll be certain\\nto have some sad farewells.\\rBut I reckon there are also some\\nnew beginnings.\\n" },
            { .type = TRMSG_DBL_1POKE_1, .text = "Hahaha! I’m afraid y’all are no match\\nfor us with jus’ one of them Pokémon!" },
            { .type = TRMSG_DBL_INTRO_2, .text = "My Pokémon is a lively one.\\nLemme show you how much!\\r" },
            { .type = TRMSG_DBL_LOSE_2, .text = "Well! Aren’t you the lively one!" },
            { .type = TRMSG_DBL_AFTER_2, .text = "Them graves here in Lost Tower...\\nRight’n here, inside my heart...\\rThose are the places where my\\nPokémon remain...\\n" },
            { .type = TRMSG_DBL_1POKE_2, .text = "You haven’t got yerself two\\nPokémon?\\n" },
        },
    },

    [928] = { // ninja_boy_fabian
        .name = "Fabian",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_NINJA_BOY,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 66,
                .species = SPECIES_CROAGUNK,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 66,
                .species = SPECIES_CROAGUNK,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I am one of the Ninja Trio!\\nBeing discovered means I must battle!\\r" },
            { .type = TRMSG_LOSE, .text = "I concede defeat...\\n" },
            { .type = TRMSG_AFTER, .text = "My cover is blown, so what should\\nI do?\\rMaybe I’ll go catch some Contests in\\nHearthome City. Maybe I’ll do that.\\n" },
        },
    },

    [929] = { // ninja_boy_brennan
        .name = "Brennan",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_NINJA_BOY,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 65,
                .species = SPECIES_ZUBAT,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 66,
                .species = SPECIES_SKORUPI,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I am one of the Ninja Trio!\\nBeing discovered means I must battle!\\r" },
            { .type = TRMSG_LOSE, .text = "I concede defeat...\\n" },
            { .type = TRMSG_AFTER, .text = "While I hid in the tall grass, I\\nsensed Pokémon all around me!\\rFurtive sounds of movement...\\nStifled cries... I heard them!\\n" },
        },
    },

    [930] = { // twins_teri_and_tia
        .name = "Teri & Tia",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_TWINS,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = DOUBLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 62,
                .species = SPECIES_PIKACHU,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 62,
                .species = SPECIES_CLEFAIRY,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_DBL_INTRO_1, .text = "Teri: Yay! We’re gonna battle with\\nlots of Pokémon!\\r" },
            { .type = TRMSG_DBL_LOSE_1, .text = "Teri: We tried really hard together,\\nbut we lost anyway.\\n" },
            { .type = TRMSG_DBL_AFTER_1, .text = "Teri: Our mommy is a twin, too.\\n" },
            { .type = TRMSG_DBL_1POKE_1, .text = "Teri: We want to battle with lots\\nof Pokémon.\\n" },
            { .type = TRMSG_DBL_INTRO_2, .text = "Tia: Yay!\\nWe’re all going to battle!\\r" },
            { .type = TRMSG_DBL_LOSE_2, .text = "Tia: We tried really hard together,\\nbut we couldn’t win anyway.\\n" },
            { .type = TRMSG_DBL_AFTER_2, .text = "Tia: When Mommy and Aunty and me\\nand Teri get together, it’s really\\fconfusing and fun!\\n" },
            { .type = TRMSG_DBL_1POKE_2, .text = "Tia: Um, no.\\nWe all want to battle together.\\n" },
        },
    },

    [931] = { // ninja_boy_bruce
        .name = "Bruce",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_NINJA_BOY,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 67,
                .species = SPECIES_STUNKY,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I am one of the Ninja Trio!\\nBeing discovered means I must battle!\\rBut how did you discover me?\\nDon’t tell me you’re a ninja, too!\\r" },
            { .type = TRMSG_LOSE, .text = "I concede defeat...\\n" },
            { .type = TRMSG_AFTER, .text = "A Pokémon Trainer’s good at finding\\nstuff, I guess.\\n" },
        },
    },

    [932] = { // jogger_wyatt
        .name = "Wyatt",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_JOGGER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 62,
                .species = SPECIES_PIKACHU,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I’m warmed up and limber.\\nI’m OK to battle!\\r" },
            { .type = TRMSG_LOSE, .text = "...Oh, serious woe.\\nI wasn’t prepared emotionally for this.\\n" },
            { .type = TRMSG_AFTER, .text = "I wish I could just run from all this...\\nJust joking.\\n" },
        },
    },

    [933] = { // breeder_kahlil
        .name = "Kahlil",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_PKMN_BREEDER_M,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 62,
                .species = SPECIES_ELEKID,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 62,
                .species = SPECIES_HAPPINY,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Hey, check this out! Look at the\\nluster of my Pokémon’s fur!\\r" },
            { .type = TRMSG_LOSE, .text = "Hey, hey, did you take a good look?\\n" },
            { .type = TRMSG_AFTER, .text = "The Veilstone Department Store is\\npretty impressive!\\rDid you know they even sell Poffins?\\n" },
        },
    },

    [934] = { // breeder_amber
        .name = "Amber",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_PKMN_BREEDER_F,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 62,
                .species = SPECIES_MAGBY,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 62,
                .species = SPECIES_TOGEPI,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I’m a rookie breeder, but I’ll do\\nmy very best!\\r" },
            { .type = TRMSG_LOSE, .text = "It’s all right!\\nI’m still a rookie!\\n" },
            { .type = TRMSG_AFTER, .text = "The best way to raise Pokémon?\\r...Hmm, when it comes right down to it,\\nisn’t it all about love?\\n" },
        },
    },

    [935] = { // belle_and_pa_ava_and_matt
        .name = "Ava & Matt",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_YOUNG_COUPLE,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = DOUBLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 62,
                .species = SPECIES_PONYTA,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 62,
                .species = SPECIES_RAPIDASH,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_DBL_INTRO_1, .text = "Matt: Uhohoho! I’ll show y’all how\\ntightly I’ve bonded with my daughter!\\r" },
            { .type = TRMSG_DBL_LOSE_1, .text = "Matt: Parent-and-child power couldn’t\\nget the job done.\\n" },
            { .type = TRMSG_DBL_AFTER_1, .text = "Matt: I reckon the bonds between you\\nand your Pokémon are like the bonds\\fparents share with their kids.\\n" },
            { .type = TRMSG_DBL_1POKE_1, .text = "Matt: Oh, there’s no way you could\\nbeat us both with one Pokémon.\\n" },
            { .type = TRMSG_DBL_INTRO_2, .text = "Ava: I can get away with slacking\\noff if I have my Pokémon out!\\r" },
            { .type = TRMSG_DBL_LOSE_2, .text = "Ava: Oh, sheesh!\\n" },
            { .type = TRMSG_DBL_AFTER_2, .text = "Ava: Papa, I’m so sorry!\\nI’ll work harder from tomorrow on!\\r...Yup, tomorrow’s when I’m going to\\nstart working.\\n" },
            { .type = TRMSG_DBL_1POKE_2, .text = "Ava: You’re battling me and my pa.\\nOne Pokémon won’t cut it, dear!\\n" },
        },
    },

    [936] = { // rancher_marco
        .name = "Marco",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_RANCHER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 62,
                .species = SPECIES_PONYTA,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "My Pokémon toughened up while working\\non the ranch.\\rI’m right proud of them!\\r" },
            { .type = TRMSG_LOSE, .text = "Hahahah! Your Pokémon sure can be\\ncounted on!\\n" },
            { .type = TRMSG_AFTER, .text = "When I cuddle with my Pokémon, I can\\nfeel not just their bodies’ warmth, but\\ftheir compassion.\\n" },
        },
    },

    [937] = { // ace_trainer_ernest
        .name = "Ernest",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_ACE_TRAINER_M,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 66,
                .species = SPECIES_SCYTHER,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 66,
                .species = SPECIES_PROBOPASS,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 67,
                .species = SPECIES_LUXIO,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "You seem to have a lot of confidence.\\nLet’s see if it’s justified!\\r" },
            { .type = TRMSG_LOSE, .text = "Haha!\\nA total loss for me!\\n" },
            { .type = TRMSG_AFTER, .text = "You seem to have an abundance of\\ntalent. It’s pretty amazing.\\n" },
        },
    },

    [938] = { // ace_trainer_alyssa
        .name = "Alyssa",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_ACE_TRAINER_F,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 66,
                .species = SPECIES_AIPOM,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 66,
                .species = SPECIES_GIRAFARIG,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 67,
                .species = SPECIES_GROTLE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "As an Ace Trainer, I have to take\\nbattles in stride.\\rI need to stay cool and calm whether\\nI win or lose.\\r" },
            { .type = TRMSG_LOSE, .text = "Aiyeeeeh!\\nWe lost!\\n" },
            { .type = TRMSG_AFTER, .text = "How dare you beat us!\\nGo away! Go!\\n" },
        },
    },

    [939] = { // ninja_boy_joel
        .name = "Joel",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_NINJA_BOY,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 65,
                .species = SPECIES_ZUBAT,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 65,
                .species = SPECIES_SKORUPI,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 65,
                .species = SPECIES_STUNKY,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 65,
                .species = SPECIES_GOLBAT,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I just startled you!\\rWhile you’re still struggling to\\nrecover, I’ll already be the winner!\\r" },
            { .type = TRMSG_LOSE, .text = "Oh, what’s that?\\nYou’re supposed to be fumbling more.\\n" },
            { .type = TRMSG_AFTER, .text = "I wanted a better reaction from you.\\nNow I feel silly for hiding!\\n" },
        },
    },

    [940] = { // ninja_boy_nathan
        .name = "Nathan",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_NINJA_BOY,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 66,
                .species = SPECIES_STUNKY,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 66,
                .species = SPECIES_GOLBAT,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "We ninjas appear where you least\\nexpect us!\\r" },
            { .type = TRMSG_LOSE, .text = "I didn’t expect to lose...\\n" },
            { .type = TRMSG_AFTER, .text = "While hiding, I think about what Pokémon\\nmust be thinking inside their Poké Balls.\\n" },
        },
    },

    [941] = { // ninja_boy_davido
        .name = "Davido",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_NINJA_BOY,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 67,
                .species = SPECIES_MOTHIM,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "A ninja can use all kinds of skills.\\nLike this and like that!\\r" },
            { .type = TRMSG_LOSE, .text = "Hmm...\\nMy ninja techniques failed to work...\\n" },
            { .type = TRMSG_AFTER, .text = "There’s a ninja Gym Leader somewhere\\nfar away.\\rI should become a devotee of theirs.\\n" },
        },
    },

    [942] = { // dragon_tamer_patrick
        .name = "Patrick",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_DRAGON_TAMER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 67,
                .species = SPECIES_GIBLE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Try not to be shocked when you lay your\\neyes on my Pokémon!\\r" },
            { .type = TRMSG_LOSE, .text = "Oh, my...\\nGood golly ’n’ gosh...\\n" },
            { .type = TRMSG_AFTER, .text = "A dragon Pokémon’s real power is\\nnothing like mine!\\n" },
        },
    },

    [943] = { // bird_keeper_brianna
        .name = "Brianna",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_BIRD_KEEPER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 66,
                .species = SPECIES_HOOTHOOT,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 67,
                .species = SPECIES_NOCTOWL,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I’ll teach you about the charms of\\nbird Pokémon!\\r" },
            { .type = TRMSG_LOSE, .text = "Well, that was surprising!\\n" },
            { .type = TRMSG_AFTER, .text = "The sight of you battling...\\nIt was simply a wonder to watch!\\n" },
        },
    },

    [944] = { // double_team_zac_and_jen
        .name = "Zac & Jen",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_DOUBLE_TEAM,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = DOUBLE_BATTLE,
        },
        .party = {
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 68,
                .species = SPECIES_GYARADOS,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 68,
                .species = SPECIES_RAICHU,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_DBL_INTRO_1, .text = "Zac: Jen, watch this! I’m going to\\nuse everything you’ve taught me!\\r" },
            { .type = TRMSG_DBL_LOSE_1, .text = "Zac: Wow. Someone that’s even\\nbetter than Jen...\\n" },
            { .type = TRMSG_DBL_AFTER_1, .text = "Zac: I don’t care if I get to meet\\nthe greatest Trainer in the region...\\fI’d still rather learn from Jen.\\n" },
            { .type = TRMSG_DBL_1POKE_1, .text = "Zac: Would you be interested in battling\\nthe two of us at the same time?\\rWhat I mean is, do you have two or more\\nPokémon with you?\\n" },
            { .type = TRMSG_DBL_INTRO_2, .text = "Jen: Here comes a Trainer.\\nZac, you ready? Let’s do this!\\r" },
            { .type = TRMSG_DBL_LOSE_2, .text = "Jen: I just got embarrassed in front\\nof my little buddy here...\\n" },
            { .type = TRMSG_DBL_AFTER_2, .text = "Jen: Zac, I’m so sorry.\\nI’m a failure as your instructor.\\n" },
            { .type = TRMSG_DBL_1POKE_2, .text = "Jen: Would you like to have a\\ntwo-on-two Pokémon battle with us?\\n" },
        },
    },

    [945] = { // veteran_brian
        .name = "Brian",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_VETERAN,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 100,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 66,
                .species = SPECIES_TANGELA,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 100,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 66,
                .species = SPECIES_PONYTA,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 100,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 66,
                .species = SPECIES_BUIZEL,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Very well. I’ve decided.\\rI’ll battle one last time, with you,\\nthen I’m retiring as a Trainer.\\r" },
            { .type = TRMSG_LOSE, .text = "I’ve lost, but...\\nWhat is this rush I feel?!\\n" },
            { .type = TRMSG_AFTER, .text = "Yes! This is fun!\\nPokémon are fun!\\fRetire? Perish that thought!\\rI’ll become a lot tougher.\\nNext time, victory is mine!\\n" },
        },
    },

    [946] = { // black_belt_adam
        .name = "Adam",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_BLACK_BELT,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 30,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 67,
                .species = SPECIES_MACHOKE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "This buff physique isn’t just for\\nshow!\\r" },
            { .type = TRMSG_LOSE, .text = "B-but!\\nMy buff physique!" },
            { .type = TRMSG_AFTER, .text = "Why? Is it because my training isn’t\\nenough?!\\n" },
        },
    },

    [947] = { // bird_keeper_alexandra
        .name = "Alexandra",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_BIRD_KEEPER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 20,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 59,
                .species = SPECIES_STARLY,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 20,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 59,
                .species = SPECIES_HOOTHOOT,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Look at these beautiful wings!\\r" },
            { .type = TRMSG_LOSE, .text = "Oh, you!\\nI’m going to peck you for that!\\n" },
            { .type = TRMSG_AFTER, .text = "There’s a bird Pokémon that can learn\\nhuman speech! Did you know that?\\n" },
        },
    },

    [948] = { // hiker_louis
        .name = "Louis",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_HIKER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 57,
                .species = SPECIES_GEODUDE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 59,
                .species = SPECIES_ONIX,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "See how Mt. Coronet towers above us.\\nI want to be big like that one day!\\r" },
            { .type = TRMSG_LOSE, .text = "You loom before me as a giant presence!\\n" },
            { .type = TRMSG_AFTER, .text = "Mt. Coronet has long been known as\\nan ancient and mysterious mountain.\\n" },
        },
    },

    [949] = { // ninja_boy_zach
        .name = "Zach",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_NINJA_BOY,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 57,
                .species = SPECIES_ZUBAT,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 57,
                .species = SPECIES_ZUBAT,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 57,
                .species = SPECIES_ZUBAT,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "ZUBAT! Doesn’t that sound like a\\nninja bursting from cover?\\r" },
            { .type = TRMSG_LOSE, .text = "Oh!\\nMy ZUBAT tristars...\\n" },
            { .type = TRMSG_AFTER, .text = "Sowing confusion among the foe is\\none way a ninja battles.\\rA Pokémon can’t overcome its\\nconfusion unless it switches out.\\n" },
        },
    },

    [950] = { // bird_keeper_katherine
        .name = "Katherine",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_BIRD_KEEPER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 67,
                .species = SPECIES_NOCTOWL,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I go everywhere with my NOCTOWL.\\nWe’re gonna show you owl best! Ha!\\r" },
            { .type = TRMSG_LOSE, .text = "We did our best. That’s what\\nmatters. Right?\\n" },
            { .type = TRMSG_AFTER, .text = "Even on cold days, just being with\\nmy NOCTOWL keeps me warm!\\n" },
        },
    },

    [951] = { // ninja_boy_nick
        .name = "Nick",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_NINJA_BOY,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 66,
                .species = SPECIES_SKORUPI,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 65,
                .species = SPECIES_CROAGUNK,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Speed is a ninja’s best weapon!\\nCan you keep up?\\r" },
            { .type = TRMSG_LOSE, .text = "I did a lot to conceal myself, too...\\n" },
            { .type = TRMSG_AFTER, .text = "I’ll wait here for a weaker-looking\\nTrainer and then ambush them!\\n" },
        },
    },

    [952] = { // black_belt_sean
        .name = "Sean",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_BLACK_BELT,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 30,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 66,
                .species = SPECIES_CROAGUNK,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 30,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 66,
                .species = SPECIES_MEDITITE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 30,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 66,
                .species = SPECIES_MACHOKE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Hah! Hah!\\nI’m psyched for this! Here goes!\\r" },
            { .type = TRMSG_LOSE, .text = "I don’t get why we can’t win.\\n" },
            { .type = TRMSG_AFTER, .text = "I don’t reminisce over yesterday.\\nI don’t think about tomorrow.\\fI only live today to the fullest.\\fThat’s my policy!\\n" },
        },
    },

    [953] = { // ruin_maniac_harry
        .name = "Harry",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_RUIN_MANIAC,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 64,
                .species = SPECIES_BRONZOR,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 65,
                .species = SPECIES_BRONZOR,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 66,
                .species = SPECIES_BRONZOR,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Whilst exploring the ruins, I spotted\\na Trainer! I must investigate!\\r" },
            { .type = TRMSG_LOSE, .text = "My investigation has revealed the\\nTrainer to be tough! Ouch...\\n" },
            { .type = TRMSG_AFTER, .text = "Celestic Town is an old town.\\nI’m sure to find something cool.\\n" },
        },
    },

    [954] = { // rich_boy_jason
        .name = "Jason",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_RICH_BOY,
            .items = { ITEM_FULL_RESTORE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 64,
                .species = SPECIES_PRINPLUP,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "My Pokémon sleeps in a bed I got from\\noverseas.\\rI’m very well off, if you haven’t\\nnoticed!\\r" },
            { .type = TRMSG_LOSE, .text = "What? Over already?\\nWell, that’s fine.\\fRich people like me don’t fight.\\n" },
            { .type = TRMSG_AFTER, .text = "Oh, no.\\nMy Pokémon is worn out.\\rI’d better let it sleep it off in the\\nbed I had sent from overseas.\\n" },
        },
    },

    [955] = { // lady_melissa
        .name = "Melissa",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_LADY,
            .items = { ITEM_FULL_RESTORE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 64,
                .species = SPECIES_CHERUBI,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I’d like to begin now.\\nAre you quite prepared?\\r" },
            { .type = TRMSG_LOSE, .text = "Oh!\\nHow terrible of you...\\n" },
            { .type = TRMSG_AFTER, .text = "You... You must have one fantastic\\nteacher to be so good.\\n" },
        },
    },

    [956] = { // gentleman_jeremy
        .name = "Jeremy",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_GENTLEMAN,
            .items = { ITEM_FULL_RESTORE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 64,
                .species = SPECIES_CHATOT,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "If it pleases you, may I challenge you\\nto a battle?\\r" },
            { .type = TRMSG_LOSE, .text = "Bravo! Your technique is impeccable\\nfor someone so young.\\n" },
            { .type = TRMSG_AFTER, .text = "Hahaha! I was invited by the master of\\nthe Pokémon Mansion.\\rHe’s promised to show me through\\nhis prized garden of Pokémon.\\n" },
        },
    },

    [957] = { // socialite_reina
        .name = "Reina",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_SOCIALITE,
            .items = { ITEM_FULL_RESTORE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 64,
                .species = SPECIES_ROSELIA,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I’ve never battled a young Trainer like\\nyourself. It’s quite nerve wracking.\\r" },
            { .type = TRMSG_LOSE, .text = "Oh, dear... That wasn’t anything like\\nbattling with my friends.\\n" },
            { .type = TRMSG_AFTER, .text = "Usually, I’ll have matches with\\nmembers of my social club.\\n" },
        },
    },

    [958] = { // policeman_bobby
        .name = "Bobby",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_POLICEMAN,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 62,
                .species = SPECIES_HOOTHOOT,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 63,
                .species = SPECIES_MACHOP,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Hold it right there, citizen!\\nWalking around at night is unsafe!\\r" },
            { .type = TRMSG_LOSE, .text = "You’ve got tough partners with you.\\nCarry on, citizen. Carry on.\\n" },
            { .type = TRMSG_AFTER, .text = "Out so late? Does your mother\\nknow you’re out so late?\\n" },
        },
    },

    [959] = { // policeman_alex
        .name = "Alex",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_POLICEMAN,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 63,
                .species = SPECIES_HOOTHOOT,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 63,
                .species = SPECIES_MACHOP,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I’m keeping my eyes open for crime.\\nAnyone arousing suspicion here?\\r" },
            { .type = TRMSG_LOSE, .text = "Now, just hold on. I didn’t say that\\nyou were shady looking!\\n" },
            { .type = TRMSG_AFTER, .text = "Don’t go hanging out with any\\nshady-looking characters! You hear?\\n" },
        },
    },

    [960] = { // policeman_dylan
        .name = "Dylan",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_POLICEMAN,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 63,
                .species = SPECIES_HOOTHOOT,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 62,
                .species = SPECIES_MACHOP,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Let’s enjoy a fierce battle in the\\nchilly night winds! Brrrr! Refreshing!\\r" },
            { .type = TRMSG_LOSE, .text = "I need to explain, all right?\\nIt was too dark and hard to see.\\n" },
            { .type = TRMSG_AFTER, .text = "Oops, I’d better get back to my\\nbeat before the boss radios me...\\n" },
        },
    },

    [961] = { // policeman_caleb
        .name = "Caleb",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_POLICEMAN,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 62,
                .species = SPECIES_HOOTHOOT,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 64,
                .species = SPECIES_MACHOP,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Whether there are problems or not, or\\nif crimes have been committed or not,\\fI still go out on patrol.\\r" },
            { .type = TRMSG_LOSE, .text = "Big trouble! Officer in need\\nof assistance!\\n" },
            { .type = TRMSG_AFTER, .text = "Your toughness is too much!\\nI’m in serious trouble!\\n" },
        },
    },

    [962] = { // fisherman_juan
        .name = "Juan",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_FISHERMAN,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 65,
                .species = SPECIES_GYARADOS,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Can’t you see I’m fishing?\\nDon’t talk! You’ll spook the fish!\\r" },
            { .type = TRMSG_LOSE, .text = "How do you like that?\\nBoth my catch and the win got away!\\n" },
            { .type = TRMSG_AFTER, .text = "Fishing and battling are delicate\\nthings--as am I. Is that wrong?\\n" },
        },
    },

    [963] = { // fisherman_josh
        .name = "Josh",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_FISHERMAN,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 64,
                .species = SPECIES_GOLDEEN,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 64,
                .species = SPECIES_GOLDEEN,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I wish some fishing-loving lady’d come\\nalong. But no, it’s all just Trainers.\\r" },
            { .type = TRMSG_LOSE, .text = "Sure, so I lost.\\nBut I’ll keep on fishing.\\n" },
            { .type = TRMSG_AFTER, .text = "If you know of any ladies that like\\nfishing, help me reel ’em in!\\n" },
        },
    },

    [964] = { // fisherman_travis
        .name = "Travis",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_FISHERMAN,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 62,
                .species = SPECIES_BARBOACH,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 63,
                .species = SPECIES_BARBOACH,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 63,
                .species = SPECIES_GYARADOS,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 63,
                .species = SPECIES_BARBOACH,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Water Pokémon sure get happy when\\nit rains. So do I!\\r" },
            { .type = TRMSG_LOSE, .text = "Oof. Just got trampled right under\\nyour feet that time!\\n" },
            { .type = TRMSG_AFTER, .text = "Yup, a kid like you should be running\\naround outside, rain or shine.\\n" },
        },
    },

    [965] = { // ranger_taylor
        .name = "Taylor",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_PKMN_RANGER_M,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 64,
                .species = SPECIES_CARNIVINE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 65,
                .species = SPECIES_LUXIO,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Hi, Trainer!\\nCan you keep up with me?\\r" },
            { .type = TRMSG_LOSE, .text = "You’ve got energy to burn!\\n" },
            { .type = TRMSG_AFTER, .text = "Even if a battle gets heated, don’t\\nbreak branches off trees or anything.\\n" },
        },
    },

    [966] = { // ranger_allison
        .name = "Allison",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_PKMN_RANGER_F,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 65,
                .species = SPECIES_MARILL,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 65,
                .species = SPECIES_LEAFEON,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Protect the natural environment.\\nThat’s what we Rangers do!\\r" },
            { .type = TRMSG_LOSE, .text = "We’ve got to get tougher than this..." },
            { .type = TRMSG_AFTER, .text = "I love how natural it is here.\\nI wish I could live out here.\\n" },
        },
    },

    [967] = { // ranger_jeffrey
        .name = "Jeffrey",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_PKMN_RANGER_M,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 66,
                .species = SPECIES_MONFERNO,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Heya, Trainer!\\nAre you being good to Mother Nature?\\r" },
            { .type = TRMSG_LOSE, .text = "Good. You seem to be a kindhearted\\nTrainer.\\n" },
            { .type = TRMSG_AFTER, .text = "Listen, people and Pokémon, we’re all a\\npart of Mother Nature.\\n" },
        },
    },

    [968] = { // policeman_danny
        .name = "Danny",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_POLICEMAN,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 63,
                .species = SPECIES_HOOTHOOT,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 64,
                .species = SPECIES_MACHOP,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Your whole atmosphere is shady.\\nCooperate in this investigation!\\r" },
            { .type = TRMSG_LOSE, .text = "Defeated by sneakiness...\\n" },
            { .type = TRMSG_AFTER, .text = "I mistook your toughness as shadiness!\\nIt’s an honest mistake!\\n" },
        },
    },

    [969] = { // scientist_stefano
        .name = "Stefano",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_SCIENTIST,
            .items = { ITEM_X_DEFENSE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 65,
                .species = SPECIES_KADABRA,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I find it reassuring to be on this\\ndamp soil...\\r" },
            { .type = TRMSG_LOSE, .text = "Ufufufufu...\\nYou had to beat me...\\n" },
            { .type = TRMSG_AFTER, .text = "It feels good to mope here after a\\nloss... Ufufufufu...\\n" },
        },
    },

    [970] = { // collector_dean
        .name = "Dean",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_COLLECTOR,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 64,
                .species = SPECIES_UMBREON,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 64,
                .species = SPECIES_ESPEON,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I’m proud of my Pokémon!\\nHere, I’ll show you why!\\r" },
            { .type = TRMSG_LOSE, .text = "Youch! You sure showed me how tough\\nyou were.\\n" },
            { .type = TRMSG_AFTER, .text = "Oh, what have we here?\\nThat’s a Pokédex!\\rIt records Pokémon data upon\\nsight? I’ve never seen one before!\\rI heard you can move the sun or\\nmoon icon to check the Pokémon\\fhabitat map by time of day!\\n" },
        },
    },

    [971] = { // scientist_shaun
        .name = "Shaun",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_SCIENTIST,
            .items = { ITEM_X_ATTACK, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 65,
                .species = SPECIES_MAGNEMITE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 63,
                .species = SPECIES_KADABRA,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Oh? Here comes a nice-looking\\nTrainer. This is worth evaluation.\\r" },
            { .type = TRMSG_LOSE, .text = "Our research has arrived at this one\\nconclusion: you’re a tough one!\\n" },
            { .type = TRMSG_AFTER, .text = "A huge variety of Pokémon live in the\\nGreat Marsh.\\rYou see, countless years ago,\\nthis whole area was under the sea.\\n" },
        },
    },

    [972] = { // parasol_lady_alexa
        .name = "Alexa",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_PARASOL_LADY,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 64,
                .species = SPECIES_GOLDEEN,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 64,
                .species = SPECIES_BIBAREL,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "There are Pokémon that grow stronger\\nwhen it’s raining.\\r" },
            { .type = TRMSG_LOSE, .text = "Like rain, my tears flow from losing...\\nThey call me the Rain Woman...\\n" },
            { .type = TRMSG_AFTER, .text = "I want to show off my pretty parasol,\\nbut it will get dirty in the rain.\\rOh, such a big dilemma!\\n" },
        },
    },

    [973] = { // parasol_lady_sabrina
        .name = "Sabrina",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_PARASOL_LADY,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 63,
                .species = SPECIES_WOOPER,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 64,
                .species = SPECIES_QUAGSIRE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "When it rains, I get more tense!\\r" },
            { .type = TRMSG_LOSE, .text = "It’s not very easy trying to battle\\nwhile holding an umbrella.\\n" },
            { .type = TRMSG_AFTER, .text = "If it rained every day, I could have\\nmy umbrella open all the time.\\n" },
        },
    },

    [974] = { // swimmer_sheltin
        .name = "Sheltin",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_SWIMMER_M,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 66,
                .species = SPECIES_GYARADOS,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 66,
                .species = SPECIES_GYARADOS,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 66,
                .species = SPECIES_GYARADOS,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I swim the whole year round.\\nI’m not losing a battle at sea!\\r" },
            { .type = TRMSG_LOSE, .text = "I lost at sea! But I swim here the\\nwhole year round!\\n" },
            { .type = TRMSG_AFTER, .text = "When you’re out at sea, Water-type\\nPokémon look more lively.\\n" },
        },
    },

    [975] = { // swimmer_evan
        .name = "Evan",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_SWIMMER_M,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 66,
                .species = SPECIES_GOLDUCK,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 67,
                .species = SPECIES_GOLDUCK,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Brr... I’m starting to get chilly.\\nI could use a win to get warmed up.\\r" },
            { .type = TRMSG_LOSE, .text = "The chill of the sea, and the\\ncoldness of defeat...\\rIt’s a double whammy.\\n" },
            { .type = TRMSG_AFTER, .text = "Look at my lips...\\nThey’re the color of prunes!\\n" },
        },
    },

    [976] = { // swimmer_mary
        .name = "Mary",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_SWIMMER_F,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 67,
                .species = SPECIES_FINNEON,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 67,
                .species = SPECIES_PELIPPER,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Hello, there!\\nAren’t you going to swim?\\r" },
            { .type = TRMSG_LOSE, .text = "What’s saltier?\\nMy tears or the sea...\\n" },
            { .type = TRMSG_AFTER, .text = "There aren’t many sea routes that\\nyou can swim in Sinnoh.\\rIt makes me want to take a vacation\\nin the Hoenn region.\\n" },
        },
    },

    [977] = { // swimmer_haley
        .name = "Haley",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_SWIMMER_F,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 66,
                .species = SPECIES_PSYDUCK,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 68,
                .species = SPECIES_AZUMARILL,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Hi, wave-riding Trainer!\\nHow about a battle on the sea?\\r" },
            { .type = TRMSG_LOSE, .text = "You sure schooled me there.\\n" },
            { .type = TRMSG_AFTER, .text = "Maybe I should switch to surfing,\\ntoo...\\n" },
        },
    },

    [978] = { // tuber_jared
        .name = "Jared",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_TUBER_M,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 63,
                .species = SPECIES_SHELLOS,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 63,
                .species = SPECIES_SHELLOS,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 63,
                .species = SPECIES_SHELLOS,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Isn’t this nice?\\nI love my inflatable tube!\\r" },
            { .type = TRMSG_LOSE, .text = "It’s not easy trying to move holding\\non to this inflatable tube.\\n" },
            { .type = TRMSG_AFTER, .text = "Mom blew up my inflatable tube for me.\\nI ran out of breath just opening it!\\n" },
        },
    },

    [979] = { // tuber_chelsea
        .name = "Chelsea",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_TUBER_F,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 64,
                .species = SPECIES_MARILL,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Ehehe...\\nI can battle, too!\\r" },
            { .type = TRMSG_LOSE, .text = "Losing made me all hungry now.\\n" },
            { .type = TRMSG_AFTER, .text = "That cloud looks like giant ice cream!\\nI bet it tastes yummy!\\n" },
        },
    },

    [980] = { // beauty_cyndy
        .name = "Cyndy",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_BEAUTY,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 65,
                .species = SPECIES_GLAMEOW,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Let me demonstrate my technique.\\nIt’s how this grown-up battles.\\r" },
            { .type = TRMSG_LOSE, .text = "Oh, my gosh!\\nYou attack that savagely?\\n" },
            { .type = TRMSG_AFTER, .text = "You’re so much more of a Trainer\\nthan you look!\\n" },
        },
    },

    [981] = { // fisherman_kenneth
        .name = "Kenneth",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_FISHERMAN,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 63,
                .species = SPECIES_REMORAID,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 63,
                .species = SPECIES_REMORAID,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 64,
                .species = SPECIES_GYARADOS,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Waah! Now! Just now!\\nI was just about to reel it in!\\r" },
            { .type = TRMSG_LOSE, .text = "You need to have more respect for\\na grown-up...\\n" },
            { .type = TRMSG_AFTER, .text = "Go on. Don’t be shy about going up to\\npeople to hear what they have to say...\\rJust don’t you talk to me.\\n" },
        },
    },

    [982] = { // sailor_paul
        .name = "Paul",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_SAILOR,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 66,
                .species = SPECIES_TENTACOOL,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 66,
                .species = SPECIES_PELIPPER,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 67,
                .species = SPECIES_MACHOKE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Traveling alone, are you? That’s\\nimpressive! How about we battle?\\r" },
            { .type = TRMSG_LOSE, .text = "You’re good, pip-squeak!\\n" },
            { .type = TRMSG_AFTER, .text = "Maybe I’ll go work out down at the\\nrestaurant again.\\rThat place gets different people in\\nevery day, and they all like battles.\\n" },
        },
    },

    [983] = { // pi_carlos
        .name = "Carlos",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_PI,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_RISKY_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 65,
                .species = SPECIES_GOLDEEN,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "When I toss this coin, you call it.\\nHeads, we battle.\\rTails, we battle!\\rNow, how will this play out, my friend?\\r" },
            { .type = TRMSG_LOSE, .text = "The coin came up tails, and like it, my\\nPokémon is facedown...\\n" },
            { .type = TRMSG_AFTER, .text = "I flipped a coin when I was ten.\\nI decided to live in Sinnoh then.\\n" },
        },
    },

    [984] = { // collector_douglas
        .name = "Douglas",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_COLLECTOR,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 62,
                .species = SPECIES_JOLTEON,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 62,
                .species = SPECIES_VAPOREON,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 62,
                .species = SPECIES_FLAREON,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "For the sake of my collection, I\\ntake on people I know I can’t beat.\\fThat’s what a Collector does.\\r" },
            { .type = TRMSG_LOSE, .text = "That attack right then was remarkable!\\nYou ought to be proud of it!\\n" },
            { .type = TRMSG_AFTER, .text = "I take pride in having Pokémon that\\nothers don’t.\\rOh, I’m also proud about winning second\\nprize in one of Jubilife TV’s drawings.\\n" },
        },
    },

    [985] = { // collector_brady
        .name = "Brady",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_COLLECTOR,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 61,
                .species = SPECIES_SKORUPI,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 61,
                .species = SPECIES_TANGELA,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 61,
                .species = SPECIES_YANMA,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 61,
                .species = SPECIES_CARNIVINE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 61,
                .species = SPECIES_CROAGUNK,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 61,
                .species = SPECIES_TROPIUS,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "What’s that?!\\rYou say you have a Pokédex?\\nAn authentic one!\\r" },
            { .type = TRMSG_LOSE, .text = "Your Pokédex fills me with such envy,\\nenvy, envy...\\n" },
            { .type = TRMSG_AFTER, .text = "There’s all kinds of Trainers with all\\nsorts of Pokémon with them.\\rThe more you battle, the more your\\nPokédex is filled!\\n" },
        },
    },

    [986] = { // ruin_maniac_bryan
        .name = "Bryan",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_RUIN_MANIAC,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 62,
                .species = SPECIES_BRONZOR,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 63,
                .species = SPECIES_CRANIDOS,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Ah-ha! I found me a Trainer!\\rI challenge you to battle with\\nthe Pokémon I’ve found!\\r" },
            { .type = TRMSG_LOSE, .text = "It’s a challenge trying to win with\\nPokémon one isn’t familiar with...\\n" },
            { .type = TRMSG_AFTER, .text = "Discovery is the treasure I seek.\\nCollecting a lot is my life!\\n" },
        },
    },

    [987] = { // ruin_maniac_ronald
        .name = "Ronald",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_RUIN_MANIAC,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 64,
                .species = SPECIES_SHIELDON,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I travel all over the world in search of\\nmysteries.\\r" },
            { .type = TRMSG_LOSE, .text = "Gasp... One more... Gasp...\\nIt’s like I went on a diet...\\n" },
            { .type = TRMSG_AFTER, .text = "There are mysteries waiting for me\\nto investigate around the world.\\rThis is no time to be feeling sorry\\nfor myself.\\n" },
        },
    },

    [988] = { // collector_jamal
        .name = "Jamal",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_COLLECTOR,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 64,
                .species = SPECIES_PORYGON,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "To find my favorite Pokémon, I’ll go\\neast, west, or any which way!\\r" },
            { .type = TRMSG_LOSE, .text = "But they’re rare Pokémon!\\n" },
            { .type = TRMSG_AFTER, .text = "If you’re trying to find the Pokémon\\nyou want, you need to go everywhere!\\rNot just east and west, either.\\nSouth and north are important, too!" },
        },
    },

    [989] = { // beauty_devon
        .name = "Devon",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_BEAUTY,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 62,
                .species = SPECIES_WORMADAM,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 62,
                .species = SPECIES_WORMADAM,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 62,
                .species = SPECIES_WORMADAM,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Oh? A little kid like you is going to\\nteach me about Pokémon?\\r" },
            { .type = TRMSG_LOSE, .text = "Wow, is that right?\\n" },
            { .type = TRMSG_AFTER, .text = "There are so many kinds of Pokémon.\\nI can’t decide which one to pamper.\\n" },
        },
    },

    [990] = { // psychic_mitchell
        .name = "Mitchell",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_PSYCHIC_M,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 63,
                .species = SPECIES_DUSKULL,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 63,
                .species = SPECIES_KADABRA,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I’d sensed the presence of a\\nTrainer for a while. It was you!\\r" },
            { .type = TRMSG_LOSE, .text = "Defeating you will be no easy matter.\\n" },
            { .type = TRMSG_AFTER, .text = "Is it possible to become more\\npowerful by understanding Pokémon?\\n" },
        },
    },

    [991] = { // psychic_abigail
        .name = "Abigail",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_PSYCHIC_F,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 62,
                .species = SPECIES_CHINGLING,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 63,
                .species = SPECIES_DRIFLOON,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 64,
                .species = SPECIES_KIRLIA,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "There!\\nBehind you!\\r" },
            { .type = TRMSG_LOSE, .text = "My plan to spook you didn’t go over\\nwell at all.\\n" },
            { .type = TRMSG_AFTER, .text = "You might be tough, but let down\\nyour guard at your own risk!\\n" },
        },
    },

    [992] = { // black_belt_derek
        .name = "Derek",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_BLACK_BELT,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 30,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 63,
                .species = SPECIES_CROAGUNK,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Check the sharpness of my fighting\\nPokémon’s moves.\\r" },
            { .type = TRMSG_LOSE, .text = "You’ve dulled its sharpness...\\n" },
            { .type = TRMSG_AFTER, .text = "Back to training for us!\\n" },
        },
    },

    [993] = { // black_belt_gregory
        .name = "Gregory",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_BLACK_BELT,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 30,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 62,
                .species = SPECIES_MACHOP,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 30,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 62,
                .species = SPECIES_MACHOP,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 30,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 62,
                .species = SPECIES_MACHOP,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "You come along with your heart\\npounding!\\rYou think you can win like that?!\\nHiyah!\\r" },
            { .type = TRMSG_LOSE, .text = "Gurgle...\\n" },
            { .type = TRMSG_AFTER, .text = "If I lose here, I wouldn’t stand a\\nchance at the Battle Frontier.\\rNot against those hard-core pros,\\nI wouldn’t!\\n" },
        },
    },

    [994] = { // black_belt_nathaniel
        .name = "Nathaniel",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_BLACK_BELT,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 30,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 61,
                .species = SPECIES_CROAGUNK,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 30,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 62,
                .species = SPECIES_MEDITITE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 30,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 62,
                .species = SPECIES_MACHOP,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Every drop of sweat I shed makes\\nme that much stronger!\\r" },
            { .type = TRMSG_LOSE, .text = "I should be lighter by the amount of\\nsweat I just shed!\\r" },
            { .type = TRMSG_AFTER, .text = "It’s time for another workout.\\nThe more I sweat, the tougher I get!\\n" },
        },
    },

    [995] = { // jogger_scott
        .name = "Scott",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_JOGGER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 63,
                .species = SPECIES_STARAVIA,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Hufff-huff, huff-huff.\\nWant-huff a battle-huff?\\r" },
            { .type = TRMSG_LOSE, .text = "Huff-huff, we-huff lose-huff.\\n" },
            { .type = TRMSG_AFTER, .text = "Bye-huff now-huff.\\nHuff-huff, huff-huff.\\n" },
        },
    },

    [996] = { // ruin_maniac_calvin
        .name = "Calvin",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_RUIN_MANIAC,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 62,
                .species = SPECIES_BRONZOR,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 62,
                .species = SPECIES_SHIELDON,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I’m a treasure hunter.\\rToday, the loot is a victory from\\nyou!\\r" },
            { .type = TRMSG_LOSE, .text = "I can’t win.\\nYou’re too strong for me to win.\\n" },
            { .type = TRMSG_AFTER, .text = "If one’s after treasures, maybe the\\nUnderground is the better choice.\\n" },
        },
    },

    [997] = { // ace_trainer_dennis
        .name = "Dennis",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_ACE_TRAINER_M,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 62,
                .species = SPECIES_GLIGAR,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 62,
                .species = SPECIES_BUIZEL,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 63,
                .species = SPECIES_DRIFBLIM,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I’ll take on anyone!\\nIt can only make me stronger!\\r" },
            { .type = TRMSG_LOSE, .text = "You won and I lost, but the both of\\nus gained something from this.\\n" },
            { .type = TRMSG_AFTER, .text = "In a Pokémon battle, it doesn’t\\nmatter how old or young you are.\\rYour gender doesn’t matter, either.\\nNothing like that means anything!\\n" },
        },
    },

    [998] = { // ace_trainer_maya
        .name = "Maya",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_ACE_TRAINER_F,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 62,
                .species = SPECIES_ROSELIA,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 62,
                .species = SPECIES_RALTS,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 63,
                .species = SPECIES_LICKITUNG,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I’m taking the Veilstone Gym\\nchallenge. But first...\\r" },
            { .type = TRMSG_LOSE, .text = "...My confidence is crushed.\\n" },
            { .type = TRMSG_AFTER, .text = "I think about Pokémon all day long.\\nI was confident, you know.\\n" },
        },
    },

    [999] = { // jogger_craig
        .name = "Craig",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_JOGGER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 61,
                .species = SPECIES_LUXIO,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 62,
                .species = SPECIES_LUXIO,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "If I battle now, won’t it mess up my\\nusual pace?\\r" },
            { .type = TRMSG_LOSE, .text = "My pace is completely off...\\n" },
            { .type = TRMSG_AFTER, .text = "Sticking to one’s own goal is more\\nimportant than it seems.\\rIf you match your goal with someone\\nelse, you’ll lose your identity.\\n" },
        },
    },

    [1000] = { // ace_trainer_blake
        .name = "Blake",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_ACE_TRAINER_M,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 70,
                .species = SPECIES_AMBIPOM,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 70,
                .species = SPECIES_PORYGON2,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I’m an elite battler, but cold is\\nmy nemesis!\\r" },
            { .type = TRMSG_LOSE, .text = "But, how...?\\nAm I weak at battling, too?\\n" },
            { .type = TRMSG_AFTER, .text = "I’d rather be asleep in the lodge’s\\nbed...\\rI can’t take this cold...\\n" },
        },
    },

    [1001] = { // ace_trainer_laura
        .name = "Laura",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_ACE_TRAINER_F,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 71,
                .species = SPECIES_TROPIUS,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I’m fully kitted up and equipped!\\nAnytime will be fine!\\r" },
            { .type = TRMSG_LOSE, .text = "Hunh?!\\n" },
            { .type = TRMSG_AFTER, .text = "Perhaps I should maybe change into\\na more comfy outfit...\\n" },
        },
    },

    [1002] = { // black_belt_philip
        .name = "Philip",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_BLACK_BELT,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 30,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 70,
                .species = SPECIES_MACHOKE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I can withstand this cold. That means\\nI can take any kind of attack!\\r" },
            { .type = TRMSG_LOSE, .text = "Huh? It’s over, you say?\\n" },
            { .type = TRMSG_AFTER, .text = "Oh, gosh, this is bad! I think I’m\\nlosing feeling all over my body!\\n" },
        },
    },

    [1003] = { // skier_bradley
        .name = "Bradley",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_SKIER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 68,
                .species = SPECIES_SNORUNT,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 68,
                .species = SPECIES_SWINUB,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 68,
                .species = SPECIES_SNOVER,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I’m skiing right now, but OK.\\nAs we Skiers say, “Spur thing!”\\r" },
            { .type = TRMSG_LOSE, .text = "...I’ve hit an ice patch!\\n" },
            { .type = TRMSG_AFTER, .text = "I quite enjoyed that battle!\\nLet us meet again. Slalom!\\n" },
        },
    },

    [1004] = { // ace_trainer_garrett
        .name = "Garrett",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_ACE_TRAINER_M,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 69,
                .species = SPECIES_MR_MIME,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 70,
                .species = SPECIES_DUSCLOPS,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 70,
                .species = SPECIES_SCYTHER,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I always play for keeps!\\nThis isn’t practice!\\r" },
            { .type = TRMSG_LOSE, .text = "Good job!\\nThat was an excellent battle.\\n" },
            { .type = TRMSG_AFTER, .text = "If you don’t play for keeps, you’ll\\nlose battles you should be dominating.\\n" },
        },
    },

    [1005] = { // ace_trainer_maria
        .name = "Maria",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_ACE_TRAINER_F,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 69,
                .species = SPECIES_GOLDUCK,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 70,
                .species = SPECIES_RAPIDASH,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 69,
                .species = SPECIES_SUDOWOODO,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "To be ready to answer any call!\\nTo be ready to accept any challenge!\\rThat is the way of a Trainer!\\r" },
            { .type = TRMSG_LOSE, .text = "Oh, yeah?\\nEat snowball, punk!\\n" },
            { .type = TRMSG_AFTER, .text = "You can make all the preparations in\\nthe world, but if it doesn’t work, it\\fdoesn’t work.\\n" },
        },
    },

    [1006] = { // skier_kaitlyn
        .name = "Kaitlyn",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_SKIER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 68,
                .species = SPECIES_SWINUB,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 69,
                .species = SPECIES_SNOVER,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "The fun things about winter!\\nOne, skiing! Two, Pokémon!\\r" },
            { .type = TRMSG_LOSE, .text = "Snivel..." },
            { .type = TRMSG_AFTER, .text = "If it was skiing, I wouldn’t lose.\\nI should go ski with my Pokémon...\\n" },
        },
    },

    [1007] = { // skier_edward
        .name = "Edward",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_SKIER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 70,
                .species = SPECIES_SNEASEL,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Are you a novice?\\nOr around midlevel?\\r" },
            { .type = TRMSG_LOSE, .text = "I never expected you to be an\\nexpert...\\n" },
            { .type = TRMSG_AFTER, .text = "You know how to play your Pokémon\\nwith an edge!\\n" },
        },
    },

    [1008] = { // skier_andrea
        .name = "Andrea",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_SKIER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 70,
                .species = SPECIES_SNOVER,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "How do you expect to battle in this\\nheavy snow?\\r" },
            { .type = TRMSG_LOSE, .text = "The winds of victory shifted...\\n" },
            { .type = TRMSG_AFTER, .text = "It’s so cold here, but here you are,\\nso full of energy.\\rI guess you kids are made tougher\\nthan people my age.\\n" },
        },
    },

    [1009] = { // skier_shawn
        .name = "Shawn",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_SKIER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 68,
                .species = SPECIES_SNOVER,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 68,
                .species = SPECIES_SNOVER,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 69,
                .species = SPECIES_SNOVER,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I’ll show you the techniques I had\\ndrummed into me at ski school!\\r" },
            { .type = TRMSG_LOSE, .text = "I don’t believe it...\\nMy techniques were rebuffed...\\n" },
            { .type = TRMSG_AFTER, .text = "Maybe I should’ve studied at the\\nTrainers’ school instead...\\n" },
        },
    },

    [1010] = { // skier_lexie
        .name = "Lexie",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_SKIER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 69,
                .species = SPECIES_PILOSWINE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 69,
                .species = SPECIES_GLACEON,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I’ve been skiing with Pokémon since\\nI was just five years old.\\r" },
            { .type = TRMSG_LOSE, .text = "Hunh, what...?\\nI repeat, hunh, what...?\\n" },
            { .type = TRMSG_AFTER, .text = "The scenery doesn’t change very much\\naround here. Don’t go getting lost!\\n" },
        },
    },

    [1011] = { // skier_bjorn
        .name = "Bjorn",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_SKIER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 68,
                .species = SPECIES_SWINUB,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 69,
                .species = SPECIES_SNEASEL,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "We Skiers feel Mother Nature through\\nthe soles of our feet!\\r" },
            { .type = TRMSG_LOSE, .text = "I got a good taste of your power!\\n" },
            { .type = TRMSG_AFTER, .text = "Trainers get an appreciation of life\\nthrough Pokémon. At least I think so.\\n" },
        },
    },

    [1012] = { // skier_madison
        .name = "Madison",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_SKIER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 70,
                .species = SPECIES_SNORUNT,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Rainy days make me feel blue...\\rBut the instant it starts to snow,\\nI’m as happy as can be!\\r" },
            { .type = TRMSG_LOSE, .text = "The conditions weren’t very good.\\n" },
            { .type = TRMSG_AFTER, .text = "Can any of your Pokémon use that\\nhidden move to climb cliffs?\\n" },
        },
    },

    [1013] = { // ninja_boy_matthew
        .name = "Matthew",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_NINJA_BOY,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 70,
                .species = SPECIES_GOLBAT,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Poof!\\rYou’ve got a good eye spotting me!\\r" },
            { .type = TRMSG_LOSE, .text = "You also saw through my weak\\nspots...\\n" },
            { .type = TRMSG_AFTER, .text = "I’ll play with my Pokémon--even in a\\nblizzard!\\n" },
        },
    },

    [1014] = { // ninja_boy_ethan
        .name = "Ethan",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_NINJA_BOY,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 69,
                .species = SPECIES_SKORUPI,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 69,
                .species = SPECIES_GOLBAT,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "There are several clans of ninjas.\\nAre you from the Iga clan? Or Kouga?\\r" },
            { .type = TRMSG_LOSE, .text = "I’m not much of a ninja either way...\\n" },
            { .type = TRMSG_AFTER, .text = "I wonder why everyone stops being\\na ninja when they grow up?\\n" },
        },
    },

    [1015] = { // black_belt_luke
        .name = "Luke",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_BLACK_BELT,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 30,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 69,
                .species = SPECIES_CROAGUNK,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 30,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 69,
                .species = SPECIES_RIOLU,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 30,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 69,
                .species = SPECIES_MACHOKE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I dress light wherever I go.\\nHiyah!\\r" },
            { .type = TRMSG_LOSE, .text = "Achoo!\\n" },
            { .type = TRMSG_AFTER, .text = "Maybe I’ll dress warm and come back.\\nHiyah!\\n" },
        },
    },

    [1016] = { // ace_trainer_dalton
        .name = "Dalton",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_ACE_TRAINER_M,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 70,
                .species = SPECIES_ELECTABUZZ,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 70,
                .species = SPECIES_MAGMAR,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "This cold is but nothing compared\\nto the fire that burns in my heart!\\r" },
            { .type = TRMSG_LOSE, .text = "Your heart burns as hot as mine!\\n" },
            { .type = TRMSG_AFTER, .text = "The weather clears up sometimes.\\nThe view is breathtaking then.\\n" },
        },
    },

    [1017] = { // ace_trainer_olivia
        .name = "Olivia",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_ACE_TRAINER_F,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 69,
                .species = SPECIES_KIRLIA,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 70,
                .species = SPECIES_SEAKING,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 69,
                .species = SPECIES_BUNEARY,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Wh-what is it?\\nP-Pokémon battle?!\\r" },
            { .type = TRMSG_LOSE, .text = "Whew...\\nYou are alive, aren’t you?\\n" },
            { .type = TRMSG_AFTER, .text = "Around these parts, perhaps because\\nof all the snow, there are many\\ffolktales of hauntings...\\n" },
        },
    },

    [1018] = { // guitarist_tony
        .name = "Tony",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_GUITARIST,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 67,
                .species = SPECIES_KRICKETUNE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 67,
                .species = SPECIES_MAGNEMITE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Let it rock!\\nIt’s the rhythm of battle!\\r" },
            { .type = TRMSG_LOSE, .text = "Can you hear it?\\nThat’s my guitar weeping...\\n" },
            { .type = TRMSG_AFTER, .text = "I’m too torn up to sing anymore...\\nI am so cool that way...\\n" },
        },
    },

    [1019] = { // sailor_skyler
        .name = "Skyler",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_SAILOR,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 66,
                .species = SPECIES_MANTYKE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 67,
                .species = SPECIES_MACHOKE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "A man of the sea is also a man of\\nPokémon!\\r" },
            { .type = TRMSG_LOSE, .text = "Anchors away!\\n" },
            { .type = TRMSG_AFTER, .text = "You’ve got what it takes to be\\na Trainer among Trainers!\\n" },
        },
    },

    [1020] = { // fisherman_miguel
        .name = "Miguel",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_FISHERMAN,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 67,
                .species = SPECIES_GYARADOS,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 67,
                .species = SPECIES_GYARADOS,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Outdoor fishing for the win!\\rShouting doesn’t help my fishing any,\\nbut shout I must!\\r" },
            { .type = TRMSG_LOSE, .text = "Gwaaah!\\nThis is hurting!\\n" },
            { .type = TRMSG_AFTER, .text = "Oh, right... My shouting is scaring\\naway the Pokémon.\\n" },
        },
    },

    [1021] = { // fisherman_luc
        .name = "Luc",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_FISHERMAN,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 65,
                .species = SPECIES_REMORAID,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 65,
                .species = SPECIES_REMORAID,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 65,
                .species = SPECIES_REMORAID,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 66,
                .species = SPECIES_GYARADOS,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 66,
                .species = SPECIES_REMORAID,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Yeah, yeah...\\nNothing’s biting!\\r" },
            { .type = TRMSG_LOSE, .text = "Can’t catch a fish!\\nCan’t catch a break!\\n" },
            { .type = TRMSG_AFTER, .text = "I was counting on strength in numbers,\\nbut...\\rPacking it in and going home sounds good\\nat a time like this...\\n" },
        },
    },

    [1022] = { // tuber_trenton
        .name = "Trenton",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_TUBER_M,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 66,
                .species = SPECIES_SHELLOS,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 67,
                .species = SPECIES_SHELLOS,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I love my inflatable tube.\\nSo I admire jellyfish Pokémon!\\r" },
            { .type = TRMSG_LOSE, .text = "I’m drifting away...\\n" },
            { .type = TRMSG_AFTER, .text = "I wish Professor Rowan would\\ngive me a Pokédex.\\rBut that old guy looks kind of\\nscary.\\n" },
        },
    },

    [1023] = { // tuber_mariel
        .name = "Mariel",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_TUBER_F,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 66,
                .species = SPECIES_MARILL,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 67,
                .species = SPECIES_MARILL,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I can’t swim without my inflatable tube.\\nBut my Pokémon might be strong!\\r" },
            { .type = TRMSG_LOSE, .text = "They weren’t tough, my Pokémon...\\n" },
            { .type = TRMSG_AFTER, .text = "My mommy said that Professor Rowan\\nis really kindhearted." },
        },
    },

    [1024] = { // swimmer_dillon
        .name = "Dillon",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_SWIMMER_M,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 67,
                .species = SPECIES_REMORAID,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 67,
                .species = SPECIES_FLOATZEL,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Well? Does it look like I’m swimming\\ngracefully?\\r" },
            { .type = TRMSG_LOSE, .text = "I’m finally feeling fatigued...\\n" },
            { .type = TRMSG_AFTER, .text = "I may look like I’m swimming\\ngracefully, but beneath the surface\\fI’m kicking furiously.\\n" },
        },
    },

    [1025] = { // swimmer_vanessa
        .name = "Vanessa",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_SWIMMER_F,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 68,
                .species = SPECIES_GOLDUCK,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "One thing about Water-type Pokémon:\\nThere’s a huge variety!\\rI’ll show you the Water-type Pokémon I\\nchose and why I’m so proud of them!\\r" },
            { .type = TRMSG_LOSE, .text = "I can’t boast when I lose...\\nI’m so disappointed...\\n" },
            { .type = TRMSG_AFTER, .text = "Sure I lost, but watch me! I’ll get\\ntougher with water Pokémon.\\n" },
        },
    },

    [1026] = { // fisherman_cory
        .name = "Cory",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_FISHERMAN,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 65,
                .species = SPECIES_FINNEON,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 66,
                .species = SPECIES_FINNEON,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 67,
                .species = SPECIES_FINNEON,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I like fishing, no question.\\nBut battling? That’s what I love!\\r" },
            { .type = TRMSG_LOSE, .text = "Sploosh!\\n" },
            { .type = TRMSG_AFTER, .text = "If you don’t know how to fish, you’re\\nmissing half of life’s enjoyment.\\rIf you don’t know Pokémon...\\nYou’re missing out on all of it!\\n" },
        },
    },

    [1027] = { // collector_ivan
        .name = "Ivan",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_COLLECTOR,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 68,
                .species = SPECIES_TOGETIC,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Are you going to the Pal Park, too?\\rFor you, I’m willing to show off my\\nprized Pokémon!\\r" },
            { .type = TRMSG_LOSE, .text = "So? Hot stuff, huh?\\nThat’s why I’m so proud of my Pokémon!\\n" },
            { .type = TRMSG_AFTER, .text = "Pal Park, huh? I wonder what kinds\\nof Pokémon you can see there?\\n" },
        },
    },

    [1028] = { // ace_trainer_jake
        .name = "Jake",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_ACE_TRAINER_M,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 68,
                .species = SPECIES_STARAPTOR,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 68,
                .species = SPECIES_GIRAFARIG,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "They call me an Ace Trainer.\\rAllow me to demonstrate the talent\\nthat makes me so!\\r" },
            { .type = TRMSG_LOSE, .text = "I’m burning with jealousy over your\\nraw talent!\\n" },
            { .type = TRMSG_AFTER, .text = "I think keeping up the effort to\\nbetter yourself is a talent in itself.\\n" },
        },
    },

    [1029] = { // ace_trainer_shannon
        .name = "Shannon",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_ACE_TRAINER_F,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 67,
                .species = SPECIES_CHERRIM,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 67,
                .species = SPECIES_AZUMARILL,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 68,
                .species = SPECIES_LOPUNNY,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Really? So you think you can beat me?\\nI’m an Ace Trainer, you do realize?\\r" },
            { .type = TRMSG_LOSE, .text = "I admit defeat...\\n" },
            { .type = TRMSG_AFTER, .text = "Beaten in battle, but not in spirit.\\nThat’s the mark of a real Ace Trainer.\\n" },
        },
    },

    [1030] = { // fisherman_brett
        .name = "Brett",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_FISHERMAN,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 72,
                .species = SPECIES_MAGIKARP,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 71,
                .species = SPECIES_FINNEON,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 71,
                .species = SPECIES_FEEBAS,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Well, I am fishing, but...\\rVery well!\\nI accept your challenge!\\r" },
            { .type = TRMSG_LOSE, .text = "A bittersweet smile is on my lips.\\n" },
            { .type = TRMSG_AFTER, .text = "I’ve gone down in defeat.\\nWhatever more is there to say?\\n" },
        },
    },

    [1031] = { // fisherman_alec
        .name = "Alec",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_FISHERMAN,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 71,
                .species = SPECIES_MAGIKARP,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 73,
                .species = SPECIES_GYARADOS,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Hi, traveler!\\nHow would you like to battle?\\r" },
            { .type = TRMSG_LOSE, .text = "You’ve bested this fisherman traveler.\\n" },
            { .type = TRMSG_AFTER, .text = "I like to fish.\\nYou’re a traveler.\\rFarewell, until we meet again!\\n" },
        },
    },

    [1032] = { // fisherman_george
        .name = "George",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_FISHERMAN,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 71,
                .species = SPECIES_MAGIKARP,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 71,
                .species = SPECIES_FINNEON,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 71,
                .species = SPECIES_REMORAID,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 71,
                .species = SPECIES_GYARADOS,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I’m getting bored of fishing.\\nLet’s have a quick battle!\\r" },
            { .type = TRMSG_LOSE, .text = "I’ve been done in...\\n" },
            { .type = TRMSG_AFTER, .text = "Thanks for that!\\nIt was a good change of pace for me.\\n" },
        },
    },

    [1033] = { // fisherman_cole
        .name = "Cole",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_FISHERMAN,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 72,
                .species = SPECIES_GYARADOS,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 70,
                .species = SPECIES_REMORAID,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 72,
                .species = SPECIES_GYARADOS,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "If I stare at the water’s surface\\nfor too long, I begin to forget what\\fI was doing in the first place.\\r" },
            { .type = TRMSG_LOSE, .text = "I don’t know how, but I lost!\\n" },
            { .type = TRMSG_AFTER, .text = "Oh, right...\\nI was fishing, wasn’t I?\\n" },
        },
    },

    [1034] = { // beauty_nicola
        .name = "Nicola",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_BEAUTY,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 73,
                .species = SPECIES_LOPUNNY,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "After enjoying a meal at the hotel\\nrestaurant, one has a battle.\\rThat’s the social etiquette.\\r" },
            { .type = TRMSG_LOSE, .text = "Enchanting.\\n" },
            { .type = TRMSG_AFTER, .text = "Personally, I would much rather pamper\\nPokémon than make them battle.\\n" },
        },
    },

    [1035] = { // tuber_conner
        .name = "Conner",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_TUBER_M,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 72,
                .species = SPECIES_REMORAID,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Look, look! Look at my Pokémon!\\nIt’s really cool!\\r" },
            { .type = TRMSG_LOSE, .text = "Wowee! I had to hold on tight to\\nmy inflatable tube!\\n" },
            { .type = TRMSG_AFTER, .text = "Pools are OK, but I like the sea\\nbecause Pokémon live there.\\n" },
        },
    },

    [1036] = { // rich_boy_trey
        .name = "Trey",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_RICH_BOY,
            .items = { ITEM_FULL_RESTORE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 73,
                .species = SPECIES_LUXRAY,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I need to escape these doldrums...\\nYou can keep me company.\\r" },
            { .type = TRMSG_LOSE, .text = "That did liberate me from the doldrums,\\nbut at what price...\\n\\n" },
            { .type = TRMSG_AFTER, .text = "I’m going back to the hotel to rest!\\nI find you exceedingly tiresome!\\n" },
        },
    },

    [1037] = { // sailor_luther
        .name = "Luther",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_SAILOR,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 71,
                .species = SPECIES_WINGULL,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 71,
                .species = SPECIES_MACHOKE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 72,
                .species = SPECIES_GASTRODON,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "My dream’s a big one!\\rI want to battle every kind of Pokémon\\nfrom around the world!\\r" },
            { .type = TRMSG_LOSE, .text = "I lost, but I am one step closer to\\nrealizing my dream!\\n" },
            { .type = TRMSG_AFTER, .text = "Listen, you! Whatever happens, never\\nlose sight of your dream!\\n" },
        },
    },

    [1038] = { // policeman_thomas
        .name = "Thomas",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_POLICEMAN,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 72,
                .species = SPECIES_NOCTOWL,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 72,
                .species = SPECIES_MACHOKE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Who’s there?!\\nWhat do you think you’re doing?!\\r" },
            { .type = TRMSG_LOSE, .text = "I happen to be rather jumpy, so\\neveryone looks suspicious to me.\\n" },
            { .type = TRMSG_AFTER, .text = "I’m easy to scare, and yet here I am\\non patrol. Funny how things go.\\n" },
        },
    },

    [1039] = { // tuber_holly
        .name = "Holly",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_TUBER_F,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 72,
                .species = SPECIES_REMORAID,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Listen, listen! Can you tell me what\\nkind of Pokémon you have?\\r" },
            { .type = TRMSG_LOSE, .text = "You’re so tough. I’m stunned...\\n" },
            { .type = TRMSG_AFTER, .text = "I want to hang on to a BUIZEL and\\njust bob around.\\n" },
        },
    },

    [1040] = { // sailor_marc
        .name = "Marc",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_SAILOR,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 73,
                .species = SPECIES_MANTYKE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Oh, we’ll ride upon the sea,\\nin a boat, just you and me!\\rThat’s the way of the Sailor!\\nWay of the Sailor. Sing it!\\r" },
            { .type = TRMSG_LOSE, .text = "Your Pokémon...\\nThey’re looking good!\\n" },
            { .type = TRMSG_AFTER, .text = "You ought to think about becoming\\na Sailor yourself.\\rIt’s been great to be able to visit\\ndifferent places around the world.\\n" },
        },
    },

    [1041] = { // poke_kid_janet
        .name = "Janet",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_POKE_KID,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 71,
                .species = SPECIES_PIKACHU,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 71,
                .species = SPECIES_PIKACHU,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Bika bikabika!\\nPigachu!\\r" },
            { .type = TRMSG_LOSE, .text = "Pikachu...\\n" },
            { .type = TRMSG_AFTER, .text = "Pika...\\rI’ll need a lot more practice to\\nbecome a real PIKACHU...\\n" },
        },
    },

    [1042] = { // ace_trainer_ruben
        .name = "Ruben",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_ACE_TRAINER_M,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 78,
                .species = SPECIES_NUZLEAF,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 79,
                .species = SPECIES_GYARADOS,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "There’s something about you...\\nYou’re not just anybody.\\rI challenge you!\\r" },
            { .type = TRMSG_LOSE, .text = "You’re at a different level of\\nexpertise for sure!\\n" },
            { .type = TRMSG_AFTER, .text = "You’ve won countless times...\\nThat has made you very powerful.\\n" },
        },
    },

    [1043] = { // psychic_maxwell
        .name = "Maxwell",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_PSYCHIC_M,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 79,
                .species = SPECIES_MISDREAVUS,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 77,
                .species = SPECIES_HAUNTER,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "For some reason I was drawn here,\\nand it is here that I met you...\\rI want to know what all this means!\\r" },
            { .type = TRMSG_LOSE, .text = "I see...\\rSo that’s what it means...\\n" },
            { .type = TRMSG_AFTER, .text = "I feel... I feel some sort of a mystic\\npresence emanating from here...\\n" },
        },
    },

    [1044] = { // black_belt_carl
        .name = "Carl",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_BLACK_BELT,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 30,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 78,
                .species = SPECIES_TYROGUE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 30,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 80,
                .species = SPECIES_HITMONLEE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "All right, my Pokémon squad!\\nGet out there and kick up a storm!\\r" },
            { .type = TRMSG_LOSE, .text = "The squad failed to hit its stride...\\n" },
            { .type = TRMSG_AFTER, .text = "Hmm...\\rGazing out over the sea doesn’t do a\\nthing for toughening up my Pokémon!\\n" },
        },
    },

    [1045] = { // veteran_armando
        .name = "Armando",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_VETERAN,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 100,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 77,
                .species = SPECIES_MUK,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 100,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 77,
                .species = SPECIES_MIGHTYENA,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 100,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 78,
                .species = SPECIES_LICKITUNG,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I’ve seen countless Trainers and\\neven more Pokémon!\\rSo, what kind of a Trainer are you?\\r" },
            { .type = TRMSG_LOSE, .text = "I see...\\nSimply outstanding." },
            { .type = TRMSG_AFTER, .text = "I’ve seen countless Trainers and\\neven more Pokémon.\\rYou’re a strong Trainer.\\nMoreover, your heart is strong.\\n" },
        },
    },

    [1046] = { // psychic_brittney
        .name = "Brittney",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_PSYCHIC_F,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 78,
                .species = SPECIES_DROWZEE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 79,
                .species = SPECIES_ALAKAZAM,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "There is nothing here... And yet\\nthere is a power lurking...\\rWere you drawn by it, as well?\\r" },
            { .type = TRMSG_LOSE, .text = "The power that slumbers within you...\\nIt is rather marvelous indeed...\\n" },
            { .type = TRMSG_AFTER, .text = "A place where nothing else exists...\\rA place such as that is better suited\\nto awaken the power within.\\n" },
        },
    },

    [1047] = { // ace_trainer_jamie
        .name = "Jamie",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_ACE_TRAINER_F,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 80,
                .species = SPECIES_METAGROSS,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I constantly analyze Pokémon and\\nvarious battles on my laptop.\\r" },
            { .type = TRMSG_LOSE, .text = "...Things don’t always work out\\naccording to my calculations...\\n" },
            { .type = TRMSG_AFTER, .text = "I had a lot of fun battling with\\nyou, though.\\rI wonder if I can analyze the\\nbattle data properly?\\rI could use a rematch to get\\nsome additional data.\\n" },
        },
    },

    [1048] = { // ruin_maniac_larry
        .name = "Larry",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_RUIN_MANIAC,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 79,
                .species = SPECIES_AERODACTYL,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I don’t care who you are--no one\\ninterferes with my treasure hunting!\\r" },
            { .type = TRMSG_LOSE, .text = "My Pokémon!\\nMy treasures!\\n" },
            { .type = TRMSG_AFTER, .text = "I heard there’s an intriguing stone\\nmonument around, so I came running.\\n" },
        },
    },

    [1049] = { // dragon_tamer_hayden
        .name = "Hayden",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_DRAGON_TAMER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 78,
                .species = SPECIES_ALTARIA,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 78,
                .species = SPECIES_SEADRA,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "My dragon Pokémon chose to become\\npowerful here. They sure like it!\\r" },
            { .type = TRMSG_LOSE, .text = "Your battle style...\\nSo savage...\\n" },
            { .type = TRMSG_AFTER, .text = "It’s been several years since I left\\nthe Dragon’s Den.\\rI’ve got to say, your Pokémon are\\nin the top class for toughness." },
        },
    },

    [1050] = { // ace_trainer_rodolfo
        .name = "Rodolfo",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_ACE_TRAINER_M,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 78,
                .species = SPECIES_STARMIE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 78,
                .species = SPECIES_VIBRAVA,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "There is something missing in the\\nway I battle...\\rI’ve come here to find it.\\r" },
            { .type = TRMSG_LOSE, .text = "I see it now...\\nI know what I lack.\\n" },
            { .type = TRMSG_AFTER, .text = "Battling you was an eye-opener.\\rI learned something very important\\nin that short time.\\n" },
        },
    },

    [1051] = { // ranger_ashlee
        .name = "Ashlee",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_PKMN_RANGER_F,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 78,
                .species = SPECIES_LINOONE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 78,
                .species = SPECIES_ARBOK,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "In the embrace of Mother Nature,\\npeople and Pokémon grow strong!\\r" },
            { .type = TRMSG_LOSE, .text = "Your Pokémon are so muscular.\\nIt makes me sigh seeing them...\\n" },
            { .type = TRMSG_AFTER, .text = "It doesn’t matter where they grow.\\rPokémon can be made tougher\\nanywhere if you set your mind to it.\\n" },
        },
    },

    [1052] = { // bird_keeper_audrey
        .name = "Audrey",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_BIRD_KEEPER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 76,
                .species = SPECIES_TAILLOW,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 77,
                .species = SPECIES_FARFETCHD,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 78,
                .species = SPECIES_PIDGEOT,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I let my bird Pokémon carry me to\\nwherever. And so, here I am!\\r" },
            { .type = TRMSG_LOSE, .text = "Sheesh... I arrive in a new place, and\\nit turns out to be the Battle Zone...\\n" },
            { .type = TRMSG_AFTER, .text = "I was born in the Hoenn region.\\nI’ve only just recently flown here.\\n" },
        },
    },

    [1053] = { // psychic_daisy
        .name = "Daisy",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_PSYCHIC_F,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 76,
                .species = SPECIES_SLOWPOKE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 78,
                .species = SPECIES_SLOWBRO,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Right after this, you will send out your\\nPokémon to do battle!\\r" },
            { .type = TRMSG_LOSE, .text = "After this, I will reluctantly hand over\\nthe prize money to you...\\n" },
            { .type = TRMSG_AFTER, .text = "What will you do after this?\\rWhy don’t you decide for yourself?\\nIt would be much more fun that way!\\n" },
        },
    },

    [1054] = { // dragon_tamer_geoffrey
        .name = "Geoffrey",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_DRAGON_TAMER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 77,
                .species = SPECIES_GABITE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 78,
                .species = SPECIES_ALTARIA,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "See the potential of dragon Pokémon!\\nThe Championship is within my sights!\\r" },
            { .type = TRMSG_LOSE, .text = "Potential doesn’t mean I can win...\\n" },
            { .type = TRMSG_AFTER, .text = "A Dragon Tamer Champion...\\rI’ll need to train so much more to\\neven come close to coming close...\\n" },
        },
    },

    [1055] = { // ace_trainer_deanna
        .name = "Deanna",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_ACE_TRAINER_F,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 78,
                .species = SPECIES_FLAAFFY,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 78,
                .species = SPECIES_TROPIUS,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Worthy opponents... The search for\\nthem drives me to travel far.\\r" },
            { .type = TRMSG_LOSE, .text = "I’ve certainly found a tough\\nadversary in you...\\n" },
            { .type = TRMSG_AFTER, .text = "How much you believe in your\\nPokémon...\\rThat’s a critical factor in how a\\nbattle will turn out.\\n" },
        },
    },

    [1056] = { // ranger_dwayne
        .name = "Dwayne",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_PKMN_RANGER_M,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 77,
                .species = SPECIES_SKARMORY,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 77,
                .species = SPECIES_GOLDUCK,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 77,
                .species = SPECIES_DONPHAN,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "We go on patrol to make sure there’s\\nnothing strange going on.\\rAnd occasionally, we battle!\\r" },
            { .type = TRMSG_LOSE, .text = "Thanks much!\\n" },
            { .type = TRMSG_AFTER, .text = "Using the Pokémon ability Pickup for\\ngathering dropped items is a good thing.\\rI think it’s ecological, even.\\nI am cleaning up the environment!\\n" },
        },
    },

    [1057] = { // ace_trainer_quinn
        .name = "Quinn",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_ACE_TRAINER_M,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 78,
                .species = SPECIES_PINSIR,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 78,
                .species = SPECIES_LANTURN,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I’ve pumped up my gang till they can’t\\nget pumped no more.\\rThey’re going to school your Pokémon!\\r" },
            { .type = TRMSG_LOSE, .text = "My bunch got schooled, and how!\\n" },
            { .type = TRMSG_AFTER, .text = "I fed my gang Protein, Carbos...\\nYou name it, I pumped ’em full of it.\\n" },
        },
    },

    [1058] = { // ace_trainer_saul
        .name = "Saul",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_ACE_TRAINER_M,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 81,
                .species = SPECIES_TAUROS,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I’ve got the urge to battle with you.\\nHope you’re willing to oblige!\\r" },
            { .type = TRMSG_LOSE, .text = "I shouldn’t have paid attention\\nto my urge...\\n" },
            { .type = TRMSG_AFTER, .text = "So long as my partner’s alongside me,\\nI’m willing to take on the world!\\n" },
        },
    },

    [1059] = { // ranger_felicia
        .name = "Felicia",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_PKMN_RANGER_F,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 80,
                .species = SPECIES_SKIPLOOM,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 80,
                .species = SPECIES_LOPUNNY,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "We’ve grown strong together in\\nnature and in the concrete jungle.\\rWe make everywhere we go our\\nplayground!\\r" },
            { .type = TRMSG_LOSE, .text = "You’re really tough, aren’t you?!\\n" },
            { .type = TRMSG_AFTER, .text = "Look around you at this wildly\\ncontorted terrain.\\rIt’s no wonder that Pokémon would\\ngrow tough in a place like this.\\n" },
        },
    },

    [1060] = { // black_belt_griffin
        .name = "Griffin",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_BLACK_BELT,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 30,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 79,
                .species = SPECIES_BRELOOM,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 30,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 79,
                .species = SPECIES_MEDICHAM,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I have meditated under a waterfall\\nto temper my spirit.\\rAllow me to demonstrate its strength!\\r" },
            { .type = TRMSG_LOSE, .text = "Ha-choo! Sniffle...\\n" },
            { .type = TRMSG_AFTER, .text = "All that time under the waterfall...\\nSeems I’ve caught a cold.\\n" },
        },
    },

    [1061] = { // ace_trainer_mikayla
        .name = "Mikayla",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_ACE_TRAINER_F,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 78,
                .species = SPECIES_SEVIPER,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 78,
                .species = SPECIES_PERSIAN,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 78,
                .species = SPECIES_ABSOL,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "The world is huge, and there are\\nso many different Pokémon!\\rWhat kinds of Pokémon are with you?\\nPlease, I want to have a look!\\r" },
            { .type = TRMSG_LOSE, .text = "Wow, there are Pokémon that\\nwonderful!\\n" },
            { .type = TRMSG_AFTER, .text = "There is always something to like\\nabout any Pokémon.\\rIt’s so hard to decide which ones\\nI should raise.\\n" },
        },
    },

    [1062] = { // ace_trainer_jose
        .name = "Jose",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_ACE_TRAINER_M,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 78,
                .species = SPECIES_GOLDUCK,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 78,
                .species = SPECIES_SANDSLASH,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 79,
                .species = SPECIES_MANECTRIC,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Have you any knowledge of levels\\nor the stats of Pokémon? Well, I do!\\r" },
            { .type = TRMSG_LOSE, .text = "Hmm. I like how you attack.\\n" },
            { .type = TRMSG_AFTER, .text = "Pokémon and numbers...\\nWho cares about that stuff?\\rWinning is what’s important.\\nNumbers aren’t everything.\\n" },
        },
    },

    [1063] = { // ace_trainer_moira
        .name = "Moira",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_ACE_TRAINER_F,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 78,
                .species = SPECIES_SANDSLASH,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 78,
                .species = SPECIES_GASTRODON,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 79,
                .species = SPECIES_CLAYDOL,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Please don’t hold anything back.\\r" },
            { .type = TRMSG_LOSE, .text = "Hmm...\\n" },
            { .type = TRMSG_AFTER, .text = "I feel invigorated from that battle,\\neven though we lost.\\rAfter all, we gave it everything we\\nhad." },
        },
    },

    [1064] = { // ranger_kyler
        .name = "Kyler",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_PKMN_RANGER_M,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 78,
                .species = SPECIES_EXEGGCUTE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 78,
                .species = SPECIES_ZANGOOSE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 79,
                .species = SPECIES_EMPOLEON,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "People! Nature! Pokémon!\\nHarmony is essential!\\r" },
            { .type = TRMSG_LOSE, .text = "You’re A-OK!\\n" },
            { .type = TRMSG_AFTER, .text = "Protecting Pokémon and nature.\\nThink of what that means.\\n" },
        },
    },

    [1065] = { // ranger_krista
        .name = "Krista",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_PKMN_RANGER_F,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 79,
                .species = SPECIES_LAIRON,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 79,
                .species = SPECIES_MAROWAK,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Are you getting worn out from all\\nthe running you’ve done?\\r" },
            { .type = TRMSG_LOSE, .text = "You’re not tired at all?!\\n" },
            { .type = TRMSG_AFTER, .text = "The world is full of Pokémon and all\\nsorts of Trainers.\\n" },
        },
    },

    [1066] = { // dragon_tamer_keegan
        .name = "Keegan",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_DRAGON_TAMER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 78,
                .species = SPECIES_TRAPINCH,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 79,
                .species = SPECIES_VIBRAVA,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Dragon Pokémon are sacred beings...\\nThat’s what my master taught me.\\rAnd now I’ll prove it to you!\\r" },
            { .type = TRMSG_LOSE, .text = "Not good enough!\\nWe’re still not strong enough!\\n" },
            { .type = TRMSG_AFTER, .text = "It’s not good enough for a Pokémon\\nto just be tough.\\rIt’s not good enough for a Trainer\\nto just work hard.\\rBoth have to grow together!" },
        },
    },

    [1067] = { // psychic_corbin
        .name = "Corbin",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_PSYCHIC_M,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 78,
                .species = SPECIES_XATU,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 78,
                .species = SPECIES_GALLADE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "You’re going to win!\\nThat’s the future I saw!\\r" },
            { .type = TRMSG_LOSE, .text = "What I saw in the future turned out\\nto be true...\\n" },
            { .type = TRMSG_AFTER, .text = "I lost, but my vision of the future\\ncame true...\\n" },
        },
    },

    [1068] = { // ace_trainer_meagan
        .name = "Meagan",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_ACE_TRAINER_F,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 79,
                .species = SPECIES_DELCATTY,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 79,
                .species = SPECIES_ABOMASNOW,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "What sort of moves have you taught?\\nThat tells me how good you are!\\r" },
            { .type = TRMSG_LOSE, .text = "Yowch!\\n" },
            { .type = TRMSG_AFTER, .text = "I heard that somewhere there’s\\nsomeone who teaches Pokémon moves.\\n" },
        },
    },

    [1069] = { // black_belt_davon
        .name = "Davon",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_BLACK_BELT,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 30,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 77,
                .species = SPECIES_TYROGUE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 30,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 77,
                .species = SPECIES_MAKUHITA,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 30,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 79,
                .species = SPECIES_MACHAMP,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "My quest for power brought me here.\\rIt was beneath the desert sand that\\nI toughened my body and soul.\\rAccept my challenge! Uraah!\\r" },
            { .type = TRMSG_LOSE, .text = "My spirit is broken...\\n" },
            { .type = TRMSG_AFTER, .text = "I thought I couldn’t win before it\\nbecame a fact...\\rI’ve let down my Pokémon...\\rThey go to battle with faith in\\ntheir Trainer..." },
        },
    },

    [1070] = { // ranger_deshawn
        .name = "Deshawn",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_PKMN_RANGER_M,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 77,
                .species = SPECIES_SPINDA,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 77,
                .species = SPECIES_KECLEON,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 77,
                .species = SPECIES_GRANBULL,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I work to protect beautiful, natural\\nenvironments.\\rMy Pokémon are my constant\\ncompanions while I work.\\r" },
            { .type = TRMSG_LOSE, .text = "Oh, my gosh!\\nMy poor Pokémon!\\n" },
            { .type = TRMSG_AFTER, .text = "Everyone can do their part to keep\\nnature clean. It doesn’t take much.\\n" },
        },
    },

    [1071] = { // ace_trainer_felix
        .name = "Felix",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_ACE_TRAINER_M,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 78,
                .species = SPECIES_DUSCLOPS,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 78,
                .species = SPECIES_SALAMENCE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Welcome to my Pokémon show!\\r" },
            { .type = TRMSG_LOSE, .text = "Did you enjoy the show?\\nSuper fabulous, wasn’t it?\\n" },
            { .type = TRMSG_AFTER, .text = "I’ll be happy to battle you again!\\nLet’s battle again sometime, yeah?" },
        },
    },

    [1072] = { // ace_trainer_dana
        .name = "Dana",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_ACE_TRAINER_F,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 78,
                .species = SPECIES_MIGHTYENA,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 78,
                .species = SPECIES_KIRLIA,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "You’re willing to battle?\\nLet me see what you have?\\r" },
            { .type = TRMSG_LOSE, .text = "Your love of Pokémon really shows!\\n" },
            { .type = TRMSG_AFTER, .text = "I grew up together with Felix and\\nmy team, right from my childhood.\\rAll our memories, we’ve always shared\\nthem.\\n" },
        },
    },

    [1073] = { // ace_trainer_sandra
        .name = "Sandra",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_ACE_TRAINER_F,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 78,
                .species = SPECIES_DUGTRIO,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 77,
                .species = SPECIES_RAICHU,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 77,
                .species = SPECIES_NINETALES,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "When eyes meet...\\nThat’s when a battle starts!\\r" },
            { .type = TRMSG_LOSE, .text = "You won’t let me win?\\n" },
            { .type = TRMSG_AFTER, .text = "I suddenly remembered what it was \\nlike when I had my first battle.\\rI wonder why that would be?\\n" },
        },
    },

    [1074] = { // swimmer_erik
        .name = "Erik",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_SWIMMER_M,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 68,
                .species = SPECIES_TENTACRUEL,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "On your marks, get set, go!\\r...When I say that, let’s start.\\r" },
            { .type = TRMSG_LOSE, .text = "Yow-ow-ow-ow!\\nMy leg’s cramped up!\\n" },
            { .type = TRMSG_AFTER, .text = "I forgot to do my stretching\\nexercises...\\n" },
        },
    },

    [1075] = { // swimmer_vincent
        .name = "Vincent",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_SWIMMER_M,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 67,
                .species = SPECIES_PELIPPER,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 67,
                .species = SPECIES_GASTRODON,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "OK! Get your breathing in order!\\nOK! You’re ready to go!\\r" },
            { .type = TRMSG_LOSE, .text = "I let my momentum falter...\\n" },
            { .type = TRMSG_AFTER, .text = "Listen, I have something important to\\nsay to you.\\rDon’t drown in your own talent.\\n" },
        },
    },

    [1076] = { // swimmer_jessica
        .name = "Jessica",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_SWIMMER_F,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 65,
                .species = SPECIES_GOLDEEN,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 65,
                .species = SPECIES_GOLDEEN,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 66,
                .species = SPECIES_GOLDEEN,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 67,
                .species = SPECIES_SEAKING,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Swimming is a workout for your entire\\nbody.\\rJump in and swim!\\nSwim, you!\\r" },
            { .type = TRMSG_LOSE, .text = "Sunk like a stone!\\n" },
            { .type = TRMSG_AFTER, .text = "Well, Pokémon’s one thing, but you\\nshould take up swimming, too!\\n" },
        },
    },

    [1077] = { // swimmer_erica
        .name = "Erica",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_SWIMMER_F,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 68,
                .species = SPECIES_FINNEON,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "The human body floats more easily in\\nthe sea, so it’s easy to swim!\\r" },
            { .type = TRMSG_LOSE, .text = "The sea is salty, but all I taste is\\nbitterness...\\n" },
            { .type = TRMSG_AFTER, .text = "I’ve got that sinking feeling...\\n" },
        },
    },

    [1078] = { // swimmer_adrian
        .name = "Adrian",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_SWIMMER_M,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 66,
                .species = SPECIES_REMORAID,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 65,
                .species = SPECIES_TENTACOOL,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 67,
                .species = SPECIES_OCTILLERY,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I only live to swim. Teach me what’s\\nso fun about Pokémon!\\r" },
            { .type = TRMSG_LOSE, .text = "Oh, yeah, that was fun!\\nI learned something good!\\n" },
            { .type = TRMSG_AFTER, .text = "It’s what I live for!\\nPokémon!\\n" },
        },
    },

    [1079] = { // swimmer_katelyn
        .name = "Katelyn",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_SWIMMER_F,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 66,
                .species = SPECIES_BUIZEL,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 66,
                .species = SPECIES_MEDICHAM,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 66,
                .species = SPECIES_SEAKING,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I may not look it now, but I’m a\\nstar. I’m always with my Pokémon.\\r" },
            { .type = TRMSG_LOSE, .text = "I lost, but at least I had fun.\\n" },
            { .type = TRMSG_AFTER, .text = "If it were an underwater Pokémon\\nshow, I would have shined.\\n" },
        },
    },

    [1080] = { // swimmer_claire
        .name = "Claire",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_SWIMMER_F,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 68,
                .species = SPECIES_FLOATZEL,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I bought a new bikini!\\nIt’s this year’s newest model!\\r" },
            { .type = TRMSG_LOSE, .text = "Psssssh!\\n" },
            { .type = TRMSG_AFTER, .text = "I bought the wrong size of bikini.\\nIt’s a little too snug...\\n" },
        },
    },

    [1081] = { // swimmer_wesley
        .name = "Wesley",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_SWIMMER_M,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 72,
                .species = SPECIES_FLOATZEL,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 72,
                .species = SPECIES_TENTACRUEL,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I’ve decided!\\nI’m off to the Pokémon League if I win!\\r" },
            { .type = TRMSG_LOSE, .text = "Blblblblugh...\\n" },
            { .type = TRMSG_AFTER, .text = "It’s OK. Just let me float away\\nlike driftwood...\\n" },
        },
    },

    [1082] = { // swimmer_ricardo
        .name = "Ricardo",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_SWIMMER_M,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 73,
                .species = SPECIES_TENTACRUEL,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "It might not look like it, but I’m\\ntraveling now.\\r" },
            { .type = TRMSG_LOSE, .text = "You’ve got the upper hand on me.\\n" },
            { .type = TRMSG_AFTER, .text = "But you can be sure that there will\\nbe bigger challenges in front of you.\\rGo! Go as far as you can! You alone can\\nbroaden your horizons.\\n" },
        },
    },

    [1083] = { // swimmer_francisco
        .name = "Francisco",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_SWIMMER_M,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 71,
                .species = SPECIES_TENTACOOL,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 73,
                .species = SPECIES_GOLDUCK,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "The sea around these parts is harsh.\\nAs am I!\\r" },
            { .type = TRMSG_LOSE, .text = "The world is so harsh...\\n" },
            { .type = TRMSG_AFTER, .text = "What? You’ve got that many Gym\\nBadges? No wonder you’re so tough...\\n" },
        },
    },

    [1084] = { // swimmer_colton
        .name = "Colton",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_SWIMMER_M,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 70,
                .species = SPECIES_WINGULL,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 72,
                .species = SPECIES_OCTILLERY,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 72,
                .species = SPECIES_PELIPPER,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "To swim every sea there is...\\nThat’s my dream!\\r" },
            { .type = TRMSG_LOSE, .text = "Boo!\\nI’m not done with my dream!\\n" },
            { .type = TRMSG_AFTER, .text = "What is the sea like in places like the\\nKanto and Hoenn regions?\\n" },
        },
    },

    [1085] = { // swimmer_troy
        .name = "Troy",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_SWIMMER_M,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 73,
                .species = SPECIES_GYARADOS,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Yes, I know I can surf, but I’d\\nrather swim instead.\\rIt does seem weird, I agree.\\r" },
            { .type = TRMSG_LOSE, .text = "Kaploosh!\\n" },
            { .type = TRMSG_AFTER, .text = "If you don’t know how, I’m willing to\\nshow you how to swim.\\n" },
        },
    },

    [1086] = { // swimmer_oscar
        .name = "Oscar",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_SWIMMER_M,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 71,
                .species = SPECIES_MANTYKE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 71,
                .species = SPECIES_REMORAID,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 72,
                .species = SPECIES_MANTINE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I train at a Pokémon Gym, too.\\rDon’t think you’re going to win\\neasily!\\r" },
            { .type = TRMSG_LOSE, .text = "Master Wake...\\nI mean, Crasher Wake, sorry!\\n" },
            { .type = TRMSG_AFTER, .text = "What to do... Train at the Gym again,\\nor train by myself...\\n" },
        },
    },

    [1087] = { // swimmer_miranda
        .name = "Miranda",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_SWIMMER_F,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 73,
                .species = SPECIES_LUMINEON,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I’m determined to go to the Pokémon\\nLeague, no matter how hard it is.\\r" },
            { .type = TRMSG_LOSE, .text = "Th-this is so hard...\\n" },
            { .type = TRMSG_AFTER, .text = "Losing won’t make me quit.\\nI mean, this is my dream!\\rThe Pokémon League isn’t going\\nanywhere, either.\\n" },
        },
    },

    [1088] = { // swimmer_aubree
        .name = "Aubree",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_SWIMMER_F,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 72,
                .species = SPECIES_BIBAREL,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 72,
                .species = SPECIES_AZUMARILL,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Excuse me for wearing my bikini!\\r" },
            { .type = TRMSG_LOSE, .text = "Was I multitasking too much, battling\\nand swimming at the same time?\\n" },
            { .type = TRMSG_AFTER, .text = "When I’m in my bikini, I’m at a loss\\nabout where to carry my Poké Balls!\\n" },
        },
    },

    [1089] = { // swimmer_paige
        .name = "Paige",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_SWIMMER_F,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 71,
                .species = SPECIES_MARILL,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 71,
                .species = SPECIES_WINGULL,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 72,
                .species = SPECIES_GOLDUCK,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Deep breathing before battle!\\nBreathe in...and out!\\r" },
            { .type = TRMSG_LOSE, .text = "Breathe in...and out.\\nBreathe in...and out!\\n" },
            { .type = TRMSG_AFTER, .text = "Deep breathing after battle, too!\\nBreathe in...and out!\\n" },
        },
    },

    [1090] = { // swimmer_crystal
        .name = "Crystal",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_SWIMMER_F,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 71,
                .species = SPECIES_WINGULL,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 72,
                .species = SPECIES_SEAKING,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Your Pokémon doesn’t seem to be tiring\\nat all from carrying you on its back.\\rLet me see how strong it is!\\r" },
            { .type = TRMSG_LOSE, .text = "I can’t take any more...\\nI’m all tired out!\\n" },
            { .type = TRMSG_AFTER, .text = "While floating here, I think about\\neverything and nothing.\\rLike how I should battle next, and\\nwhat’s for dinner tomorrow, and...\\n" },
        },
    },

    [1091] = { // swimmer_cassandra
        .name = "Cassandra",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_SWIMMER_F,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 72,
                .species = SPECIES_LUMINEON,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 71,
                .species = SPECIES_PELIPPER,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Did you know, I was crowned the\\nchampion of a swimsuit contest!\\rSo now, I’m trying to win a title\\nat a Pokémon Contest!\\r" },
            { .type = TRMSG_LOSE, .text = "I’m speechless!\\nI never lose when I’m in my swimsuit!\\n" },
            { .type = TRMSG_AFTER, .text = "I shouldn’t be worried about what bikini\\nto wear.\\rThe first thing to do is consider what\\nPokémon I should be using!\\n" },
        },
    },

    [1092] = { // swimmer_gabrielle
        .name = "Gabrielle",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_SWIMMER_F,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 73,
                .species = SPECIES_GOLDUCK,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "My favorite kind of guy is someone\\nthat looks good out on the open sea!\\r" },
            { .type = TRMSG_LOSE, .text = "The tide is going out...\\n" },
            { .type = TRMSG_AFTER, .text = "Don’t get me wrong, it’s not as if I\\ndon’t like mountain men.\\rBut, you know, my most favorite kind of\\nguy looks great with Pokémon!\\n" },
        },
    },

    [1093] = { // sailor_zachariah
        .name = "Zachariah",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_SAILOR,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 70,
                .species = SPECIES_PELIPPER,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 71,
                .species = SPECIES_MACHOKE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 72,
                .species = SPECIES_GASTRODON,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I came out here because I wanted to\\nsee the Pokémon League for myself.\\r" },
            { .type = TRMSG_LOSE, .text = "I’m shocked...\\nNo, really, I am.\\n" },
            { .type = TRMSG_AFTER, .text = "The way I battle now, well, I can\\nonly look at the Pokémon League!\\rYou, go on! You go to the Pokémon\\nLeague for me, too!\\n" },
        },
    },

    [1094] = { // swimmer_lydia
        .name = "Lydia",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_SWIMMER_F,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 77,
                .species = SPECIES_MARILL,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 77,
                .species = SPECIES_SPHEAL,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 77,
                .species = SPECIES_WAILMER,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I want to be with my water Pokémon!\\nThat’s why I swim!\\r" },
            { .type = TRMSG_LOSE, .text = "Glub glub...\\nI’m sinking...\\n" },
            { .type = TRMSG_AFTER, .text = "I thought that everyone would be all\\ndedicated to training out here.\\rBut most people are really laid back.\\nIt’s not like what I imagined.\\rI guess being with Pokémon, people get\\nall mellowed out.\\n" },
        },
    },

    [1095] = { // ace_trainer_graham
        .name = "Graham",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_ACE_TRAINER_M,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 78,
                .species = SPECIES_TYROGUE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 80,
                .species = SPECIES_HITMONCHAN,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I took great pains raising my partners.\\nI’ll show you how strong I made them!\\r" },
            { .type = TRMSG_LOSE, .text = "It needs to be leveled more?!\\n" },
            { .type = TRMSG_AFTER, .text = "My Pokémon...\\rThey’re the first friends I ever\\ncaught. They mean everything to me!" },
        },
    },

    [1096] = { // bird_keeper_geneva
        .name = "Geneva",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_BIRD_KEEPER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 78,
                .species = SPECIES_FEAROW,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 79,
                .species = SPECIES_XATU,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "My Pokémon grew up in the arms of\\nMother Nature. They’re tough!\\r" },
            { .type = TRMSG_LOSE, .text = "How could you be tougher than\\nMother Nature?\\n" },
            { .type = TRMSG_AFTER, .text = "Most of the time, my Pokémon return\\nto their Poké Balls right away.\\rBut sometimes, they just fall asleep\\non top of my head. That gets messy." },
        },
    },

    [1097] = { // dragon_tamer_stanley
        .name = "Stanley",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_DRAGON_TAMER,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 78,
                .species = SPECIES_DRATINI,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 50,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 79,
                .species = SPECIES_ALTARIA,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "How do you do?\\nI’m Stanley, and I’m a Dragon Tamer.\\rWhat do you say we let our Pokémon\\nhave it out? Sound OK to you?\\r" },
            { .type = TRMSG_LOSE, .text = "Victory!\\nThat is, victory for you...\\n" },
            { .type = TRMSG_AFTER, .text = "It seems to me, there’s this certain\\nimage that goes with a Dragon Tamer.\\rBut me, I’d much sooner take it easy,\\ntake it slow, and take it my own way.\\rI figure there’s more than my style\\nthat I need to work on first.\\n" },
        },
    },

    [1098] = { // swimmer_wade
        .name = "Wade",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_SWIMMER_M,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 77,
                .species = SPECIES_CARVANHA,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 77,
                .species = SPECIES_CARVANHA,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 78,
                .species = SPECIES_SHARPEDO,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Me and my Pokémon are pumped up\\nand ready to go all out!\\r" },
            { .type = TRMSG_LOSE, .text = "Our muscles are deflating...\\n" },
            { .type = TRMSG_AFTER, .text = "Overwhelm with our dazzling physiques!\\nThat was our game plan...\\n" },
        },
    },

    [1099] = { // swimmer_glenn
        .name = "Glenn",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_SWIMMER_M,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 77,
                .species = SPECIES_OCTILLERY,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 77,
                .species = SPECIES_POLIWHIRL,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "A Trainer riding a Pokémon!\\nI like that! Let’s battle it out!\\r" },
            { .type = TRMSG_LOSE, .text = "Awesome!\\nYou’re a real wild child!\\n" },
            { .type = TRMSG_AFTER, .text = "You ride atop the waves while riding on\\na Pokémon!\\rAnd you rode right over me!\\n" },
        },
    },

    [1100] = { // swimmer_joanna
        .name = "Joanna",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_SWIMMER_F,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 76,
                .species = SPECIES_LUVDISC,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 77,
                .species = SPECIES_LAPRAS,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "People keep coming to us for battles.\\nI really don’t know why! Teehee!\\r" },
            { .type = TRMSG_LOSE, .text = "OK, we lost.\\n" },
            { .type = TRMSG_AFTER, .text = "I wanted to be alone, but swatting\\naway immature boys on the prowl...\\rWell, my Pokémon grew tough without\\nme really even trying.\\n" },
        },
    },

    [1101] = { // swimmer_kurt
        .name = "Kurt",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_SWIMMER_M,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 76,
                .species = SPECIES_KRABBY,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 76,
                .species = SPECIES_CORPHISH,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 77,
                .species = SPECIES_KINGLER,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Check out my physique! The rough\\nseas sculpted this awesome body!\\r" },
            { .type = TRMSG_LOSE, .text = "I’ve got a muscular physique, but\\nthere’s no strength behind it...\\n" },
            { .type = TRMSG_AFTER, .text = "Seeing a Pokémon use Surf to carry you\\nout on the sea...\\rIt strikes an emotional chord with me\\nsomewhere deep down.\\n" },
        },
    },

    [1102] = { // swimmer_sophia
        .name = "Sophia",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_SWIMMER_F,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 77,
                .species = SPECIES_DELIBIRD,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 77,
                .species = SPECIES_MANTINE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Are your Pokémon growing properly?\\r" },
            { .type = TRMSG_LOSE, .text = "Maybe too grown up!\\n" },
            { .type = TRMSG_AFTER, .text = "I’ve grown with my Pokémon, too.\\nMy swimsuit’s getting a little tight...\\n" },
        },
    },

    [1103] = { // swimmer_sam
        .name = "Sam",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_SWIMMER_M,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 77,
                .species = SPECIES_SEALEO,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 77,
                .species = SPECIES_GASTRODON,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Check out my dynamic form!\\nVictory is assured!\\r" },
            { .type = TRMSG_LOSE, .text = "Oh.\\nThat’s how it is.\\n" },
            { .type = TRMSG_AFTER, .text = "Being a good swimmer doesn’t make\\nme any better as a Trainer...\\n" },
        },
    },

    [1104] = { // swimmer_mallory
        .name = "Mallory",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_SWIMMER_F,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 76,
                .species = SPECIES_SURSKIT,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 77,
                .species = SPECIES_LOMBRE,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I’m a mermaid drifting among the\\nwaves...\\rAnd a high-spirited gal who battles with\\nPokémon!\\r" },
            { .type = TRMSG_LOSE, .text = "Losing...\\nMakes my tears well up.\\n" },
            { .type = TRMSG_AFTER, .text = "A mermaid’s tears are so salty...\\n" },
        },
    },

    [1105] = { // collector_fernando
        .name = "Fernando",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_COLLECTOR,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 63,
                .species = SPECIES_HERACROSS,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "We were having a heated discussion\\nover Pokémon the way Collectors do.\\r" },
            { .type = TRMSG_LOSE, .text = "Knowledge alone isn’t everything,\\nyou know...\\n" },
            { .type = TRMSG_AFTER, .text = "I’m more knowledgeable than anyone\\nelse!\\rI have a rare Pokémon!\\rBut, I’m weak at battling...\\nThat’s a Pokémon Collector for you..." },
        },
    },

    [1106] = { // collector_edwin
        .name = "Edwin",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_COLLECTOR,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 63,
                .species = SPECIES_MUNCHLAX,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "I’m a Collector, and I love Honey!\\r" },
            { .type = TRMSG_LOSE, .text = "What’ve you done to my Pokémon?!\\rIt took me forever to catch it using\\nHoney!\\n" },
            { .type = TRMSG_AFTER, .text = "I went through a lot of bother to catch\\nmy Pokémon.\\rBut since I’ve not raised it, it’s\\nas weak as when I caught it.\\n" },
        },
    },

    [1107] = { // waitress_kati
        .name = "Kati",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS,
            .trainerClass = TRAINERCLASS_WAITRESS,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 0,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 63,
                .species = SPECIES_CLEFAIRY,
                .item = ITEM_NONE,
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_INTRO, .text = "Welcome!\\nThis place is my pride and joy!\\r" },
            { .type = TRMSG_LOSE, .text = "I take losses with an unusually big\\nsmile! Do you find that odd at all?\\n" },
            { .type = TRMSG_AFTER, .text = "After a match, you should have some\\nMoomoo Milk to quench your thirst!\\rJust chug it right down! Glug glug!\\n" },
        },
    },

    [1108] = { // leader_roark_rematch
        .name = "Roark",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES,
            .trainerClass = TRAINERCLASS_LEADER_ROARK,
            .items = { ITEM_FULL_RESTORE, ITEM_FULL_RESTORE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 200,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 62,
                .species = SPECIES_AERODACTYL,
                .item = ITEM_NONE,
                .moves = { MOVE_STONE_EDGE, MOVE_AERIAL_ACE, MOVE_EARTHQUAKE, MOVE_DRAGON_CLAW },
                .ballSeal = 0,
            },
            {
                .ivs = 200,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 61,
                .species = SPECIES_PROBOPASS,
                .item = ITEM_NONE,
                .moves = { MOVE_EARTH_POWER, MOVE_STEALTH_ROCK, MOVE_DISCHARGE, MOVE_STONE_EDGE },
                .ballSeal = 0,
            },
            {
                .ivs = 200,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 61,
                .species = SPECIES_GOLEM,
                .item = ITEM_NONE,
                .moves = { MOVE_STONE_EDGE, MOVE_EARTHQUAKE, MOVE_BRICK_BREAK, MOVE_FLAMETHROWER },
                .ballSeal = 0,
            },
            {
                .ivs = 200,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 63,
                .species = SPECIES_RAMPARDOS,
                .item = ITEM_NONE,
                .moves = { MOVE_HEAD_SMASH, MOVE_ZEN_HEADBUTT, MOVE_AVALANCHE, MOVE_EARTHQUAKE },
                .ballSeal = 0,
            },
            {
                .ivs = 200,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 65,
                .species = SPECIES_TYRANITAR,
                .item = ITEM_SITRUS_BERRY,
                .moves = { MOVE_STONE_EDGE, MOVE_CRUNCH, MOVE_AERIAL_ACE, MOVE_FIRE_FANG },
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_LAST_POKE_HALF, .text = "No way! Not yet!\\nNot giving up!\\n" },
            { .type = TRMSG_LOSE, .text = "W-what? That can’t be!\\nMy buffed-up Pokémon!\\n" },
        },
    },

    [1109] = { // leader_gardenia_rematch
        .name = "Gardenia",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES,
            .trainerClass = TRAINERCLASS_LEADER_GARDENIA,
            .items = { ITEM_FULL_RESTORE, ITEM_FULL_RESTORE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 200,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 61,
                .species = SPECIES_JUMPLUFF,
                .item = ITEM_NONE,
                .moves = { MOVE_SILVER_WIND, MOVE_TOXIC, MOVE_SUNNY_DAY, MOVE_BOUNCE },
                .ballSeal = 0,
            },
            {
                .ivs = 200,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 62,
                .species = SPECIES_CHERRIM,
                .item = ITEM_NONE,
                .moves = { MOVE_SOLAR_BEAM, MOVE_TOXIC, MOVE_SUNNY_DAY, MOVE_LEECH_SEED },
                .ballSeal = 0,
            },
            {
                .ivs = 200,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 61,
                .species = SPECIES_BELLOSSOM,
                .item = ITEM_NONE,
                .moves = { MOVE_DRAIN_PUNCH, MOVE_GIGA_DRAIN, MOVE_INGRAIN, MOVE_SUNNY_DAY },
                .ballSeal = 0,
            },
            {
                .ivs = 200,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 63,
                .species = SPECIES_TORTERRA,
                .item = ITEM_NONE,
                .moves = { MOVE_WOOD_HAMMER, MOVE_CRUNCH, MOVE_EARTHQUAKE, MOVE_STONE_EDGE },
                .ballSeal = 0,
            },
            {
                .ivs = 200,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 65,
                .species = SPECIES_ROSERADE,
                .item = ITEM_SITRUS_BERRY,
                .moves = { MOVE_SHADOW_BALL, MOVE_LEAF_STORM, MOVE_SLUDGE_BOMB, MOVE_HYPER_BEAM },
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_LAST_POKE_HALF, .text = "Are you saying something?\\nYou think you have me cornered?\\n" },
            { .type = TRMSG_LOSE, .text = "Amazing!\\nYou’re very good, aren’t you?\\n" },
        },
    },

    [1110] = { // leader_fantina_rematch
        .name = "Fantina",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES,
            .trainerClass = TRAINERCLASS_LEADER_FANTINA,
            .items = { ITEM_FULL_RESTORE, ITEM_FULL_RESTORE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 200,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 61,
                .species = SPECIES_BANETTE,
                .item = ITEM_NONE,
                .moves = { MOVE_SHADOW_CLAW, MOVE_FEINT_ATTACK, MOVE_THUNDERBOLT, MOVE_WILL_O_WISP },
                .ballSeal = 0,
            },
            {
                .ivs = 200,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 61,
                .species = SPECIES_DRIFBLIM,
                .item = ITEM_NONE,
                .moves = { MOVE_OMINOUS_WIND, MOVE_PSYCHIC, MOVE_SILVER_WIND, MOVE_BATON_PASS },
                .ballSeal = 0,
            },
            {
                .ivs = 200,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 62,
                .species = SPECIES_DUSKNOIR,
                .item = ITEM_NONE,
                .moves = { MOVE_ROCK_SLIDE, MOVE_SHADOW_PUNCH, MOVE_DOUBLE_TEAM, MOVE_PROTECT },
                .ballSeal = 0,
            },
            {
                .ivs = 200,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 63,
                .species = SPECIES_MISMAGIUS,
                .item = ITEM_NONE,
                .moves = { MOVE_SHADOW_BALL, MOVE_PSYCHIC, MOVE_MAGICAL_LEAF, MOVE_THUNDERBOLT },
                .ballSeal = 0,
            },
            {
                .ivs = 200,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 65,
                .species = SPECIES_GENGAR,
                .item = ITEM_SITRUS_BERRY,
                .moves = { MOVE_SHADOW_BALL, MOVE_PSYCHIC, MOVE_FOCUS_BLAST, MOVE_THUNDER },
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_LAST_POKE_HALF, .text = "It is too difficult, but...\\nNever give up, never surrender!\\n" },
            { .type = TRMSG_LOSE, .text = "You are so fantastically strong.\\nI know why I have lost.\\n" },
        },
    },

    [1111] = { // leader_maylene_rematch
        .name = "Maylene",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES,
            .trainerClass = TRAINERCLASS_LEADER_MAYLENE,
            .items = { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 250,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 62,
                .species = SPECIES_HITMONTOP,
                .item = ITEM_NONE,
                .moves = { MOVE_TRIPLE_KICK, MOVE_AERIAL_ACE, MOVE_QUICK_ATTACK, MOVE_FAKE_OUT },
                .ballSeal = 0,
            },
            {
                .ivs = 250,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 63,
                .species = SPECIES_MEDICHAM,
                .item = ITEM_NONE,
                .moves = { MOVE_FIRE_PUNCH, MOVE_ICE_PUNCH, MOVE_THUNDER_PUNCH, MOVE_HIGH_JUMP_KICK },
                .ballSeal = 0,
            },
            {
                .ivs = 250,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 62,
                .species = SPECIES_BRELOOM,
                .item = ITEM_NONE,
                .moves = { MOVE_STONE_EDGE, MOVE_SPORE, MOVE_MACH_PUNCH, MOVE_SEED_BOMB },
                .ballSeal = 0,
            },
            {
                .ivs = 250,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 64,
                .species = SPECIES_MACHAMP,
                .item = ITEM_NONE,
                .moves = { MOVE_CROSS_CHOP, MOVE_ROCK_CLIMB, MOVE_EARTHQUAKE, MOVE_STONE_EDGE },
                .ballSeal = 0,
            },
            {
                .ivs = 250,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 66,
                .species = SPECIES_LUCARIO,
                .item = ITEM_NONE,
                .moves = { MOVE_DRAIN_PUNCH, MOVE_CLOSE_COMBAT, MOVE_EXTREME_SPEED, MOVE_BONE_RUSH },
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_LAST_POKE_HALF, .text = "This is like back at the Gym, isn’t it?\\nI’m in a bit of a bind, aren’t I?\\n" },
            { .type = TRMSG_LOSE, .text = "I’m forced to admit defeat again...\\nYou are much too strong.\\n" },
        },
    },

    [1112] = { // leader_wake_rematch
        .name = "Wake",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES,
            .trainerClass = TRAINERCLASS_LEADER_CRASHER_WAKE,
            .items = { ITEM_FULL_RESTORE, ITEM_FULL_RESTORE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 200,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 61,
                .species = SPECIES_SHARPEDO,
                .item = ITEM_NONE,
                .moves = { MOVE_AQUA_JET, MOVE_NIGHT_SLASH, MOVE_SLASH, MOVE_ENDURE },
                .ballSeal = 0,
            },
            {
                .ivs = 200,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 61,
                .species = SPECIES_QUAGSIRE,
                .item = ITEM_NONE,
                .moves = { MOVE_EARTHQUAKE, MOVE_STONE_EDGE, MOVE_YAWN, MOVE_SURF },
                .ballSeal = 0,
            },
            {
                .ivs = 200,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 62,
                .species = SPECIES_GYARADOS,
                .item = ITEM_NONE,
                .moves = { MOVE_AQUA_TAIL, MOVE_AVALANCHE, MOVE_BITE, MOVE_GIGA_IMPACT },
                .ballSeal = 0,
            },
            {
                .ivs = 200,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 63,
                .species = SPECIES_FLOATZEL,
                .item = ITEM_NONE,
                .moves = { MOVE_BRINE, MOVE_ICE_FANG, MOVE_CRUNCH, MOVE_AQUA_JET },
                .ballSeal = 0,
            },
            {
                .ivs = 200,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 65,
                .species = SPECIES_LUDICOLO,
                .item = ITEM_SITRUS_BERRY,
                .moves = { MOVE_SURF, MOVE_ICE_BEAM, MOVE_ENERGY_BALL, MOVE_FOCUS_BLAST },
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_LAST_POKE_HALF, .text = "If we turn it around here, the\\nspectators will be stoked!\\n" },
            { .type = TRMSG_LOSE, .text = "That puts a grin on my face!\\nGuhahaha! That was a blast!\\n" },
        },
    },

    [1113] = { // leader_byron_rematch
        .name = "Byron",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES,
            .trainerClass = TRAINERCLASS_LEADER_BYRON,
            .items = { ITEM_FULL_RESTORE, ITEM_FULL_RESTORE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 200,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 61,
                .species = SPECIES_SKARMORY,
                .item = ITEM_NONE,
                .moves = { MOVE_NIGHT_SLASH, MOVE_DRILL_PECK, MOVE_ROCK_TOMB, MOVE_STEALTH_ROCK },
                .ballSeal = 0,
            },
            {
                .ivs = 200,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 61,
                .species = SPECIES_STEELIX,
                .item = ITEM_NONE,
                .moves = { MOVE_GYRO_BALL, MOVE_ICE_FANG, MOVE_DRAGON_BREATH, MOVE_SANDSTORM },
                .ballSeal = 0,
            },
            {
                .ivs = 200,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 62,
                .species = SPECIES_MAGNEZONE,
                .item = ITEM_NONE,
                .moves = { MOVE_FLASH_CANNON, MOVE_THUNDERBOLT, MOVE_SUPERSONIC, MOVE_THUNDER_WAVE },
                .ballSeal = 0,
            },
            {
                .ivs = 200,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 63,
                .species = SPECIES_BASTIODON,
                .item = ITEM_NONE,
                .moves = { MOVE_METAL_BURST, MOVE_ANCIENT_POWER, MOVE_IRON_DEFENSE, MOVE_REST },
                .ballSeal = 0,
            },
            {
                .ivs = 200,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 65,
                .species = SPECIES_AGGRON,
                .item = ITEM_SITRUS_BERRY,
                .moves = { MOVE_METAL_BURST, MOVE_STONE_EDGE, MOVE_EARTHQUAKE, MOVE_AVALANCHE },
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_LAST_POKE_HALF, .text = "We’re not done yet!\\nThere’s no giving up!\\n" },
            { .type = TRMSG_LOSE, .text = "Hmm!\\nMy sturdy Pokémon--defeated!\\n" },
        },
    },

    [1114] = { // leader_candice_rematch
        .name = "Candice",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES,
            .trainerClass = TRAINERCLASS_LEADER_CANDICE,
            .items = { ITEM_FULL_RESTORE, ITEM_FULL_RESTORE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 200,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 62,
                .species = SPECIES_WEAVILE,
                .item = ITEM_NONE,
                .moves = { MOVE_AVALANCHE, MOVE_SLASH, MOVE_FEINT_ATTACK, MOVE_TAUNT },
                .ballSeal = 0,
            },
            {
                .ivs = 200,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 61,
                .species = SPECIES_MAMOSWINE,
                .item = ITEM_NONE,
                .moves = { MOVE_AVALANCHE, MOVE_ANCIENT_POWER, MOVE_EARTHQUAKE, MOVE_HAIL },
                .ballSeal = 0,
            },
            {
                .ivs = 200,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 61,
                .species = SPECIES_ABOMASNOW,
                .item = ITEM_NONE,
                .moves = { MOVE_AVALANCHE, MOVE_WOOD_HAMMER, MOVE_GRASS_WHISTLE, MOVE_INGRAIN },
                .ballSeal = 0,
            },
            {
                .ivs = 200,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 63,
                .species = SPECIES_FROSLASS,
                .item = ITEM_NONE,
                .moves = { MOVE_BLIZZARD, MOVE_CONFUSE_RAY, MOVE_OMINOUS_WIND, MOVE_HAIL },
                .ballSeal = 0,
            },
            {
                .ivs = 200,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 65,
                .species = SPECIES_GLACEON,
                .item = ITEM_SITRUS_BERRY,
                .moves = { MOVE_BLIZZARD, MOVE_MIRROR_COAT, MOVE_SHADOW_BALL, MOVE_WATER_PULSE },
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_LAST_POKE_HALF, .text = "Not yet!\\nYou can’t break our will!\\n" },
            { .type = TRMSG_LOSE, .text = "You’re mighty!\\nYou’re worthy of lots of respect.\\n" },
        },
    },

    [1115] = { // leader_volkner_rematch
        .name = "Volkner",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES,
            .trainerClass = TRAINERCLASS_LEADER_VOLKNER,
            .items = { ITEM_FULL_RESTORE, ITEM_FULL_RESTORE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 200,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 61,
                .species = SPECIES_JOLTEON,
                .item = ITEM_NONE,
                .moves = { MOVE_PIN_MISSILE, MOVE_CHARGE_BEAM, MOVE_DOUBLE_KICK, MOVE_QUICK_ATTACK },
                .ballSeal = 0,
            },
            {
                .ivs = 200,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 61,
                .species = SPECIES_RAICHU,
                .item = ITEM_NONE,
                .moves = { MOVE_CHARGE_BEAM, MOVE_BRICK_BREAK, MOVE_THUNDER_WAVE, MOVE_LIGHT_SCREEN },
                .ballSeal = 0,
            },
            {
                .ivs = 200,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 62,
                .species = SPECIES_LUXRAY,
                .item = ITEM_NONE,
                .moves = { MOVE_ICE_FANG, MOVE_THUNDER_FANG, MOVE_CRUNCH, MOVE_FIRE_FANG },
                .ballSeal = 0,
            },
            {
                .ivs = 200,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 63,
                .species = SPECIES_LANTURN,
                .item = ITEM_NONE,
                .moves = { MOVE_DISCHARGE, MOVE_SIGNAL_BEAM, MOVE_SURF, MOVE_ICE_BEAM },
                .ballSeal = 0,
            },
            {
                .ivs = 200,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 65,
                .species = SPECIES_ELECTIVIRE,
                .item = ITEM_SITRUS_BERRY,
                .moves = { MOVE_THUNDER_PUNCH, MOVE_FIRE_PUNCH, MOVE_BRICK_BREAK, MOVE_GIGA_IMPACT },
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_LAST_POKE_HALF, .text = "You methodically corner me!\\nJust like before!\\n" },
            { .type = TRMSG_LOSE, .text = "I even felt thrilled during our\\nmatch.\\rThat was a very good battle.\\n" },
        },
    },

    [1116] = { // elite_four_aaron_rematch
        .name = "Aaron",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES,
            .trainerClass = TRAINERCLASS_ELITE_FOUR_WILL,
            .items = { ITEM_FULL_RESTORE, ITEM_FULL_RESTORE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 250,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 65,
                .species = SPECIES_YANMEGA,
                .item = ITEM_NONE,
                .moves = { MOVE_AIR_SLASH, MOVE_BUG_BUZZ, MOVE_U_TURN, MOVE_DOUBLE_TEAM },
                .ballSeal = 0,
            },
            {
                .ivs = 250,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 65,
                .species = SPECIES_SCIZOR,
                .item = ITEM_NONE,
                .moves = { MOVE_IRON_HEAD, MOVE_X_SCISSOR, MOVE_NIGHT_SLASH, MOVE_QUICK_ATTACK },
                .ballSeal = 0,
            },
            {
                .ivs = 250,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 66,
                .species = SPECIES_VESPIQUEN,
                .item = ITEM_NONE,
                .moves = { MOVE_ATTACK_ORDER, MOVE_DEFEND_ORDER, MOVE_HEAL_ORDER, MOVE_POWER_GEM },
                .ballSeal = 0,
            },
            {
                .ivs = 250,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 67,
                .species = SPECIES_HERACROSS,
                .item = ITEM_NONE,
                .moves = { MOVE_MEGAHORN, MOVE_CLOSE_COMBAT, MOVE_NIGHT_SLASH, MOVE_STONE_EDGE },
                .ballSeal = 0,
            },
            {
                .ivs = 250,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 69,
                .species = SPECIES_DRAPION,
                .item = ITEM_SITRUS_BERRY,
                .moves = { MOVE_X_SCISSOR, MOVE_CROSS_POISON, MOVE_ICE_FANG, MOVE_AERIAL_ACE },
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_LAST_POKE_HALF, .text = "It’s not over yet!\\nA League Elite Four can’t give up!\\n" },
            { .type = TRMSG_LOSE, .text = "I will now concede defeat.\\rBut I think you came to see how\\ngreat Bug-type Pokémon can be.\\rI hope you also realized what you’re\\nup against in the Pokémon League.\\rBattling is a deep and complex\\naffair...\\n" },
        },
    },

    [1117] = { // elite_four_bertha_rematch
        .name = "Bertha",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES,
            .trainerClass = TRAINERCLASS_ELITE_FOUR_KAREN,
            .items = { ITEM_FULL_RESTORE, ITEM_FULL_RESTORE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 250,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 66,
                .species = SPECIES_WHISCASH,
                .item = ITEM_NONE,
                .moves = { MOVE_EARTH_POWER, MOVE_AQUA_TAIL, MOVE_ZEN_HEADBUTT, MOVE_SANDSTORM },
                .ballSeal = 0,
            },
            {
                .ivs = 250,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 69,
                .species = SPECIES_GLISCOR,
                .item = ITEM_NONE,
                .moves = { MOVE_EARTHQUAKE, MOVE_ICE_FANG, MOVE_FIRE_FANG, MOVE_THUNDER_FANG },
                .ballSeal = 0,
            },
            {
                .ivs = 250,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 68,
                .species = SPECIES_HIPPOWDON,
                .item = ITEM_NONE,
                .moves = { MOVE_EARTHQUAKE, MOVE_STONE_EDGE, MOVE_CRUNCH, MOVE_YAWN },
                .ballSeal = 0,
            },
            {
                .ivs = 250,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 68,
                .species = SPECIES_GOLEM,
                .item = ITEM_NONE,
                .moves = { MOVE_EARTHQUAKE, MOVE_FIRE_PUNCH, MOVE_THUNDER_PUNCH, MOVE_SANDSTORM },
                .ballSeal = 0,
            },
            {
                .ivs = 250,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 71,
                .species = SPECIES_RHYPERIOR,
                .item = ITEM_SITRUS_BERRY,
                .moves = { MOVE_EARTHQUAKE, MOVE_ROCK_WRECKER, MOVE_MEGAHORN, MOVE_AVALANCHE },
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_LAST_POKE_HALF, .text = "Dear child, don’t assume for an\\ninstant that you’ve won.\\n" },
            { .type = TRMSG_LOSE, .text = "Well! Dear child, I must say, that\\nwas most impressive.\\rYour Pokémon believed in you and did\\ntheir best to earn you the win.\\rEven though I’ve lost, I find myself\\nwith this silly grin!\\n" },
        },
    },

    [1118] = { // elite_four_flint_rematch
        .name = "Flint",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES,
            .trainerClass = TRAINERCLASS_ELITE_FOUR_BRUNO,
            .items = { ITEM_FULL_RESTORE, ITEM_FULL_RESTORE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 250,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 68,
                .species = SPECIES_HOUNDOOM,
                .item = ITEM_NONE,
                .moves = { MOVE_FLAMETHROWER, MOVE_SLUDGE_BOMB, MOVE_DARK_PULSE, MOVE_SUNNY_DAY },
                .ballSeal = 0,
            },
            {
                .ivs = 250,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 71,
                .species = SPECIES_FLAREON,
                .item = ITEM_NONE,
                .moves = { MOVE_OVERHEAT, MOVE_GIGA_IMPACT, MOVE_QUICK_ATTACK, MOVE_WILL_O_WISP },
                .ballSeal = 0,
            },
            {
                .ivs = 250,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 69,
                .species = SPECIES_RAPIDASH,
                .item = ITEM_NONE,
                .moves = { MOVE_FLARE_BLITZ, MOVE_SOLAR_BEAM, MOVE_BOUNCE, MOVE_SUNNY_DAY },
                .ballSeal = 0,
            },
            {
                .ivs = 250,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 71,
                .species = SPECIES_INFERNAPE,
                .item = ITEM_NONE,
                .moves = { MOVE_FLARE_BLITZ, MOVE_THUNDER_PUNCH, MOVE_MACH_PUNCH, MOVE_EARTHQUAKE },
                .ballSeal = 0,
            },
            {
                .ivs = 250,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 73,
                .species = SPECIES_MAGMORTAR,
                .item = ITEM_SITRUS_BERRY,
                .moves = { MOVE_FLAMETHROWER, MOVE_THUNDERBOLT, MOVE_SOLAR_BEAM, MOVE_HYPER_BEAM },
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_LAST_POKE, .text = "I can feel your determination.\\nYour will is overpowering me!\\n" },
            { .type = TRMSG_LAST_POKE_HALF, .text = "This situation...\\nThis is heating up! I’m blazing now!\\n" },
            { .type = TRMSG_LOSE, .text = "...!\\rI don’t believe it! I lost!\\nI didn’t take you for granted...\\rBut I never expected you to win!\\nI’d never even considered it!\\rI’m blown away by this!\\nYou and your Pokémon are hot stuff!\\n" },
        },
    },

    [1119] = { // elite_four_lucian_rematch
        .name = "Lucian",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES,
            .trainerClass = TRAINERCLASS_ELITE_FOUR_KOGA,
            .items = { ITEM_FULL_RESTORE, ITEM_FULL_RESTORE, ITEM_NONE, ITEM_NONE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | F_PRIORITIZE_STATUS_MOVES,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 250,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 69,
                .species = SPECIES_MR_MIME,
                .item = ITEM_NONE,
                .moves = { MOVE_PSYCHIC, MOVE_THUNDERBOLT, MOVE_REFLECT, MOVE_LIGHT_SCREEN },
                .ballSeal = 0,
            },
            {
                .ivs = 250,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 71,
                .species = SPECIES_ESPEON,
                .item = ITEM_NONE,
                .moves = { MOVE_PSYCHIC, MOVE_SHADOW_BALL, MOVE_QUICK_ATTACK, MOVE_SIGNAL_BEAM },
                .ballSeal = 0,
            },
            {
                .ivs = 250,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 70,
                .species = SPECIES_BRONZONG,
                .item = ITEM_NONE,
                .moves = { MOVE_PSYCHIC, MOVE_GYRO_BALL, MOVE_EARTHQUAKE, MOVE_CALM_MIND },
                .ballSeal = 0,
            },
            {
                .ivs = 250,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 72,
                .species = SPECIES_ALAKAZAM,
                .item = ITEM_NONE,
                .moves = { MOVE_PSYCHIC, MOVE_ENERGY_BALL, MOVE_FOCUS_BLAST, MOVE_RECOVER },
                .ballSeal = 0,
            },
            {
                .ivs = 250,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 75,
                .species = SPECIES_GALLADE,
                .item = ITEM_SITRUS_BERRY,
                .moves = { MOVE_DRAIN_PUNCH, MOVE_PSYCHO_CUT, MOVE_LEAF_BLADE, MOVE_STONE_EDGE },
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_LAST_POKE, .text = "Hmm...\\nNow what should I do...\\n" },
            { .type = TRMSG_LOSE, .text = "I see...\\rYour getting past the three before\\nme was no fluke. Your power is real.\\n" },
        },
    },

    [1120] = { // champion_cynthia_rematch
        .name = "Cynthia",
        .data = {
            .trainerType = TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES,
            .trainerClass = TRAINERCLASS_CHAMPION_CYNTHIA,
            .items = { ITEM_FULL_RESTORE, ITEM_FULL_RESTORE, ITEM_FULL_RESTORE, ITEM_FULL_RESTORE },
            .aiFlags = F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS,
            .battleType = SINGLE_BATTLE,
        },
        .party = {
            {
                .ivs = 250,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 74,
                .species = SPECIES_SPIRITOMB,
                .item = ITEM_NONE,
                .moves = { MOVE_DARK_PULSE, MOVE_PSYCHIC, MOVE_SILVER_WIND, MOVE_OMINOUS_WIND },
                .ballSeal = 0,
            },
            {
                .ivs = 250,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 74,
                .species = SPECIES_ROSERADE,
                .item = ITEM_NONE,
                .moves = { MOVE_ENERGY_BALL, MOVE_SLUDGE_BOMB, MOVE_SHADOW_BALL, MOVE_EXTRASENSORY },
                .ballSeal = 0,
            },
            {
                .ivs = 250,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 76,
                .species = SPECIES_TOGEKISS,
                .item = ITEM_NONE,
                .moves = { MOVE_AIR_SLASH, MOVE_AURA_SPHERE, MOVE_WATER_PULSE, MOVE_PSYCHIC },
                .ballSeal = 0,
            },
            {
                .ivs = 250,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 76,
                .species = SPECIES_LUCARIO,
                .item = ITEM_NONE,
                .moves = { MOVE_AURA_SPHERE, MOVE_DRAGON_PULSE, MOVE_PSYCHIC, MOVE_EARTHQUAKE },
                .ballSeal = 0,
            },
            {
                .ivs = 250,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 74,
                .species = SPECIES_MILOTIC,
                .item = ITEM_NONE,
                .moves = { MOVE_SURF, MOVE_ICE_BEAM, MOVE_MIRROR_COAT, MOVE_AQUA_RING },
                .ballSeal = 0,
            },
            {
                .ivs = 250,
                .abilitySlot = TRAINER_POKEMON_ABILITY_1,
                .level = 78,
                .species = SPECIES_GARCHOMP,
                .item = ITEM_SITRUS_BERRY,
                .moves = { MOVE_DRAGON_RUSH, MOVE_EARTHQUAKE, MOVE_BRICK_BREAK, MOVE_GIGA_IMPACT },
                .ballSeal = 0,
            },
        },
        .text = {
            { .type = TRMSG_LAST_POKE, .text = "I can’t remember the last time I\\nwas put in a corner like this!\\n" },
            { .type = TRMSG_LAST_POKE_HALF, .text = "I won’t let this end yet! This match\\nis too fun to let it end this easily!\\n" },
            { .type = TRMSG_LOSE, .text = "...Just a few minutes ago, you were\\nthe most powerful challenger.\\rAnd just now, you became the most\\npowerful of all the Trainers.\\rYou are now our newest Champion!\\n" },
        },
    },
