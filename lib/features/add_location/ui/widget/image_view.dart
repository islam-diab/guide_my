part of '../add_location_screen.dart';

class ImageView extends StatelessWidget {
  const ImageView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddLocationCubit, AddLocationState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () => context.read<AddLocationCubit>().pickImage(),
          child: state is UploadImage
              ? CircleAvatar(
                  radius: 40,
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[300],
                      image: DecorationImage(
                        image: FileImage(state.image!),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                )
              : CircleAvatar(
                  backgroundColor: Colors.grey[500],
                  radius: 40,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.cloud_upload_outlined,
                          color: Colors.white,
                        ),
                        Text(
                          'اضافة صورة',
                          style: AppTextStyles.font14WiteMedium,
                        ),
                      ],
                    ),
                  ),
                ),
        );
      },
    );
  }
}
