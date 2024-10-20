enum HiveConfig
{
  userHive(value: "sample.user.hive", boxName: "sample.box.user.hive");

  final String value;
  final String boxName;

  const HiveConfig({required this.value, required this.boxName});
}