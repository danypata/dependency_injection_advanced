import 'package:dependency_injection/di/injector.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

//Define the Environments here
const cat = Environment('cat');
const chuck = Environment('chuck');

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
void configureDependencies({Environment environment = cat}) {
  //we init the dependencies using a speciffic env
  $initGetIt(getIt, environment: environment.name);
}
