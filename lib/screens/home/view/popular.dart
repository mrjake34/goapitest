part of 'home_page.dart';

class _Popular extends StatelessWidget {
  const _Popular();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Popular',
                style: context.general.textTheme.titleMedium,
              ),
              TextButton(onPressed: () {}, child: const Text('See All'))
            ],
          ),
        ),
        SizedBox(
          height: 100,
          child: ListView.builder(
            itemCount: TestLists.productsListForTestPopularItems.length,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 8.0, right: 8.0),
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade200,
                  ),
                  child: Image.asset(TestLists.productsListForTestPopularItems[index].image!),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
