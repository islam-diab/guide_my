part of '../auth_view.dart';

class ContainerWithOpacity extends StatelessWidget {
  const ContainerWithOpacity({
    super.key,
    required this.child,
    this.inAuth = true,
  });
  final Widget child;
  final bool inAuth;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height,
      width: MediaQuery.sizeOf(context).width,
      decoration: ShapeDecoration(
        gradient: LinearGradient(
          begin: const Alignment(.2, -0.34),
          end: const Alignment(-0.94, 0.34),
          colors: [
            const Color.fromARGB(255, 95, 82, 105).withOpacity(0.15),
            const Color(0x14CC5854).withOpacity(0.2),
            const Color(0xFFB379DF).withOpacity(0.2)
          ],
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: child,
      ),
    );
  }
}
