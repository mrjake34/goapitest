part of 'home_page.dart';

class _HomeSpecialOffer extends StatelessWidget {
  const _HomeSpecialOffer();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Special Offer',
                    softWrap: true,
                    overflow: TextOverflow.clip,
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          color: const Color.fromARGB(255, 36, 88, 114),
                        ),
                  ),
                  Text(
                    'Macbook Air 15inch',
                    softWrap: true,
                    overflow: TextOverflow.clip,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Buy Now'),
                          Icon(Icons.arrow_right_alt),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(child: Image.asset("assets/images/macbookair.png")),
          ],
        ),
      ),
    );
  }
}
