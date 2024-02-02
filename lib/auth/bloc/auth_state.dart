part of 'auth_bloc.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class AuthActionState extends AuthState {}

final class AuthSuccessState extends AuthState {}

final class LoadPhoneScreenState extends AuthState {}

final class LoadOtpScreenState extends AuthState {}
