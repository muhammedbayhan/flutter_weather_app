# flutter_weather_app

Bu proje, OpenWeatherMap API kullanılarak flutter ile geliştirilmiş bir hava durumu uygulamasıdır. Uygulama, kullanıcıya belirli bir şehir veya mevcut konumu için güncel hava durumu bilgilerini sağlar. Ayrıca, 5 günlük 3 saatlik aralıklarla hava durumu tahminlerini de sunar.

## Özellikler
- Kullanıcının mevcut konumuna ilişkin hava durumu bilgileri.
- Belirli bir şehir için sıcaklık, rüzgar, nem, basınç bilgileri.
- Hava koşullarına uygun hava durumu simgeleri.
- 5 günlük 3 saat ara ile hava durumu tahminleri.
- Yağmurlu veya çok sıcak havalarda kullanıcının dikkatini çekebilmek için özel renklerin kullanımı.

  

## Ekran Görüntüleri
![s1](https://github.com/muhammedbayhan/flutter_weather_app/assets/76851132/d557d1fe-df51-4f93-998a-3b40a40ae5cf)
![s2](https://github.com/muhammedbayhan/flutter_weather_app/assets/76851132/7d897d40-c5c8-4569-91e3-8a8387a51397)
![s3](https://github.com/muhammedbayhan/flutter_weather_app/assets/76851132/816621fc-d4c3-44af-aa98-2ed0fb47627b)
![s4](https://github.com/muhammedbayhan/flutter_weather_app/assets/76851132/44a3ffcb-fa9f-40f3-a746-410c4edee824)
![s5](https://github.com/muhammedbayhan/flutter_weather_app/assets/76851132/466af3d4-347a-4cf5-8f0d-75fc96ac54a5)

### Video


https://github.com/muhammedbayhan/flutter_weather_app/assets/76851132/df31eddb-81cb-4c07-b104-124ab24ea52b


## Kurulum

Gerekli paketleri yükleyin:
```
flutter pub get

```

API anahtarını ekleyin:

lib/utils/api_config.dart içine OpenWeatherMap API anahtarını ekleyin:
```
  static const String openWeatherApiKey = "API_KEY";

```

Uygulamayı çalıştırın:
```
 flutter run

```
