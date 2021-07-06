import 'models/question.dart';

const DUMMY_QUESTIONS = [
  Question(
    id: 1,
    text:
        'a covering for all or part of the face that protects, hides, or decorates the person wearing it:',
    answer: 'mask',
    difficulty: Dificulty.EASY,
  ),
  Question(
    id: 2,
    text: 'a game or competition in which you answer questions',
    answer: 'quiz',
    difficulty: Dificulty.EASY,
  ),
  Question(
    id: 3,
    text: ' Possible to see; perceptible to the eye',
    answer: 'visible',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 4,
    text: 'cease to support or look after someone',
    answer: 'abandon',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 5,
    text: 'possession of the means or skill to do something',
    answer: 'ability',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 6,
    text: 'completely',
    answer: 'absolutely',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 7,
    text: ' to take something in, especially gradually',
    answer: 'absorb',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 8,
    text: ' relating to education and scholarship',
    answer: 'academic',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
      id: 9,
      text: ' to agree to take something',
      answer: 'accept',
      difficulty: Dificulty.EASY),
  Question(
    id: 10,
    text: ' the method or possibility of getting near to a place or person',
    answer: 'access',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 11,
    text:
        ' an unfortunate incident that happens unexpectedly and unintentionally, typically resulting in damage or injury',
    answer: 'accident',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 12,
    text: ' go somewhere with someone as a companion or escort',
    answer: 'accompany',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 13,
    text: ' achieve or complete successfully',
    answer: 'accomplish',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 14,
    text: ' entire,whole',
    answer: 'all',
    difficulty: Dificulty.EASY,
  ),
  Question(
    id: 15,
    text: ' to pronounce words or sounds, to express a thought',
    answer: 'say',
    difficulty: Dificulty.EASY,
  ),
  Question(
    id: 16,
    text: ' an adult male person',
    answer: 'man',
    difficulty: Dificulty.EASY,
  ),
  Question(
    id: 17,
    text: ' A numerical indication of a particular moment',
    answer: 'time',
    difficulty: Dificulty.EASY,
  ),
  Question(
    id: 18,
    text: ' to move to another place',
    answer: 'go',
    difficulty: Dificulty.EASY,
  ),
  Question(
    id: 19,
    text: ' just',
    answer: 'only',
    difficulty: Dificulty.EASY,
  ),
  Question(
    id: 20,
    text: ' to have information in your mind',
    answer: 'know',
    difficulty: Dificulty.EASY,
  ),
  Question(
    id: 21,
    text: ' perceive with the eyes; discern visually',
    answer: 'see',
    difficulty: Dificulty.EASY,
  ),
  Question(
    id: 22,
    text: ' discover or perceive by chance or unexpectedly',
    answer: 'find',
    difficulty: Dificulty.EASY,
  ),
  Question(
    id: 23,
    text: ' twenty-four hours',
    answer: 'day',
    difficulty: Dificulty.EASY,
  ),
  Question(
    id: 24,
    text: 'very good or pleasant',
    answer: 'great',
    difficulty: Dificulty.EASY,
  ),
  Question(
    id: 25,
    text:
        '  the part of the human body that is on the opposite side to the chest, between the neck and the tops of the legs',
    answer: 'back',
    difficulty: Dificulty.EASY,
  ),
  Question(
    id: 26,
    text: 'human beings',
    answer: 'people',
    difficulty: Dificulty.EASY,
  ),
  Question(
    id: 27,
    text: 'earlier or sooner than',
    answer: 'before',
    difficulty: Dificulty.EASY,
  ),
  Question(
    id: 28,
    text: 'healthy or well',
    answer: 'good',
    difficulty: Dificulty.EASY,
  ),
  Question(
    id: 29,
    text:
        ' give the impression of being something or having a particular quality',
    answer: 'seem',
    difficulty: Dificulty.EASY,
  ),
  Question(
    id: 30,
    text: ' measuring a long distance from the bottom to the top',
    answer: 'high',
    difficulty: Dificulty.EASY,
  ),
  Question(
    id: 31,
    text: 'the earth, together with all of its countries and peoples',
    answer: 'world',
    difficulty: Dificulty.EASY,
  ),
  Question(
    id: 32,
    text:
        ' a country considered as a group of people with the same language, culture and history, who live in a particular area under one government',
    answer: 'nation',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 33,
    text: ' The end part of a person\'s arm',
    answer: 'hand',
    difficulty: Dificulty.EASY,
  ),
  Question(
    id: 34,
    text:
        'to make letters or numbers on a surface, especially using a pen or a pencil',
    answer: 'write',
    difficulty: Dificulty.EASY,
  ),
  Question(
    id: 35,
    text: 'A building for human habitation',
    answer: 'house',
    difficulty: Dificulty.EASY,
  ),
  Question(
    id: 36,
    text: 'across the space separating two objects',
    answer: 'between',
    difficulty: Dificulty.EASY,
  ),
  Question(
    id: 37,
    text: 'to express or represent something such as an idea',
    answer: 'mean',
    difficulty: Dificulty.EASY,
  ),
  Question(
    id: 38,
    text: 'Give (an infant or animal) a specified name',
    answer: 'call',
    difficulty: Dificulty.EASY,
  ),
  Question(
    id: 39,
    text: ' A numerical indication of a particular moment',
    answer: 'time',
    difficulty: Dificulty.EASY,
  ),
  Question(
    id: 40,
    text: 'what you earn by working or selling things, and use to buy things',
    answer: 'money',
    difficulty: Dificulty.EASY,
  ),
  Question(
    id: 41,
    text: 'having a great effect on people or things; of great value',
    answer: 'important',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 42,
    text: ' to agree to a request, proposal, etc.',
    answer: 'accede',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 43,
    text: 'the condition of a person’s body or mind',
    answer: 'health',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 44,
    text:
        'to go up to somebody and speak to them, especially in a way that is rude or frightening',
    answer: 'accost',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 45,
    text: 'an increase by natural growth or addition',
    answer: 'accretion',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 46,
    text: 'a person who pleads for a person, cause, or idea',
    answer: 'advocate',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 47,
    text: 'having a lot of money and a good standard of living',
    answer: 'affluent',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 48,
    text: 'a name that has been assumed temporarily',
    answer: 'alias',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 49,
    text: 'something that causes trouble and makes people unhappy',
    answer: 'bane',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 50,
    text: 'self-consciously timid',
    answer: 'bashful',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 51,
    text: 'to cheat somebody, especially by taking money from them',
    answer: 'bilk',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 52,
    text: ' a cruel and oppressive dictator',
    answer: 'despot',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 53,
    text:
        'to take somebody else’s child into your family and become its legal parent(s)',
    answer: 'adopt',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 54,
    text: 'happening or done once every year',
    answer: 'annual',
    difficulty: Dificulty.EASY,
  ),
  Question(
    id: 55,
    text:
        'the expression or application of human creative skill and imagination',
    answer: 'art',
    difficulty: Dificulty.EASY,
  ),
  Question(
    id: 56,
    text:
        ' a particular part or feature of a situation, an idea, a problem, etc.',
    answer: 'aspect',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 57,
    text:
        'take and use (something belonging to someone else) with the intention of returning it',
    answer: 'borrow',
    difficulty: Dificulty.EASY,
  ),
  Question(
    id: 58,
    text: 'a structure that is built over a road, railway, river, etc.',
    answer: 'bridge',
    difficulty: Dificulty.EASY,
  ),
  Question(
    id: 59,
    text: 'lacking sense or meaning; silly',
    answer: 'inane',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 60,
    text: 'an authoritative warning or order',
    answer: 'injunction',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 61,
    text: 'cause to accept or become hardened to',
    answer: 'inure',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 62,
    text:
        'the sound of a bell, especially when rung solemnly for a death or funeral',
    answer: 'knell',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 63,
    text: 'a person involved in a lawsuit',
    answer: 'litigant',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 64,
    text: 'a powerful circular current of water',
    answer: 'time',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 65,
    text: 'effusively or insincerely emotional',
    answer: 'maudlin',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 66,
    text:
        'a short, pithy statement expressing a general truth or rule of conduct',
    answer: 'maxim',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 67,
    text: 'an area of muddy or boggy ground',
    answer: 'morass',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 68,
    text:
        'the essential or characteristic customs and conventions of a society or community',
    answer: 'mores',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 69,
    text: 'the lowest point of anything',
    answer: 'nadir',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 70,
    text: 'a person who is rejected from society or home',
    answer: 'pariah',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 71,
    text: 'Talk rapidly in a foolish or confused way',
    answer: 'babble',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 72,
    text: 'master, lord',
    answer: 'baas',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 73,
    text: 'a confused noise made by a number of voices',
    answer: 'babel',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 74,
    text: 'a very young child',
    answer: 'baby',
    difficulty: Dificulty.EASY,
  ),
  Question(
    id: 75,
    text: 'a support for a person\'s back when they are seated',
    answer: 'backrest',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 76,
    text: 'having little or no hair on the head',
    answer: 'bald',
    difficulty: Dificulty.EASY,
  ),
  Question(
    id: 77,
    text: 'a catapult used in ancient warfare',
    answer: 'ballista',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 78,
    text:
        'a short decorative pillar forming part of a series supporting a rail or coping',
    answer: 'baluster',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 79,
    text: 'mark (something) with a stripe or stripes of a different colour',
    answer: 'band',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 80,
    text: 'joker',
    answer: 'banterer',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 81,
    text: 'merely, hardly',
    answer: 'barely',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 82,
    text: 'the state of being unclothed',
    answer: 'bareness',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 83,
    text: 'an agreement between two or more people',
    answer: 'bargain',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 84,
    text:
        'an aromatic plant of the mint family,especially in Mediterranean dishes',
    answer: 'basil',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 85,
    text: 'confined to bed, as by illness or age',
    answer: 'bedfast',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 86,
    text: 'muscular or robust',
    answer: 'beefy',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 87,
    text: 'a plant used for processing into sugar',
    answer: 'beet',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 88,
    text: 'feel or declare that someone is responsible for a fault or wrong',
    answer: 'blame',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 89,
    text:
        'a printed or written statement of the money owed for goods or services',
    answer: 'bill',
    difficulty: Dificulty.EASY,
  ),
  Question(
    id: 90,
    text: 'the study of living organisms',
    answer: 'biology',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 91,
    text: 'a large wild animal of the cow family that is covered with hair',
    answer: 'bison',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 92,
    text:
        'a black viscous mixture of hydrocarbons obtained naturally or as a residue from petroleum distillation',
    answer: 'bitumen',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 93,
    text: 'a line separating two countries',
    answer: 'border',
    difficulty: Dificulty.EASY,
  ),
  Question(
    id: 94,
    text: 'a main branch of a tree',
    answer: 'bough',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 95,
    text: 'the extreme edge of land before a steep slope or a body or water',
    answer: 'brink',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 96,
    text: 'a dead human body',
    answer: 'cadaver',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 97,
    text: 'inexperienced and immature',
    answer: 'callow',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 98,
    text: 'not showing or feeling nervousness, anger, or other strong emotions',
    answer: 'calm',
    difficulty: Dificulty.EASY,
  ),
  Question(
    id: 99,
    text: 'one of the sections into which certain long poems are divided',
    answer: 'canto',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 100,
    text: 'a tapering orange-coloured root eaten as a vegetable',
    answer: 'carrot',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 101,
    text:
        'the negatively charged electrode by which electrons enter an electrical device',
    answer: 'cathode',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 102,
    text: 'burn the skin or flesh of (a wound) with a heated instrument',
    answer: 'cauterize',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 103,
    text: 'care taken to avoid danger or mistakes',
    answer: 'caution',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 104,
    text: 'soldiers who fought on horseback',
    answer: 'cavalry',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 105,
    text: 'to bite or eat something noisily',
    answer: 'champ',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 106,
    text: 'involving risks and uncertainty',
    answer: 'chancy',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 107,
    text: 'a sheet of information in the form of a table, graph, or diagram',
    answer: 'chart',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 108,
    text: 'a speech of violent denunciation',
    answer: 'tirade',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 109,
    text: 'marked by skill in deception',
    answer: 'wily',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 110,
    text: 'a lewd or immoral person',
    answer: 'wanton',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 111,
    text: 'speak or write about in an abusively disparaging manner',
    answer: 'vilify',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 112,
    text:
        'a trace or remnant of something that is disappearing or no longer exists',
    answer: 'vestige',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 113,
    text: 'lacking originality or freshness',
    answer: 'trite',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 114,
    text: 'a book, especially a large, heavy, scholarly one',
    answer: 'tome',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 115,
    text: 'dark-complexioned',
    answer: 'swarthy',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 116,
    text: 'sedate, respectable, and unadventurous',
    answer: 'staid',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 117,
    text: 'pursuit',
    answer: 'chase',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 118,
    text: 'talking a lot in a friendly way',
    answer: 'chatty',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 119,
    text: 'act dishonestly or unfairly in order to gain an advantage',
    answer: 'cheat',
    difficulty: Dificulty.EASY,
  ),
  Question(
    id: 121,
    text: 'a melodious ringing sound, as produced by striking a bell',
    answer: 'chime',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 121,
    text:
        'a small, soft round stone fruit that is typically bright or dark red',
    answer: 'cherry',
    difficulty: Dificulty.EASY,
  ),
  Question(
    id: 123,
    text:
        'an unpleasant feeling of coldness in the atmosphere, one\'s surroundings, or the body',
    answer: 'chill',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 124,
    text: 'a confused noise made by a number of voices',
    answer: 'babel',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 125,
    text:
        'a group of (typically three or more) notes sounded together, as a basis of harmony',
    answer: 'chord',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 126,
    text: 'having been selected as the best or most appropriate',
    answer: 'chosen',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 127,
    text: 'the title, also treated as a name, given to Jesus',
    answer: 'Christ',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 128,
    text: 'plump and rounded',
    answer: 'chubby',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 129,
    text: 'a foolish or easily deceived person',
    answer: 'chump',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 130,
    text:
        'a quotation from or reference to a book, paper, or author, especially in a scholarly work',
    answer: 'citation',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 131,
    text: 'an inhabitant of a particular town or city.',
    answer: 'citizen',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 132,
    text: 'a large town',
    answer: 'city',
    difficulty: Dificulty.EASY,
  ),
  Question(
    id: 133,
    text: 'relating to a city or town',
    answer: 'civic',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 134,
    text: 'a person not in the armed services or the police force',
    answer: 'civilian',
    difficulty: Dificulty.EASY,
  ),
  Question(
    id: 135,
    text: 'an assertion that something is true',
    answer: 'claim',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 136,
    text: 'a loud and confused noise, especially that of people shouting',
    answer: 'clamour',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 137,
    text:
        'an aromatic herbaceous plant of the mint family, some kinds of which are used as culinary and medicinal herbs',
    answer: 'clary',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 138,
    text: 'a group of students who are taught together',
    answer: 'class',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 139,
    text: 'stylish and sophisticated',
    answer: 'classy',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 140,
    text:
        'a particular and separate article, stipulation, or proviso in a treaty, bill, or contract',
    answer: 'clause',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 141,
    text: 'free from dirt',
    answer: 'clean',
    difficulty: Dificulty.EASY,
  ),
  Question(
    id: 142,
    text: 'transparent; uncloudeds',
    answer: 'clear',
    difficulty: Dificulty.EASY,
  ),
  Question(
    id: 143,
    text:
        'a T-shaped piece of metal or wood on a boat or ship, to which ropes are attached',
    answer: 'cleat',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 144,
    text: 'a piece of evidence or information used in the detection of a crime',
    answer: 'clue',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 145,
    text: 'jointly; mutually',
    answer: 'co',
    difficulty: Dificulty.EASY,
  ),
  Question(
    id: 146,
    text: 'a verbal or written remark expressing an opinion or reaction',
    answer: 'comment',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 147,
    text: 'force or oblige (someone) to do something',
    answer: 'compel',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 148,
    text: ' a colleague or a fellow member of an organization',
    answer: 'comrade',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 149,
    text: 'be of the same opinion; agree',
    answer: 'concur',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 150,
    text:
        ' to state or show that something is definitely true or correct, especially by providing evidence',
    answer: 'confirm',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 151,
    text: 'to take control of a country or city and its people by force',
    answer: 'conquer',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 152,
    text: 'secretly allow something immoral, illegal, or harmful to occur',
    answer: 'connive',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 153,
    text: 'to deal successfully with something difficult',
    answer: 'cope',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 154,
    text: 'happening, done or produced every day',
    answer: 'daily',
    difficulty: Dificulty.EASY,
  ),
  Question(
    id: 155,
    text: 'expressing anger or frustration',
    answer: 'damn',
    difficulty: Dificulty.EASY,
  ),
  Question(
    id: 156,
    text: 'to make something slightly wet',
    answer: 'dampen',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 157,
    text: 'regarded with deep affection',
    answer: 'dear',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 158,
    text: ' to win against somebody in a war, competition, sports game, etc',
    answer: 'defeat',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 159,
    text:
        'the amount by which money spent or owed is greater than money earned in a particular period of time',
    answer: 'deficit',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 160,
    text: 'make (a situation) less tense or dangerous',
    answer: 'defuse',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 161,
    text: 'do something that one considers to be beneath one\'s dignity',
    answer: 'deign',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 162,
    text: 'to move somebody to a lower position or rank',
    answer: 'demote',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 163,
    text: 'a large area of land that is covered by sand',
    answer: 'desert',
    difficulty: Dificulty.EASY,
  ),
  Question(
    id: 164,
    text: 'the sweet course eaten at the end of a meal.',
    answer: 'dessert',
    difficulty: Dificulty.EASY,
  ),
  Question(
    id: 165,
    text:
        'the score of 40 all in a game, at which each player needs two consecutive points to win the game',
    answer: 'deuce',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 166,
    text: 'the most powerful evil being',
    answer: 'devil',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 167,
    text: 'tiny drops of water that form on cool surfaces at night',
    answer: 'dew',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 168,
    text: 'a flat shallow container for cooking food in or serving it from',
    answer: 'dish',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 169,
    text: 'to give somebody information that is supposed to be secret',
    answer: 'divulge',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 170,
    text: 'a person whose job is moving goods on and off ships',
    answer: 'docker',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 171,
    text: 'that makes you feel sad; not bright or interesting',
    answer: 'dreary',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 172,
    text: 'an illegal substance that some people smoke, inject, etc',
    answer: 'drug',
    difficulty: Dificulty.EASY,
  ),
  Question(
    id: 173,
    text: 'add a colour to or change the colour of (something)',
    answer: 'dye',
    difficulty: Dificulty.EASY,
  ),
  Question(
    id: 174,
    text:
        'a large bird of prey with a massive hooked bill and long broad wings',
    answer: 'eagle',
    difficulty: Dificulty.EASY,
  ),
  Question(
    id: 175,
    text: 'a large impressive building',
    answer: 'edifice',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 176,
    text: 'a poem of serious reflection, typically a lament for the dead',
    answer: 'elegy',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 177,
    text: 'a supernatural creature of folk tales',
    answer: 'elf',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 178,
    text: 'to run away with somebody in order to marry them secretly',
    answer: 'elope',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 179,
    text: 'a small piece of burning or glowing coal or wood in a dying fire',
    answer: 'ember',
    difficulty: Dificulty.EASY,
  ),
  Question(
    id: 180,
    text:
        'to decorate something with a design, a symbol or words so that people will notice it easily',
    answer: 'emblazon',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 181,
    text: 'a design or picture that represents a country or an organization',
    answer: 'emblem',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 182,
    text: 'a thing with distinct and independent existence',
    answer: 'entity',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 183,
    text: 'deny (someone) access to a place, group, or privilege',
    answer: 'exclude',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 184,
    text: 'praise enthusiastically',
    answer: 'extol',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 185,
    text: 'having or showing the symptoms of a fever',
    answer: 'febrile',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 186,
    text: 'to steal something, especially something small or not very valuable',
    answer: 'filch',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 187,
    text: 'to not remember to do something that you ought to do',
    answer: 'forget',
    difficulty: Dificulty.EASY,
  ),
  Question(
    id: 188,
    text: 'a cunning or sly person',
    answer: 'fox',
    difficulty: Dificulty.EASY,
  ),
  Question(
    id: 189,
    text: 'a noisy disturbance or quarrel',
    answer: 'fracas',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 190,
    text: 'a foreboding about what is about to happen',
    answer: 'presage',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 191,
    text: 'prevent from happening; make impossible',
    answer: 'preclude',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 192,
    text: 'a sign of something about to happen',
    answer: 'portent',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 193,
    text: 'a large amount of something',
    answer: 'plenitude',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 194,
    text: 'an expression of praise or approval',
    answer: 'plaudit',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 195,
    text: 'concise and full of meaning',
    answer: 'pithy',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 196,
    text: 'attractively lively or cheeky',
    answer: 'pert',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 197,
    text: 'translucently clear',
    answer: 'pellucid',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 198,
    text: 'an outcast',
    answer: 'pariah',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 199,
    text: 'lessen or to try to lessen the seriousness or extent of',
    answer: 'palliate',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 200,
    text: 'harmful, poisonous, or very unpleasant',
    answer: 'noxious',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 201,
    text: 'insulting, abusive, or highly critical language',
    answer: 'invective',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 202,
    text: 'the action of making something known, especially in an indirect way',
    answer: 'intimation',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 203,
    text: ' harmful to something; not helping something',
    answer: 'inimical',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 204,
    text: 'Give (an infant or animal) a specified name',
    answer: 'call',
    difficulty: Dificulty.EASY,
  ),
  Question(
    id: 205,
    text:
        'a piece of electrical equipment in which food is kept cold so that it stays fresh',
    answer: 'fridge',
    difficulty: Dificulty.EASY,
  ),
  Question(
    id: 206,
    text:
        'to talk quickly so that people cannot hear you clearly or understand you',
    answer: 'gabble',
    difficulty: Dificulty.EASY,
  ),
  Question(
    id: 207,
    text:
        'serving to increase wealth or resources; providing money or other benefit',
    answer: 'gainful',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 208,
    text: 'prison',
    answer: 'gaol',
    difficulty: Dificulty.EASY,
  ),
  Question(
    id: 209,
    text:
        'a hinged barrier used to close an opening in a wall, fence, or hedge',
    answer: 'gate',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 210,
    text: 'relating to old people, especially with regard to their healthcare',
    answer: 'geriatric',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 211,
    text: 'carry a fetus in the womb from conception to birth',
    answer: 'gestate',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 212,
    text:
        '(in ancient Rome) a man trained to fight with weapons against other men or wild animals in an arena',
    answer: 'gladiator',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 213,
    text: 'obtain (information) from various sources, often with difficulty',
    answer: 'glean',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 214,
    text: 'things that are produced to be sold',
    answer: 'goods',
    difficulty: Dificulty.EASY,
  ),
  Question(
    id: 215,
    text: 'intense sorrow, especially caused by someone\'s death',
    answer: 'grief',
    difficulty: Dificulty.EASY,
  ),
  Question(
    id: 216,
    text:
        'the place where a particular type of animal or plant is normally found',
    answer: 'habitat',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 217,
    text: 'a quantity that fills the hand',
    answer: 'handful',
    difficulty: Dificulty.EASY,
  ),
  Question(
    id: 218,
    text: 'cruel, severe and unkind',
    answer: 'harsh',
    difficulty: Dificulty.EASY,
  ),
  Question(
    id: 219,
    text:
        'a person legally entitled to the property or rank of another on that person\'s death',
    answer: 'heir',
    difficulty: Dificulty.EASY,
  ),
  Question(
    id: 220,
    text:
        'any plant with leaves, seeds, or flowers used for flavouring, food, medicine, or perfume',
    answer: 'herb',
    difficulty: Dificulty.EASY,
  ),
  Question(
    id: 221,
    text: 'a person who makes, repairs or sells jewellery and watches',
    answer: 'jeweller',
    difficulty: Dificulty.EASY,
  ),
  Question(
    id: 222,
    text: 'lack of knowledge or information',
    answer: 'ignorance',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 223,
    text: 'lacking sense or clear, sound reasoning',
    answer: 'illogical',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 224,
    text:
        'money received, especially on a regular basis, for work or through investments',
    answer: 'income',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 225,
    text: 'not legally or officially acceptable',
    answer: 'invalid',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 226,
    text: 'a planned route or journey',
    answer: 'itinerary',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 227,
    text: ' the start of a game of football',
    answer: 'kickoff',
    difficulty: Dificulty.EASY,
  ),
  Question(
    id: 228,
    text: 'a person who likes to stop other people from having fun',
    answer: 'killjoy',
    difficulty: Dificulty.EASY,
  ),
  Question(
    id: 229,
    text: 'the fact of being related in a family',
    answer: 'kinship',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 230,
    text: 'a large area of water surrounded by land',
    answer: 'lake',
    difficulty: Dificulty.EASY,
  ),
  Question(
    id: 231,
    text:
        'a small mistake, especially one that is caused by forgetting something or by being careless',
    answer: 'lapse',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 231,
    text:
        'a flat green part of a plant, growing from a stem or branch or from the root',
    answer: 'leaf',
    difficulty: Dificulty.EASY,
  ),
  Question(
    id: 232,
    text: ' to allow liquid or gas to get in or out through a small hole',
    answer: 'leak',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 233,
    text: 'a story from ancient times',
    answer: 'legend',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 234,
    text: 'a quiet, gentle song sung to send a child to sleep',
    answer: 'lullaby',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 235,
    text: 'a disease or ailment',
    answer: 'malady',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 236,
    text:
        'a drawing or plan of the earth’s surface or part of it, showing countries, towns, rivers, etc',
    answer: 'map',
    difficulty: Dificulty.EASY,
  ),
  Question(
    id: 237,
    text:
        'a person, typically a woman, who is trained to assist women in childbirth',
    answer: 'midwife',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 238,
    text: 'the Mafia or a similar criminal organization',
    answer: 'mob',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 239,
    text: 'showing a lack of experience, wisdom, or judgement',
    answer: 'naive',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 240,
    text: 'a person who watches somebody/something',
    answer: 'observer',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 241,
    text: 'a formal agreement between individuals or parties',
    answer: 'pact',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 242,
    text: 'a palm reader',
    answer: 'palmist',
    difficulty: Dificulty.EASY,
  ),
  Question(
    id: 243,
    text: 'the inner surface of the hand between the wrist and the fingers',
    answer: 'palm',
    difficulty: Dificulty.EASY,
  ),
  Question(
    id: 244,
    text:
        'a short story that teaches a moral or spiritual lesson, especially one of those told by Jesus as recorded in the Bible',
    answer: 'parable',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 245,
    text: 'to make an area of land very dry',
    answer: 'parch',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 246,
    text: 'a flat part at the side of a road for people to walk on',
    answer: 'pavement',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 247,
    text:
        'the action of feeling or showing sorrow and regret for having done wrong',
    answer: 'penitence',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 248,
    text:
        'having everything that is necessary; complete and without faults or weaknesses',
    answer: 'perfect',
    difficulty: Dificulty.EASY,
  ),
  Question(
    id: 249,
    text: 'of little importance; trivial',
    answer: 'petty',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 250,
    text:
        'a stout seed- or fruit-eating bird with a small head, short legs, and a cooing voice, typically having grey and white plumage',
    answer: 'pigeon',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 251,
    text:
        'a rectangular cloth bag stuffed with feathers or other soft materials, used to support the head when lying or sleeping',
    answer: 'pillow',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 252,
    text:
        'evidence or argument establishing a fact or the truth of a statement',
    answer: 'proof',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 253,
    text: 'a thing or things belonging to someone',
    answer: 'property',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
      id: 254,
      text: 'make an offer of marriage to someone',
      answer: 'propose',
      difficulty: Dificulty.EASY),
  Question(
      id: 255,
      text: 'able to change quickly and easily',
      answer: 'protean',
      difficulty: Dificulty.HARD),
  Question(
    id: 256,
    text:
        ' to make somebody suffer because they have broken the law or done something wrong',
    answer: 'punish',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 257,
    text:
        'a short, well-known pithy saying, stating a general truth or piece of advice',
    answer: 'proverb',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 258,
    text: 'a planned route or journey',
    answer: 'prowl',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 259,
    text: 'a model of a person or an animal that can be made to move',
    answer: 'puppet',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 260,
    text: 'to supply food, services or information to people',
    answer: 'purvey',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 261,
    text:
        'unconventional and slightly disreputable, especially in an attractive way',
    answer: 'raffish',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 262,
    text: 'the back part of something',
    answer: 'rear',
    difficulty: Dificulty.EASY,
  ),
  Question(
    id: 263,
    text: 'a person who fights against the government of their country',
    answer: 'rebel',
    difficulty: Dificulty.EASY,
  ),
  Question(
    id: 264,
    text: 'throw back (heat, light, or sound) without absorbing it',
    answer: 'reflect',
    difficulty: Dificulty.EASY,
  ),
  Question(
    id: 265,
    text:
        'to say or show that you will not do something that somebody has asked you to do',
    answer: 'refuse',
    difficulty: Dificulty.EASY,
  ),
  Question(
    id: 266,
    text:
        'the way in which two people, groups or countries behave towards each other or deal with each other',
    answer: 'relation',
    difficulty: Dificulty.EASY,
  ),
  Question(
    id: 267,
    text:
        'closely connected or appropriate to what is being done or considered',
    answer: 'relavant',
    difficulty: Dificulty.EASY,
  ),
  Question(
    id: 268,
    text:
        'an exact copy or model of something, especially one on a smaller scale',
    answer: 'replica',
    difficulty: Dificulty.EASY,
  ),
  Question(
    id: 269,
    text:
        'a strong feeling of approval of somebody because of their good qualities or achievements',
    answer: 'respect',
    difficulty: Dificulty.EASY,
  ),
  Question(
    id: 270,
    text: 'a verbal or written answer',
    answer: 'response',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 271,
    text:
        'unable to stay still, or unwilling to be controlled, especially because you feel bored or not satisfied',
    answer: 'restive',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 272,
    text:
        'a state in which two people, companies, etc. are competing for the same thing',
    answer: 'rivalry',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 273,
    text: 'a person who behaves badly towards other people',
    answer: 'rotter',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 274,
    text:
        'a question or statement intentionally phrased so as to require ingenuity in ascertaining its answer or meaning.',
    answer: 'riddle',
    difficulty: Dificulty.EASY,
  ),
  Question(
      id: 275,
      text: 'lacking salt',
      answer: 'saltless',
      difficulty: Dificulty.EASY),
  Question(
    id: 276,
    text: 'the state of being very important and worth protecting',
    answer: 'sanctity',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 277,
    text:
        'to write something in a careless untidy way, making it difficult to read',
    answer: 'scrawl',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 278,
    text: ' to fire a gun or other weapon',
    answer: 'shoot',
    difficulty: Dificulty.EASY,
  ),
  Question(
    id: 279,
    text:
        'a situation when there is not enough of the people or things that are needed',
    answer: 'shortage',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 280,
    text: 'firmly fixed, supported, or balanced; not shaking or moving',
    answer: 'steady',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 281,
    text: 'a person who trains wild animals',
    answer: 'tamer',
    difficulty: Dificulty.NORMAL,
  ),
  Question(
    id: 282,
    text:
        'to attract somebody or make somebody want to do or have something, even if they know it is wrong',
    answer: 'tempt',
    difficulty: Dificulty.HARD,
  ),
  Question(
    id: 283,
    text: 'excellent; wonderful',
    answer: 'terrific',
    difficulty: Dificulty.EASY,
  ),
  Question(
    id: 284,
    text: 'an area or a region with a particular feature or use',
    answer: 'zone',
    difficulty: Dificulty.NORMAL,
  )
];
