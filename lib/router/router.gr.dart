// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/foundation.dart' as _i6;
import 'package:trial_contact_list/features/contact/presentation/pages/contact_detail_page.dart'
    as _i1;
import 'package:trial_contact_list/features/contact/presentation/pages/contact_list_page.dart'
    as _i2;
import 'package:trial_contact_list/features/home/presentation/pages/home_page.dart'
    as _i3;
import 'package:trial_contact_list/features/login/presentation/pages/login_page.dart'
    as _i4;

/// generated route for
/// [_i1.ContactDetailPage]
class ContactDetailRoute extends _i5.PageRouteInfo<ContactDetailRouteArgs> {
  ContactDetailRoute({
    _i6.Key? key,
    required String contactId,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          ContactDetailRoute.name,
          args: ContactDetailRouteArgs(
            key: key,
            contactId: contactId,
          ),
          rawPathParams: {'contactId': contactId},
          initialChildren: children,
        );

  static const String name = 'ContactDetailRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<ContactDetailRouteArgs>(
          orElse: () => ContactDetailRouteArgs(
              contactId: pathParams.getString('contactId')));
      return _i1.ContactDetailPage(
        key: args.key,
        contactId: args.contactId,
      );
    },
  );
}

class ContactDetailRouteArgs {
  const ContactDetailRouteArgs({
    this.key,
    required this.contactId,
  });

  final _i6.Key? key;

  final String contactId;

  @override
  String toString() {
    return 'ContactDetailRouteArgs{key: $key, contactId: $contactId}';
  }
}

/// generated route for
/// [_i2.ContactListPage]
class ContactListRoute extends _i5.PageRouteInfo<void> {
  const ContactListRoute({List<_i5.PageRouteInfo>? children})
      : super(
          ContactListRoute.name,
          initialChildren: children,
        );

  static const String name = 'ContactListRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i2.ContactListPage();
    },
  );
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute({List<_i5.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i3.HomePage();
    },
  );
}

/// generated route for
/// [_i4.LoginPage]
class LoginRoute extends _i5.PageRouteInfo<void> {
  const LoginRoute({List<_i5.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i4.LoginPage();
    },
  );
}
