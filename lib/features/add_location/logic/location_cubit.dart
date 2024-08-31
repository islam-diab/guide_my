import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:guide_my/features/home/data/app_repositories.dart';

part 'location_state.dart';
part 'location_cubit.freezed.dart';

class LocationCubit extends Cubit<LocationState> {
  final AppRepository appRepository = AppRepository();

  LocationCubit() : super(const LocationState.initial());




  
}
