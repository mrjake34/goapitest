part of 'home_page.dart';

final class _HomeSpecialOffer extends StatefulWidget {
  const _HomeSpecialOffer();

  @override
  State<_HomeSpecialOffer> createState() => _HomeSpecialOfferState();
}

class _HomeSpecialOfferState extends State<_HomeSpecialOffer> {
  @override
  void initState() {
    context.read<HomeViewModel>().setProductModel();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: Center(
        child: Consumer<HomeViewModel>(builder: (context, value, child) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      LocaleKeys.general_specialOffer.tr(),
                      softWrap: true,
                      overflow: TextOverflow.clip,
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                            color: const Color.fromARGB(255, 36, 88, 114),
                          ),
                    ),
                    Text(
                      value.productModel?.name ?? "",
                      softWrap: true,
                      overflow: TextOverflow.clip,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(LocaleKeys.button_buyNow.tr()),
                            const Icon(Icons.arrow_right_alt),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                  child: Image.network(value.productModel?.image ?? AppUrls.noImageUrl, fit: BoxFit.contain, errorBuilder: 
                    (BuildContext context, Object exception, StackTrace? stackTrace) {
                      return const Center(child: Icon(Icons.error));
                    },
                    loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) return child;
                    return const Center(child: CircularProgressIndicator());
                  
                    },
                  )),
            ],
          );
        }),
      ),
    );
  }
}
