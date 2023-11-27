import 'package:salt_test/features/home/model/user_model.dart';
abstract class HomeState {}
class HomeLoadSuccess extends HomeState {
  final List<UserModel> listUsers;
  HomeLoadSuccess(this.listUsers);
}
class HomeLoading extends HomeState {}
class HomeIdle extends HomeState {}
class HomeError extends HomeState {}