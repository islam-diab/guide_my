part of '../auth_view.dart';
class OwnerOrUser extends StatefulWidget {
  const OwnerOrUser({super.key});

  @override
  State<OwnerOrUser> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<OwnerOrUser> {
   String _userSelected = '';

  void _saveState(String role) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(SharedPreferencesKeys.stateUser, role);
    _userSelected = prefs.getString(SharedPreferencesKeys.stateUser).toString(); // Save the role
  }

  @override
  Widget build(BuildContext context) {
    debugPrint(_userSelected);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        AppOutlineButton(
          onPressed: () {
            setState(() {
               _userSelected = 'owner';
              _saveState('owner');
            });
          },
          text: 'Service Owner',
          isSelected: _userSelected == 'owner',
        ),
        const Text('OR'),
        AppOutlineButton(
          onPressed: () {
            setState(() {
                _userSelected = 'user';
              _saveState('user');
            });
          },
          text: 'Regular User',
          isSelected: _userSelected == 'user',
        ),
      ],
    );
  }
}
