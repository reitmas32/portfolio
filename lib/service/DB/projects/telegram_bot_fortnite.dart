// ignore_for_file: non_constant_identifier_names

import 'package:portfolio/domain/models/project.dart';

Project TelegramBotProject = Project(
  title: 'Telegram Bot Fortnite',
  titleHead: 'Telegram Bot Fortnite',
  publishDate: DateTime.utc(2023, 2, 10),
  img:
      'https://raw.githubusercontent.com/reitmas32/portfolio/master/public/assets/telegram_bot_fortnite.jpg',
  description: 'Bot Telegram to see the shop of Fortnite.',
  tags: ['dev', 'Bot', 'Python'],
  urlProject: 'https://github.com/reitmas32/Tele_Bot_Fortnite',
  urlRepository: 'https://github.com/reitmas32/Tele_Bot_Fortnite',
  content: """
![Image](https://raw.githubusercontent.com/reitmas32/portfolio/master/public/assets/telegram_bot_fortnite.jpg)

## Info
Hello Im the Bot to see Shop of Fortnite


My commands: 
- /outfits
- /pickaxes 
- /backpacks 
- /emotes

The parameter section=[daily, featured, specialFeatured, specialDaily]')

Examples: 

- `/outfits daily`
- `/outfits featured`
- `/emotes daily`
- `/pickaxes featured`


<center><img src="https://raw.githubusercontent.com/reitmas32/Tele_Bot_Fortnite/master/public/help.png"></center>

<center><img src="https://raw.githubusercontent.com/reitmas32/Tele_Bot_Fortnite/master/public/outfits-daily.png"></center>

## Get Started

Remplace `TELEBOT_KEY = 'XXXXXXXXXXXXX'` for your telegram bot key show [Telegram API](https://core.telegram.org/api)
      """,
);
