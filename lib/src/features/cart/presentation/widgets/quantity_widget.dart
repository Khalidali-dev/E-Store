import '../../../../src.dart';

class QuantityWidget extends StatelessWidget {
  const QuantityWidget({
    super.key,
    required this.quantity,
    required this.increment,
    required this.decrement,
    required this.w,
    required this.qf,
    required this.tf,
    required this.gap,
    required this.price,
    this.isCart = false,
    this.isDecrement = false,
  });

  final ValueNotifier<int> quantity;
  final Function() increment, decrement;
  final double w, qf, tf, gap, price;
  final bool? isCart, isDecrement;
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: quantity,
        builder: (context, value, child) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              isCart!
                  ? const SizedBox()
                  : Row(
                      children: [
                        Text(
                          " $price * ${quantity.value} = ${(price * quantity.value).toStringAsFixed(2)} \$ ",
                          style: isCart!
                              ? Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(color: Colors.blueGrey)
                              : Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
              isCart!
                  ? Column(
                      children: [
                        SizedBox(
                          width: w,
                          height: w,
                          child: Card(
                              shape: const StadiumBorder(),
                              color: Colors.purple,
                              child: TextButtonWidget(
                                width: w,
                                height: w,
                                borderRadius: BorderRadius.circular(100),
                                press: increment,
                                child: Text(
                                  "+",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
                                          fontSize: tf, color: Colors.white),
                                ),
                              )),
                        ),
                        Text(
                          quantity.value.toString(),
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(
                                  fontSize: qf, fontWeight: FontWeight.bold),
                        ),
                        if (isDecrement!)
                          SizedBox(
                            width: w,
                            height: w,
                            child: Card(
                                shape: const StadiumBorder(),
                                child: TextButtonWidget(
                                  borderRadius: BorderRadius.circular(100),
                                  press: decrement,
                                  width: w,
                                  height: w,
                                  child: Text(
                                    "-",
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium!
                                        .copyWith(fontSize: tf),
                                  ),
                                )),
                          ),
                      ],
                    )
                  : Row(
                      children: [
                        SizedBox(
                          width: w,
                          height: w,
                          child: Card(
                              shape: const StadiumBorder(),
                              child: TextButtonWidget(
                                borderRadius: BorderRadius.circular(100),
                                press: decrement,
                                width: w,
                                height: w,
                                child: Text(
                                  "-",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(fontSize: tf),
                                ),
                              )),
                        ),
                        width(gap),
                        Text(
                          quantity.value.toString(),
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(fontSize: qf),
                        ),
                        width(gap),
                        SizedBox(
                          width: w,
                          height: w,
                          child: Card(
                              shape: const StadiumBorder(),
                              child: TextButtonWidget(
                                width: w,
                                height: w,
                                borderRadius: BorderRadius.circular(100),
                                press: increment,
                                child: Text(
                                  "+",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(fontSize: tf),
                                ),
                              )),
                        ),
                      ],
                    ),
            ],
          );
        });
  }
}
