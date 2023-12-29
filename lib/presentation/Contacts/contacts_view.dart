import 'package:businessapp/core/app_export.dart';
import 'package:businessapp/presentation/Contacts/controlelr/contact_controller.dart';
import 'package:businessapp/widgets/searchbar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class ContactView extends GetWidget<ContactController> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: MyColors().secondaryColor,
        child: SafeArea(
          child: Scaffold(
            appBar: CustomAppBar(
              title: 'Add suppliers',
              showBackButton: true,
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: ListView(children: [
                SizedBox(height: 13),
                CustomSearchBar(hintText: 'Search'),
                SizedBox(height: 23),
                Container(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 16),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 22,
                          backgroundColor: MyColors().borderGreen,
                          child: Image.asset(
                            ImageConstant.keypad,
                            height: 23,
                          ),
                        ),
                        SizedBox(width: 16),
                        Expanded(
                            child: Text(
                          'Add New Supplier',
                          style: MyText.roboto20B500,
                        )),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(22),
                              border: Border.all(color: HexColor('#C9C9C9'))),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              children: [
                                Text('Add', style: MyText.roboto16P500),
                                SizedBox(width: 12),
                                Icon(Icons.add_circle,
                                    color: MyColors().primaryColor, size: 20),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 22),
                Divider(
                  color: HexColor('#F0F0F0'),
                  height: 5,
                ),
                SizedBox(height: 13),
                Text(
                  'Your contacts on phonebook',
                  style: MyText.roboto14G500,
                ),
                SizedBox(
                    child: ListView.separated(
                  itemCount: 4,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext Context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12.0),
                      child: Container(
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 16),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 22,
                                backgroundColor: MyColors().borderGreen,
                                child: Text(
                                  'A',
                                  style: MyText.roboto14Ww400,
                                ),
                              ),
                              SizedBox(width: 16),
                              Expanded(
                                  child: Text(
                                'Person ${index + 1}',
                                style: MyText.roboto20B500,
                              )),
                              InkWell(
                                onTap: () {
                                  _showBottomSheet(context);
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(22),
                                      border: Border.all(
                                          color: HexColor('#C9C9C9'))),
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Row(
                                      children: [
                                        Text('Add', style: MyText.roboto16P500),
                                        SizedBox(width: 12),
                                        Icon(Icons.add_circle,
                                            color: MyColors().primaryColor,
                                            size: 20),
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return Divider(
                      color: MyColors().grey,
                      indent: 0,
                      endIndent: 0,
                    );
                  },
                )),
                Divider(color: HexColor('#F0F0F0'), height: 5),
                SizedBox(height: 13),
                Text('other contacts', style: MyText.roboto14G500),
                SizedBox(
                    child: ListView.separated(
                  itemCount: 4,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext Context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12.0),
                      child: Container(
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 16),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 22,
                                backgroundColor: MyColors().borderGreen,
                                child: Text(
                                  'A',
                                  style: MyText.roboto14Ww400,
                                ),
                              ),
                              SizedBox(width: 16),
                              Expanded(
                                  child: Text(
                                'Person ${index + 1}',
                                style: MyText.roboto20B500,
                              )),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(22),
                                    border:
                                        Border.all(color: HexColor('#C9C9C9'))),
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Row(
                                    children: [
                                      Text('Add', style: MyText.roboto16P500),
                                      SizedBox(width: 12),
                                      Icon(Icons.add_circle,
                                          color: MyColors().primaryColor,
                                          size: 20),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return Divider(
                      color: MyColors().grey,
                      indent: 0,
                      endIndent: 0,
                    );
                  },
                ))
              ]),
            ),
          ),
        ));
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
        isScrollControlled:true,
      builder: (BuildContext context) {
        return FractionallySizedBox(
          heightFactor: 0.8,
          child: SingleChildScrollView(
            child: Container(
              height: 850,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 23),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Add New Supplier',
                      style: MyText.roboto18B600,
                    ),
                    Gap(16),
                    CustomTextField(hintText: 'Enter full name'),
                    Gap(22),
                    PhoneField(),
                    Gap(22),
                    CustomTextField(hintText: 'Enter mobile number'),
                    Gap(22),
                    CustomTextField(hintText: 'Nickname (Optional)'),
                    Gap(22),
                    CustomTextField(hintText: 'Commodity Name'),
                    Gap(20),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Location',
                            style: MyText.roboto18B600,
                          ),
                        ),
                        Icon(Icons.location_on_rounded,color: Colors.grey,size:15,),
                        Gap(7),
                        Text('Select Location',style: MyText.roboto14Pw500,),
                      ],
                    ),
                    Gap(20),
                    Row(
                      children: [
                        SvgPicture.asset(ImageConstant.close),
                        Gap(9),
                        Text('Lucknow, Uttar Pradesh',style: MyText.roboto16G400,),
                      ],
                    ),
                    Gap(93),
                    PrimaryButton(onTap: (){},
                      text: 'Add new supplier',
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
class PhoneField extends StatelessWidget {
  const PhoneField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: IntlPhoneField(
        ///
        invalidNumberMessage: '',
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          filled: true,
          isDense: true,
          fillColor: Colors.transparent,
          counterText: '',
          //contentPadding: widget.isPasswordField==null? EdgeInsets.all(5):widget.isPasswordField? EdgeInsets.fromLTRB(5,5,5,5):EdgeInsets.all(5),
          contentPadding: const EdgeInsets.all(12),
          hintText: 'XXX-XXX-1234',
          hintStyle: TextStyle(color: HexColor('#D9D9D9'), fontSize: 16),
          alignLabelWithHint: true,
          focusedBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(5)),
            borderSide: BorderSide(color: Colors.grey.shade100, width: 2),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              color: Colors.grey.shade200,
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(5)),
            borderSide: BorderSide(
              color: Colors.transparent,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(5)),
            borderSide: BorderSide(
              color: Colors.transparent,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(5)),
            borderSide: BorderSide(
              color: Colors.grey.shade100,
            ),
          ),
        ),
        initialCountryCode: 'IN',
        onChanged: (phone) {
          print(phone.completeNumber);
        },
        validator: (value) {
          if (value == null) {
            return '';
          } else {
            return null;
          }
        },
      ),
    );
  }
}
