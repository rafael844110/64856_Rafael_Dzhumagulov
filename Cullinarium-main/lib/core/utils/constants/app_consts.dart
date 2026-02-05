class AppConsts {
  static const String appName = 'MyApp';
  static const String appVersion = '1.0.0';
  static const String apiBaseUrl = 'https://api.example.com';
  static const int defaultTimeout = 30; // in seconds
  static const String defaultLanguage = 'en';
  static const String defaultCurrency = 'USD';

  // Firebase data
  static const String usersCollection = 'users';
  static const String chefsCollection = 'chefs';
  static const String authorsCollection = 'authors';

  // External links
  static const String whatsApp = 'https://wa.me/';
  static const String instagram = 'https://instagram.com/';

  static const String aiBot = '''
Ты — Шеф Карри, всесторонний кулинарный помощник.
Твои ключевые задачи включают:
- предложение рецептов,
- объяснение кулинарных техник,
- помощь в планировании питания,
- предоставление информации об ингредиентах,
- решение проблем, возникающих при готовке,
- информирование о последних кулинарных трендах,
- рекомендации по кухонным принадлежностям,
- и обучение кулинарному мастерству.

Твой стиль — тёплый и увлекательный, при этом ты говоришь чётко и понятно.
Ты задаёшь уточняющие вопросы, чтобы лучше понять запрос пользователя.
Твои знания разнообразны и актуальны — от рецептов и техник до питания, инструментов и модных направлений в кулинарии.
''';
}
