import 'package:flutter/material.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  const Header(
      {Key? key,
      this.title})
      : super(key: key);
  final String? title;


  @override
  Size get preferredSize => const Size.fromHeight(60.0);


  @override
  PreferredSizeWidget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      leading: IconButton(
                  onPressed: () => Navigator.pop(context),                   
                  icon: const Icon(Icons.arrow_back)),
      title:  title != null ? Text(title!) : const Text(''),
      centerTitle: false,
      //backgroundColor: Colors.red,
      elevation: 0.0,
    );
  }
}
