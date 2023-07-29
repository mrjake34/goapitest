part of 'home_page.dart';

class _AppBarNotificationIcon extends StatelessWidget {
  const _AppBarNotificationIcon();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: Colors.blueGrey[50],
        borderRadius: BorderRadius.circular(10),
      ),
      child: IconButton(
        onPressed: () {},
        icon: const Badge(
          label: Text(
            '2',
            style: TextStyle(color: Colors.white),
          ),
          child: Icon(
            Icons.notifications_none,
          ),
        ),
      ),
    );
  }
}

class _AppBarSearchBar extends StatelessWidget {
  const _AppBarSearchBar();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: TextFormField(
        decoration: InputDecoration(
          hintText: 'Search',
          border: InputBorder.none,
          filled: true,
          fillColor: Colors.blueGrey[50],
          contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          prefixIcon: const Icon(
            Icons.search,
          ),
          suffixIcon: const Icon(
            Icons.qr_code_2,
            size: 18,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
