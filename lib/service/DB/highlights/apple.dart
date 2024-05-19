import 'package:portfolio/domain/models/experience.dart';
import 'package:portfolio/ui/providers/lang_provider.dart';

Experience HacksApple = Experience(
  start: 'APRIL 2024',
  end: '',
  title: 'Winners Swift Change Makers Hackathon 2024',
  company: 'Apple-Enactus-FEMSA',
  description: {
    LangsSupported.SPANISH: """
Durante esta competencia, mi equipo y yo obtuvimos el primer lugar en el reto FEMSA, desarrollando un prototipo de una red social comunitaria. El objetivo de esta red social era mejorar la comunicación entre vecinos y fortalecer la comunidad. Mi contribución más destacada fue el desarrollo de una API utilizando FastAPI, que permitía identificar si las publicaciones en la plataforma eran adecuadas.

Tecnologías utilizadas:

- Python
- Docker
- FastAPI
- Open AI
""",
    LangsSupported.ENGLISH: """
During this competition, my team and I won first place in the FEMSA challenge by developing a prototype of a community social network. The goal of this social network was to improve communication among neighbors and strengthen the community. My most notable contribution was developing an API using FastAPI, which could identify whether posts on the platform were appropriate.

Technologies used:

- Python
- Docker
- FastAPI
- Open AI
"""
  },
);
