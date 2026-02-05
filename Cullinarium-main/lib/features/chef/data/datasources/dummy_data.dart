// Функция для добавления тестовых данных о шеф-поварах в Firebase

final List<Map<String, dynamic>> russianChefDummyData = [
  {
    'id': 'chef001',
    'name': 'Михаил Соколов',
    'email': 'mikhail.chef@cullinarium.com',
    'role': 'Шеф-повар',
    'phoneNumber': '+79165123456',
    'avatar':
        'https://images.unsplash.com/photo-1566554273541-37a9ca77b91f?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'createdAt': '2024-05-01T10:30:00.000Z',
    'profile': {
      'description':
          'Объединяю аутентичные вкусы Центральной Азии и России с современными техниками приготовления.',
      'jobExperience': '15 лет опыта в русской и центральноазиатской кухне.',
      'location': 'Москва, Россия',
      'instagram': '@mikhail_chef_moscow',
      'categories': ['Русская кухня', 'Центральноазиатская кухня', 'Фьюжн'],
      'languages': ['Русский', 'Английский', 'Узбекский'],
      'rating': 4.8,
      'isApprovied': true,
    },
    'chefDetails': {
      'kitchen': 'Русская кухня',
      'extraKitchen': 'Центральноазиатская кухня, Французская кухня',
      'guestsCapability': 50,
      'workSchedule': 'Пн-Сб, 9:00-21:00',
      'menu': [
        'Сибирские пельмени со специями Центральной Азии',
        'Строганов по-московски',
        'Узбекский плов с русскими грибами',
        'Борщ с узбекскими специями'
      ],
      'pricePerPerson': 3500.0,
      'canGoToRegions': true,
      'images': [
        'https://images.unsplash.com/photo-1551006917-3b4c078c47c9?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
        'https://images.unsplash.com/photo-1576866209830-589e1bfbaa4d?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
        'https://images.unsplash.com/photo-1583953596987-451b9f8ea6e6?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60'
      ],
    }
  },
  {
    'id': 'chef002',
    'name': 'Елена Петрова',
    'email': 'yelena@cullinarium.com',
    'role': 'Кондитер',
    'phoneNumber': '+79267890123',
    'avatar':
        'https://images.unsplash.com/photo-1594490434733-dc762c4e0765?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'createdAt': '2024-04-12T08:15:00.000Z',
    'profile': {
      'description':
          'Специализируюсь на фьюжн-кондитерских изделиях, сочетающих русские и центральноазиатские вкусы.',
      'jobExperience': '8 лет специализации на десертах и выпечке.',
      'location': 'Санкт-Петербург, Россия',
      'instagram': '@yelena_desserts',
      'categories': ['Кондитерские изделия', 'Десерты', 'Фьюжн-выпечка'],
      'languages': ['Русский', 'Французский', 'Английский'],
      'rating': 4.9,
      'isApprovied': true,
    },
    'chefDetails': {
      'kitchen': 'Кондитерские изделия',
      'extraKitchen': 'Русские десерты, Центральноазиатская выпечка',
      'guestsCapability': 30,
      'workSchedule': 'Вт-Вс, 8:00-20:00',
      'menu': [
        'Пирожное "Баклава-медовик фьюжн"',
        'Наполеон с восточными специями',
        'Центральноазиатская чак-чак с русскими ягодами',
        'Эклеры с начинкой из сухофруктов по-восточному'
      ],
      'pricePerPerson': 2800.0,
      'canGoToRegions': true,
      'images': [
        'https://images.unsplash.com/photo-1567954970774-58d6aa6c50dc?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
        'https://images.unsplash.com/photo-1568199435309-08cfbd0e8f71?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
        'https://images.unsplash.com/photo-1612886623532-1952b13a4a85?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60'
      ],
    }
  },
  {
    'id': 'chef003',
    'name': 'Дмитрий Иванов',
    'email': 'dmitri@cullinarium.com',
    'role': 'Шеф-повар ресторана',
    'phoneNumber': '+79152345678',
    'avatar':
        'https://images.unsplash.com/photo-1577219491135-ce391730fb2c?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'createdAt': '2024-03-28T14:20:00.000Z',
    'profile': {
      'description':
          'Посвящаю себя сохранению и возвышению традиционной русской и центральноазиатской кухни с использованием экологичных ингредиентов.',
      'jobExperience':
          '20 лет руководства ресторанными кухнями в России и Центральной Азии.',
      'location': 'Казань, Россия',
      'instagram': '@chef_dmitri_kazan',
      'categories': [
        'Традиционная русская кухня',
        'Центральноазиатская кухня',
        'Эко-гастрономия'
      ],
      'languages': ['Русский', 'Английский', 'Казахский', 'Татарский'],
      'rating': 4.7,
      'isApprovied': true,
    },
    'chefDetails': {
      'kitchen': 'Традиционная русская кухня',
      'extraKitchen': 'Центральноазиатская кухня',
      'guestsCapability': 100,
      'workSchedule': 'Вт-Вс, 10:00-22:00',
      'menu': [
        'Томленая узбекская баранина с русскими травами',
        'Казанский бешбармак',
        'Уха по-астрахански',
        'Татарский эчпочмак с русским акцентом'
      ],
      'pricePerPerson': 4000.0,
      'canGoToRegions': false,
      'images': [
        'https://images.unsplash.com/photo-1561626138-65e912e912a9?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
        'https://images.unsplash.com/photo-1580476262798-bddd9f4b7369?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
        'https://images.unsplash.com/photo-1588689115724-e04f8ee8e55c?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60'
      ],
    }
  },
  {
    'id': 'chef004',
    'name': 'Наталья Кузнецова',
    'email': 'natalia@cullinarium.com',
    'role': 'Шеф-повар',
    'phoneNumber': '+79263456789',
    'avatar':
        'https://images.unsplash.com/photo-1561366467-a9e4f9f8e2e9?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'createdAt': '2024-05-10T09:45:00.000Z',
    'profile': {
      'description':
          'Создаю инновационные блюда, вдохновленные культурным разнообразием России и Шелкового пути.',
      'jobExperience':
          '12 лет специализации на турецко-русско-центральноазиатском фьюжне.',
      'location': 'Владимир, Россия',
      'instagram': '@natalia_fusion_chef',
      'categories': [
        'Средиземноморская кухня',
        'Русская кухня',
        'Центральноазиатская кухня',
        'Фьюжн'
      ],
      'languages': ['Русский', 'Турецкий', 'Английский'],
      'rating': 4.6,
      'isApprovied': true,
    },
    'chefDetails': {
      'kitchen': 'Средиземноморско-русский фьюжн',
      'extraKitchen': 'Центральноазиатская кухня',
      'guestsCapability': 40,
      'workSchedule': 'Пн-Пт, 10:00-20:00',
      'menu': [
        'Черноморский плов с морепродуктами',
        'Паста с русскими лесными грибами и узбекскими специями',
        'Средиземноморский лагман',
        'Турецкий кебаб с сибирскими ингредиентами'
      ],
      'pricePerPerson': 3200.0,
      'canGoToRegions': true,
      'images': [
        'https://images.unsplash.com/photo-1598180310788-9fc7e9248659?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
        'https://images.unsplash.com/photo-1619380061814-58f749111d50?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
        'https://images.unsplash.com/photo-1594041680534-e8c8cdebd659?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60'
      ],
    }
  },
  {
    'id': 'chef005',
    'name': 'Виктор Попов',
    'email': 'viktor@cullinarium.com',
    'role': 'Специалист по барбекю',
    'phoneNumber': '+79154567890',
    'avatar':
        'https://images.unsplash.com/photo-1545389333-cf878a5d9c9a?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'createdAt': '2024-04-05T16:30:00.000Z',
    'profile': {
      'description':
          'Мастер русских и центральноазиатских техник приготовления на открытом огне.',
      'jobExperience':
          '25 лет опыта работы с традиционным барбекю и копчением.',
      'location': 'Сочи, Россия',
      'instagram': '@viktor_bbq_master',
      'categories': ['Барбекю', 'Гриль', 'Копчение', 'Уличная еда'],
      'languages': ['Русский', 'Украинский', 'Узбекский'],
      'rating': 4.9,
      'isApprovied': true,
    },
    'chefDetails': {
      'kitchen': 'Русское барбекю',
      'extraKitchen': 'Центральноазиатские техники гриля',
      'guestsCapability': 150,
      'workSchedule': 'Ежедневно, 12:00-22:00',
      'menu': [
        'Дымный шашлык с сибирскими травами',
        'Кавказский шашлык из баранины',
        'Узбекские люля-кебаб',
        'Копченая рыба по-астрахански'
      ],
      'pricePerPerson': 2500.0,
      'canGoToRegions': true,
      'images': [
        'https://images.unsplash.com/photo-1525164286253-04e68b9d94c6?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
        'https://images.unsplash.com/photo-1544025162-d76694265947?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
        'https://images.unsplash.com/photo-1544474607-41c1e1168191?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60'
      ],
    }
  },
  {
    'id': 'chef006',
    'name': 'Анна Смирнова',
    'email': 'anna@cullinarium.com',
    'role': 'Вегетарианский шеф-повар',
    'phoneNumber': '+79265678901',
    'avatar':
        'https://images.unsplash.com/photo-1551836022-d5d88e9218df?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'createdAt': '2024-05-15T11:00:00.000Z',
    'profile': {
      'description':
          'Новаторски интерпретирую традиционную русскую и центральноазиатскую кухню в растительном исполнении.',
      'jobExperience': '10 лет в вегетарианской кухне по всей Европе и Азии.',
      'location': 'Москва, Россия',
      'instagram': '@anna_vegan_russian',
      'categories': [
        'Вегетарианская кухня',
        'Веганская кухня',
        'Экологичное питание',
        'Фьюжн'
      ],
      'languages': ['Русский', 'Английский', 'Немецкий'],
      'rating': 4.8,
      'isApprovied': true,
    },
    'chefDetails': {
      'kitchen': 'Вегетарианская русская кухня',
      'extraKitchen': 'Центральноазиатская вегетарианская кухня',
      'guestsCapability': 35,
      'workSchedule': 'Пн-Сб, 9:00-19:00',
      'menu': [
        'Вегетарианский лагман с домашним грибным протеином',
        'Вегетарианские пельмени с соевым мясом',
        'Растительный плов с грибами и тофу',
        'Овощной борщ с кокосовой сметаной'
      ],
      'pricePerPerson': 2800.0,
      'canGoToRegions': true,
      'images': [
        'https://images.unsplash.com/photo-1543339308-43e59d6b73a6?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
        'https://images.unsplash.com/photo-1623428187969-5da2dcea5ebf?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
        'https://images.unsplash.com/photo-1610379230744-2e57a268f53d?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60'
      ],
    }
  },
  {
    'id': 'chef007',
    'name': 'Алексей Волков',
    'email': 'alexei@cullinarium.com',
    'role': 'Су-шеф',
    'phoneNumber': '+79156789012',
    'avatar':
        'https://images.unsplash.com/photo-1588516903720-8ceb67f9ef84?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'createdAt': '2024-04-20T13:15:00.000Z',
    'profile': {
      'description':
          'Восходящая звезда, привносящая свежие перспективы в русскую кухню с центральноазиатским влиянием.',
      'jobExperience': '6 лет работы в премиальных ресторанах по всей России.',
      'location': 'Екатеринбург, Россия',
      'instagram': '@alexei_rising_chef',
      'categories': [
        'Современная русская кухня',
        'Фьюжн',
        'Инновационная кухня'
      ],
      'languages': ['Русский', 'Английский', 'Казахский'],
      'rating': 4.5,
      'isApprovied': true,
    },
    'chefDetails': {
      'kitchen': 'Современная русская кухня',
      'extraKitchen': 'Центральноазиатско-испанское влияние',
      'guestsCapability': 25,
      'workSchedule': 'Вт-Вс, 14:00-22:00',
      'menu': [
        'Русско-узбекская паэлья с диким рисом',
        'Деконструированные пельмени с соусом из черных трюфелей',
        'Гастро-версия оливье с фуа-гра',
        'Свекольный гаспачо с копченой сметаной'
      ],
      'pricePerPerson': 3800.0,
      'canGoToRegions': true,
      'images': [
        'https://images.unsplash.com/photo-1621567453855-edacc2ffad7b?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
        'https://images.unsplash.com/photo-1607330289024-1535acc792a5?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
        'https://images.unsplash.com/photo-1632789395770-20e6f63be806?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60'
      ],
    }
  },
  {
    'id': 'chef008',
    'name': 'Ирина Орлова',
    'email': 'irina@cullinarium.com',
    'role': 'Шеф-повар кейтеринга',
    'phoneNumber': '+79267890123',
    'avatar':
        'https://images.unsplash.com/photo-1580489944761-15a19d654956?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'createdAt': '2024-03-15T10:45:00.000Z',
    'profile': {
      'description':
          'Специалист по масштабным традиционным русским пирам и центральноазиатскому кейтерингу мероприятий.',
      'jobExperience':
          '15 лет кейтеринга престижных мероприятий по всей России и Центральной Азии.',
      'location': 'Нижний Новгород, Россия',
      'instagram': '@irina_catering_pro',
      'categories': [
        'Кейтеринг',
        'Банкеты',
        'Традиционная кухня',
        'Праздничные меню'
      ],
      'languages': ['Русский', 'Украинский', 'Узбекский'],
      'rating': 4.7,
      'isApprovied': true,
    },
    'chefDetails': {
      'kitchen': 'Русская традиционная кухня',
      'extraKitchen': 'Центральноазиатская праздничная кухня',
      'guestsCapability': 300,
      'workSchedule': 'По запросу',
      'menu': [
        'Праздничный узбекский плов на 100 гостей',
        'Русский свадебный стол',
        'Ассорти закусок для фуршета',
        'Праздничные пироги с разными начинками'
      ],
      'pricePerPerson': 2200.0,
      'canGoToRegions': true,
      'images': [
        'https://images.unsplash.com/photo-1605522588521-6cb88a93b23e?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
        'https://images.unsplash.com/photo-1584663639452-b272afba0bf3?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
        'https://images.unsplash.com/photo-1507434888513-76389292d288?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60'
      ],
    }
  },
  {
    'id': 'chef009',
    'name': 'Сергей Морозов',
    'email': 'sergei@cullinarium.com',
    'role': 'Личный шеф-повар',
    'phoneNumber': '+79158901234',
    'avatar':
        'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'createdAt': '2024-05-05T12:30:00.000Z',
    'profile': {
      'description':
          'Эксклюзивный личный шеф-повар, предлагающий персонализированный опыт питания, сочетающий русскую и центральноазиатскую кухни.',
      'jobExperience':
          '10 лет работы личным поваром для дипломатов и руководителей.',
      'location': 'Москва, Россия',
      'instagram': '@sergei_private_chef',
      'categories': [
        'Высокая кухня',
        'Персональное меню',
        'Гастрономические ужины',
        'Фьюжн'
      ],
      'languages': ['Русский', 'Английский', 'Французский', 'Таджикский'],
      'rating': 5.0,
      'isApprovied': true,
    },
    'chefDetails': {
      'kitchen': 'Французско-русский фьюжн',
      'extraKitchen': 'Центральноазиатская кухня, Молекулярная гастрономия',
      'guestsCapability': 15,
      'workSchedule': 'По запросу',
      'menu': [
        'Деконструированные пельмени с узбекскими специями',
        'Сахалинские гребешки с ферментированным чесноком',
        'Утка конфи с русскими лесными ягодами',
        'Дегустационное меню из 7 перемен блюд'
      ],
      'pricePerPerson': 7500.0,
      'canGoToRegions': true,
      'images': [
        'https://images.unsplash.com/photo-1518133683791-0b9de5a055f0?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
        'https://images.unsplash.com/photo-1501189347517-8f805d44779b?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
        'https://images.unsplash.com/photo-1541809570-59ab6eda2596?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60'
      ],
    }
  },
  {
    'id': 'chef010',
    'name': 'Ольга Соколова',
    'email': 'olga@cullinarium.com',
    'role': 'Шеф-инструктор',
    'phoneNumber': '+79269012345',
    'avatar':
        'https://images.unsplash.com/photo-1598976789852-59e0c82f5e50?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'createdAt': '2024-04-28T14:00:00.000Z',
    'profile': {
      'description':
          'Делюсь знаниями русских и центральноазиатских кулинарных традиций через мастер-классы и образовательные программы.',
      'jobExperience':
          '18 лет в кулинарном образовании и ресторанной индустрии.',
      'location': 'Москва, Россия',
      'instagram': '@olga_culinary_school',
      'categories': [
        'Кулинарное образование',
        'Мастер-классы',
        'Традиционная кухня',
        'Образовательные программы'
      ],
      'languages': ['Русский', 'Английский', 'Узбекский', 'Киргизский'],
      'rating': 4.9,
      'isApprovied': true,
    },
    'chefDetails': {
      'kitchen': 'Образовательная кулинария',
      'extraKitchen': 'Русская и центральноазиатская кухня',
      'guestsCapability': 20,
      'workSchedule': 'Пн-Пт, 10:00-18:00',
      'menu': [
        'Курс "От Волги до Памира: кулинарное путешествие"',
        'Мастер-класс по русской выпечке',
        'Секреты центральноазиатского плова',
        'Интенсив "Пельмени и манты разных регионов"'
      ],
      'pricePerPerson': 3000.0,
      'canGoToRegions': true,
      'images': [
        'https://images.unsplash.com/photo-1507048947301-7afc2aca0edc?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
        'https://images.unsplash.com/photo-1590577976322-3d2d6e2130d5?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
        'https://images.unsplash.com/photo-1610725667100-1fd24eb6a10b?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60'
      ],
    }
  },
];
