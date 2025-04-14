class AppState {
  final bool isInitialized;

  const AppState({
    this.isInitialized = false,
  });

  AppState copyWith({
    bool? isInitialized,
  }) {
    return AppState(
      isInitialized: isInitialized ?? this.isInitialized,
    );
  }
}
