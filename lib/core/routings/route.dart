enum AppRoute {
  first(path: "/first"),
  second(path: "/second/:name"),
  third(path: "/third");

  final String path;
  const AppRoute({required this.path});
}
