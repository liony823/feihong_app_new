import 'package:common/common.dart';

class AppState {
  final bool isInitialized;

  const AppState({
    this.isInitialized = false,
  });

  AppState copyWith({
    bool? isInitialized,
    List<Country>? countries,
    }) {
    return AppState(
      isInitialized: isInitialized ?? this.isInitialized,
    );
  }
}
