part of 'home_page.dart';

final class _NewArrivals extends StatelessWidget {
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
                LocaleKeys.general_newArrival.tr(),
                style: context.general.textTheme.titleMedium,
              ),
              TextButton(onPressed: () {}, child: const Text('See All'))
            ],
          ),
        ),
        Consumer<HomeViewModel>(builder: (context, value, child) {
          if (value.productModels == null) {
            return const Center(child: CircularProgressIndicator());
          }
          return SizedBox(
            height: 300,
            width: context.sized.width,
            child: ListView.builder(
              itemCount: value.productModels?.length,
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
                              if (value.productModels?[index].discount != null && value.productModels?[index].discount != 0)
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.black12,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text(
                                      '${value.productModels?[index].discount.toString()}%',
                                      style: const TextStyle(color: Colors.white),
                                    ),
                                  ),
                                )
                              else
                                const SizedBox(),
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
                              child: Image.network(
                                value.productModels?[index].image ?? AppUrls.noImageUrl,
                                fit: BoxFit.contain,
                                errorBuilder: (BuildContext context, Object exception, StackTrace? stackTrace) {
                                  return const Center(child: Icon(Icons.error));
                                },
                                loadingBuilder: (context, child, loadingProgress) {
                                  if (loadingProgress == null) return child;
                                  return const Center(child: CircularProgressIndicator());
                                },
                              )),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                value.productModels?[index].name ?? '',
                                style: context.general.textTheme.titleMedium,
                              ),
                              Text(
                                value.productModels?[index].desc ?? '',
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
                                      child: Text('\$${value.productModels?[index].price.toString() ?? ''}',
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
          );
        }),
      ],
    );
  }
}
