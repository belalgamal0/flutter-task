part of 'home_bloc.dart';

@freezed
class HomeEvents with _$HomeEvents {
    const factory HomeEvents.changeActivePage({
    required int activePageIndex
  }) = ChangePageEvent;
      const factory HomeEvents.addUserAccount({    required UserAccount userAccount
}) = AddUserAccountEvent;
}
