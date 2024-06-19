import 'package:stacked/stacked.dart';
import 'package:stackedpt1/services/counter_service.dart';

class ProfileViewModel extends BaseViewModel {
  CounterService counterService = CounterService();

  int get counter => counterService.counter;

  addValue() {
    counterService.addCounterValue();
    rebuildUi();
  }
}
