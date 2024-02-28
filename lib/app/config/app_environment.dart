class AppEnvironment {
  final String name;
  final String baseUrl;

  const AppEnvironment._({
    required this.name,
    required this.baseUrl,
  });

  static late final AppEnvironment instance;

    factory AppEnvironment.dev() {
    const env = AppEnvironment._(
      name: 'dev',
      baseUrl: 'http://localhost:8000/v1/api/',
     // baseUrl: 'http://192.168.1.7:8000/api/v1/',
    );
    instance = env;

    return env;
  }

  factory AppEnvironment.beta() {
    const env = AppEnvironment._(
      name: 'dev',
      baseUrl: 'http://localhost:8000/api/v1/',
    );
    instance = env;

    return env;
  }

  factory AppEnvironment.prod() {
    const env = AppEnvironment._(
      name: 'prod',
      baseUrl: 'http://localhost:8080/api/v1/',
    );
    instance = env;

    return env;
  }
}