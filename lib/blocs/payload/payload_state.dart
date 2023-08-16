enum AppTheme { light, dark }

class PayloadState {
  final AppTheme appTheme;

  PayloadState({this.appTheme = AppTheme.light});

  factory PayloadState.initial() {
    return PayloadState();
  }

  @override
  String toString() => 'PayloadState(appTheme: $appTheme)';

  PayloadState copyWith({
    AppTheme? appTheme,
  }) {
    return PayloadState(
      appTheme: appTheme ?? this.appTheme,
    );
  }

  @override
  List<Object> get props => [appTheme];
}
