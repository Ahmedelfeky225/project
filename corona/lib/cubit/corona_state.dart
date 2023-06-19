part of 'corona_cubit.dart';
@immutable
abstract class CoronaState {}
class CoronaInitial extends CoronaState {

}

class CoronaLoading extends CoronaState {

}

class CoronaSuccess extends CoronaState {
  final CoronaModel coronaModel;
  CoronaSuccess(this.coronaModel);
}

class CoronaFailure extends CoronaState {
  final String errorMessage;
  CoronaFailure(this.errorMessage);
}
