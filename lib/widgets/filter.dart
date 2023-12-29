
import 'package:businessapp/core/app_export.dart';

class FilterWidget extends StatelessWidget {
  const FilterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 28,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Container(
              decoration: BoxDecoration(
                  color: HexColor('#4D8C30'),
                  borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Text('Yesterday',
                  style: MyText.roboto14Ww400,
                ),
              ),
            ),
          );
          },
      ),
    );
  }
}
