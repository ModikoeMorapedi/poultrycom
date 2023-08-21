const String imagePath = 'assets/images';
const String lottiePath = 'assets/lottie';
const String iconsPath = 'assets/icons';
const String weatherApiKey = 'f9827320d9a0df0b114e78da39619c48';
const String baseUrl = "https://api.openweathermap.org";
const String currentWeatherApi =
    "$baseUrl/data/2.5/weather?lat={location.latitude}&lon={location.longitide}&appid=$weatherApiKey&units=metric";
const String weatherForecastApi =
    "$baseUrl/data/2.5/forecast?lat={location!.latitude}&lon={location.longitide}&appid=$weatherApiKey&units=metric";
const success = 200;
const String newsApiKey = '82a0db27749d47bd9b71c66d8bf55532';
const String newsApi =
    "https://newsapi.org/v2/top-headlines?apiKey=$newsApiKey&country=za&category=science";
