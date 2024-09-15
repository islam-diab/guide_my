part of '../add_location_screen.dart';

class AppDropdownButton extends StatefulWidget {
  final String? Function(String?)? validator;
  const AppDropdownButton({
    super.key,
    this.validator,
  });

  @override
  State<AppDropdownButton> createState() => _AppDropdownButtonState();
}

class _AppDropdownButtonState extends State<AppDropdownButton> {
  String? selectedValue;

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<String> items = [];

    var category = Hive.box<CategoryModel>(HiveKeys.category);

    for (var element in category.values.toList()) {
      items.add(element.name);
    }

    return Center(
      child: DropdownButtonHideUnderline(
        child: DropdownButtonFormField2<String>(
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 16),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black,
                width: 1.3.w,
              ),
              borderRadius: BorderRadius.circular(16.0),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          // isExpanded: true,
          validator: widget.validator,
          hint: Text(
            'Select Item',
            style: AppTextStyles.font16RegularPrimary,
          ),
          items: items
              .map((item) => DropdownMenuItem(
                    value: item,
                    child: Text(
                      item,
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ))
              .toList(),
          value: selectedValue,
          onChanged: (value) {
            setState(() {
              selectedValue = value;
              context.read<AddLocationCubit>().categoryController.text =
                  selectedValue!;
            });
          },
          buttonStyleData: const ButtonStyleData(
            padding: EdgeInsets.symmetric(horizontal: 16),
            height: 40,
            width: 200,
          ),
          dropdownStyleData: const DropdownStyleData(
            maxHeight: 200,
          ),
          menuItemStyleData: const MenuItemStyleData(
            height: 40,
          ),
        ),
      ),
    );
  }
}
