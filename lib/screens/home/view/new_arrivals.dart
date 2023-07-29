part of 'home_page.dart';


class _NewArrivals extends StatelessWidget {
  const _NewArrivals();

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
                'New Arrivals',
                style: context.general.textTheme.titleMedium,
              ),
              TextButton(onPressed: () {}, child: const Text('See All'))
            ],
          ),
        ),
        SizedBox(
          height: 300,
          width: context.sized.width,
          child: ListView.builder(
            itemCount: TestLists.productsListForTestPopularItems.length,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 8.0, right: 8.0),
                child: Container(
                  width: context.sized.width / 2.3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade200,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.black12,
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Text(
                                  '-20%',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const CircleAvatar(
                                radius: 15,
                                backgroundColor: Colors.black12,
                                child: Icon(
                                  Icons.favorite_border,
                                  size: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 100,
                          height: 100,
                          child: Image.asset(TestLists.productsListForTestPopularItems[index].image!),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              TestLists.productsListForTestPopularItems[index].name!,
                              style: context.general.textTheme.titleMedium,
                            ),
                            Text(
                              TestLists.productsListForTestPopularItems[index].desc!,
                              softWrap: true,
                              style: context.general.textTheme.bodySmall,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: AppColors.primaryColor,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text('\$${TestLists.productsListForTestPopularItems[index].price}',
                                        style: context.general.textTheme.bodySmall?.copyWith(
                                          color: Colors.white,
                                        )),
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const CircleAvatar(
                                    radius: 15,
                                    backgroundColor: Colors.black12,
                                    child: Icon(
                                      Icons.add,
                                      size: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}