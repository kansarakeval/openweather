class OpenWeatherModel {
  String? base, name;
  int? visibility, dt, timezone, id,cod;
  CoordModel? coordModel;
  MainModel? mainModel;
  WindModel? windModel;
  CloudsModel? cloudsModel;
  SysModel? sysModel;
  List<WeatherModel>? weatherModelList = [];

  OpenWeatherModel(
      {this.base,
        this.name,
        this.cod,
        this.visibility,
        this.dt,
        this.timezone,
        this.id,
        this.coordModel,
        this.mainModel,
        this.windModel,
        this.cloudsModel,
        this.sysModel,
        this.weatherModelList});

  factory OpenWeatherModel.mapToModel(Map m1) {
    List l1 = m1['weather'];
    return OpenWeatherModel(
      base: m1['base'],
      visibility: m1['visibility'],
      dt: m1['dt'],
      timezone: m1['timezone'],
      id: m1['id'],
      name: m1['name'],
      cod: m1['cod'],
      coordModel: CoordModel.mapToModel(m1['coord']),
      mainModel: MainModel.mapToModel(m1['main']),
      windModel: WindModel.mapToModel(m1['wind']),
      cloudsModel: CloudsModel.mapToModel(m1['clouds']),
      sysModel: SysModel.mapToModel(m1['sys']),
      weatherModelList: l1.map((e) => WeatherModel.mapToModel(e)).toList(),
    );
  }
}

class WeatherModel {
  int? id;
  String? main, description, icon;

  WeatherModel({this.id, this.main, this.description, this.icon});

  factory WeatherModel.mapToModel(Map m1) {
    return WeatherModel(
      id: m1['id'],
      main: m1['main'],
      description: m1['description'],
      icon: m1['icon'],
    );
  }
}

class CoordModel {
  double? lon, lat;

  CoordModel({this.lon, this.lat});

  factory CoordModel.mapToModel(Map m1) {
    return CoordModel(
      lat: m1['lat'],
      lon: m1['lon'],
    );
  }
}

class MainModel {
  double? temp, feels_like, temp_min, temp_max;
  int? pressure, humidity, sea_level, grnd_level;

  MainModel(
      {this.temp,
        this.feels_like,
        this.temp_min,
        this.temp_max,
        this.pressure,
        this.humidity,
        this.sea_level,
        this.grnd_level});

  factory MainModel.mapToModel(Map m1) {
    return MainModel(
      temp: m1['temp'],
      feels_like: m1['feels_like'],
      temp_min: m1['temp_min'],
      temp_max: m1['temp_max'],
      pressure: m1['pressure'],
      humidity: m1['humidity'],
      sea_level: m1['sea_level'],
      grnd_level: m1['grnd_level'],
    );
  }
}

class WindModel {
  double? speed,gust;
  int?  deg;

  WindModel({this.speed, this.deg, this.gust});

  factory WindModel.mapToModel(Map m1) {
    return WindModel(
      speed: m1['speed'],
      deg: m1['deg'],
      gust: m1['gust'],
    );
  }
}

class CloudsModel {
  int? all;

  CloudsModel({this.all});

  factory CloudsModel.mapToModel(Map m1) {
    return CloudsModel(
      all: m1['all'],
    );
  }
}

class SysModel {
  String? country;
  int? sunrise, sunset;

  SysModel({this.country, this.sunrise, this.sunset});

  factory SysModel.mapToModel(Map m1) {
    return SysModel(
      country: m1['country'],
      sunrise: m1['sunrise'],
      sunset: m1['sunset'],
    );
  }
}

