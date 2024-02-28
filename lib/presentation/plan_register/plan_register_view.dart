// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:tcl/presentation/plan_register/plan_register_controller.dart';

import '../../app/widget/border_container.dart';
import '../../app/widget/button_icon_widget.dart';
import '../../app/widget/gradient_container.dart';
import '../../domain/model/partner_model/partner_model.dart';
import '../../domain/model/pengiriman_model/pengiriman_model.dart';
import '../../domain/model/plan_model/plan_model.dart';
import '../../domain/model/po_model/po_model.dart';
import '../../domain/model/truck_model/truck_list_model.dart';
import '../../domain/model/truck_model/truck_model.dart';
import '../../gen/assets.gen.dart';

class PlanRegisterView extends StatefulWidget {
  const PlanRegisterView({super.key});

  @override
  State<PlanRegisterView> createState() => _PlanRegisterViewState();
}

class _PlanRegisterViewState extends State<PlanRegisterView> {
  PlanRegisterController cplan = Get.put(PlanRegisterController());

  var dateIn = TextEditingController();
  var dateOut = TextEditingController();
  var dateEta = TextEditingController();

  var nopolisi = TextEditingController();
  var nosurat = TextEditingController();
  var driver = TextEditingController();
  var vendor = TextEditingController();

  bool isloading = false;

  @override
  void initState() {
    super.initState();
    loadData();
  }

  List<TruckModel> listtruck = [];
  TruckModel? truckmodel;
  List<PartnerModel> listpartner = [];
  PartnerModel? partnermodel;
  List<PengirimanModel> listpengiriman = [];
  PengirimanModel? pengirimanmodel;
  List<PlanModel> planlist = [];
  PlanModel? planmodel;
  List<PoModel> polist = [];
  PoModel? pomodel;

  loadData() async {
    //cplan.getUserlist();
    listtruck = await cplan.getTrucklist();
    listpartner = await cplan.getPartnerlist();
    listpengiriman = await cplan.getPengirimanlist();
    planlist = await cplan.getPlanlist();
    polist = await cplan.getPolist();
    setState(() {
      listtruck = listtruck;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            children: [
              GradientContainer(
                height: Get.height * 0.45,
                width: Get.width,
                beginAlignment: Alignment.topLeft,
                endAlignment: Alignment.bottomRight,
                child: Column(),
              ),
              const SizedBox(
                height: 200,
              ),
              Expanded(
                child: Assets.image.parlatteBotGrid
                    .image(width: Get.width, fit: BoxFit.fill),
              )
            ],
          ),
          ListView(
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(right: 30.0, left: 30.0, top: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Assets.image.companyIcon.image(height: 100, width: 100),
                    const SizedBox(
                      width: 100,
                    )
                  ],
                ),
              ),
              BorderContainerWidget(
                height: 600,
                width: Get.width * .9,
                color: Colors.white,
                isShadow: true,
                borderColor: Colors.grey.withOpacity(0.3),
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text('Plan Register'.toUpperCase(),
                              style: const TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                          Assets.image.userIcon.image(width: 120, height: 130),
                          if (planlist.isNotEmpty)
                            SizedBox(
                              width: 300,
                              child: DropdownButton(
                                isExpanded: true,
                                hint: const Text('planning'),
                                value: planmodel,
                                icon: const Icon(Icons.keyboard_arrow_down),
                                items: planlist
                                    .map<DropdownMenuItem<PlanModel>>(
                                        (PlanModel items) {
                                  return DropdownMenuItem(
                                    value: items,
                                    child: Text(items.plan),
                                  );
                                }).toList(),
                                onChanged: (PlanModel? newValue) {
                                  setState(() {
                                    planmodel = newValue;
                                    print(newValue);
                                  });
                                },
                              ),
                            ),
                          if (listpartner.isNotEmpty)
                            SizedBox(
                              width: 300,
                              child: DropdownButton(
                                isExpanded: true,
                                hint: const Text('client'),
                                value: partnermodel,
                                icon: const Icon(Icons.keyboard_arrow_down),
                                items: listpartner
                                    .map<DropdownMenuItem<PartnerModel>>(
                                        (PartnerModel items) {
                                  return DropdownMenuItem(
                                    value: items,
                                    child: Text(items.name),
                                  );
                                }).toList(),
                                onChanged: (PartnerModel? newValue) {
                                  setState(() {
                                    partnermodel = newValue;
                                    print(newValue);
                                  });
                                },
                              ),
                            ),
                          if (polist.isNotEmpty)
                            SizedBox(
                              width: 300,
                              child: DropdownButton(
                                isExpanded: true,
                                hint: const Text('PO'),
                                value: pomodel,
                                icon: const Icon(Icons.keyboard_arrow_down),
                                items: polist.map<DropdownMenuItem<PoModel>>(
                                    (PoModel items) {
                                  return DropdownMenuItem(
                                    value: items,
                                    child: Text(items.po_type),
                                  );
                                }).toList(),
                                onChanged: (PoModel? newValue) {
                                  setState(() {
                                    pomodel = newValue;
                                    print(newValue);
                                  });
                                },
                              ),
                            ),
                          if (listtruck.isNotEmpty)
                            SizedBox(
                              width: 300,
                              // height: 80,
                              child: DropdownButton(
                                isExpanded: true,
                                hint: const Text('type truck'),
                                value: truckmodel,
                                icon: const Icon(Icons.keyboard_arrow_down),
                                items: listtruck
                                    .map<DropdownMenuItem<TruckModel>>(
                                        (TruckModel items) {
                                  return DropdownMenuItem(
                                    value: items,
                                    child: Text(items.truck_type),
                                  );
                                }).toList(),
                                onChanged: (TruckModel? newValue) {
                                  setState(() {
                                    truckmodel = newValue;
                                    print(newValue);
                                  });
                                },
                              ),
                            ),
                          if (listpengiriman.isNotEmpty)
                            SizedBox(
                              width: 300,
                              // height: 80,
                              child: DropdownButton(
                                isExpanded: true,
                                hint: const Text('jenis pengiriman'),
                                value: pengirimanmodel,
                                icon: const Icon(Icons.keyboard_arrow_down),
                                items: listpengiriman
                                    .map<DropdownMenuItem<PengirimanModel>>(
                                        (PengirimanModel items) {
                                  return DropdownMenuItem(
                                    value: items,
                                    child: Text(items.pengiriman_type),
                                  );
                                }).toList(),
                                onChanged: (PengirimanModel? newValue) {
                                  setState(() {
                                    pengirimanmodel = newValue;
                                    print(newValue);
                                  });
                                },
                              ),
                            ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(
                                  width: 120,
                                  child: TextField(
                                      controller: dateIn,
                                      decoration: const InputDecoration(
                                          icon: Icon(Icons.calendar_today),
                                          labelText: "Date in"),
                                      readOnly: true,
                                      onChanged: (value) {
                                        setState(() {
                                          dateIn.text = value;
                                        });
                                      },
                                      onTap: () async {
                                        DateTime? pickedDate =
                                            await showDatePicker(
                                                context: context,
                                                initialDate: DateTime.now(),
                                                firstDate: DateTime(2000),
                                                lastDate: DateTime(2101));
                                        print(pickedDate);
                                        if (pickedDate != null) {
                                          print(pickedDate);
                                          String formattedDate =
                                              DateFormat('yyyy-MM-dd')
                                                  .format(pickedDate);
                                          print(formattedDate);

                                          setState(() {
                                            dateIn.text = formattedDate;
                                          });
                                        } else {
                                          print("Date is not selected");
                                        }
                                      })),
                              SizedBox(
                                  width: 120,
                                  child: TextField(
                                      controller: dateOut,
                                      decoration: const InputDecoration(
                                          icon: Icon(Icons.calendar_today),
                                          labelText: "Date out"),
                                      readOnly: true,
                                      onChanged: (value) {
                                        setState(() {
                                          dateOut.text = value;
                                        });
                                      },
                                      onTap: () async {
                                        DateTime? pickedDate =
                                            await showDatePicker(
                                                context: context,
                                                initialDate: DateTime.now(),
                                                firstDate: DateTime(2000),
                                                lastDate: DateTime(2101));
                                        print(pickedDate);
                                        if (pickedDate != null) {
                                          print(pickedDate);
                                          String formattedDate =
                                              DateFormat('yyyy-MM-dd')
                                                  .format(pickedDate);
                                          print(formattedDate);

                                          setState(() {
                                            dateOut.text = formattedDate;
                                          });
                                        } else {
                                          print("Date is not selected");
                                        }
                                      })),
                            ],
                          ),
                          SizedBox(
                              width: 120,
                              child: TextField(
                                  controller: dateEta,
                                  decoration: const InputDecoration(
                                      icon: Icon(Icons.calendar_today),
                                      labelText: "Date ETA"),
                                  readOnly: true,
                                  onChanged: (value) {
                                    setState(() {
                                      dateEta.text = value;
                                    });
                                  },
                                  onTap: () async {
                                    DateTime? pickedDate = await showDatePicker(
                                        context: context,
                                        initialDate: DateTime.now(),
                                        firstDate: DateTime(2000),
                                        lastDate: DateTime(2101));
                                    print(pickedDate);
                                    if (pickedDate != null) {
                                      print(pickedDate);
                                      String formattedDate =
                                          DateFormat('yyyy-MM-dd')
                                              .format(pickedDate);
                                      print(formattedDate);

                                      setState(() {
                                        dateEta.text = formattedDate;
                                      });
                                    } else {
                                      print("Date is not selected");
                                    }
                                  })),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(bottom: 4.0),
                                  child: Text(
                                    'No polisi',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w100,
                                        color: Colors.grey),
                                  ),
                                ),
                                SizedBox(
                                  width: 300,
                                  child: TextField(
                                    controller: nopolisi,
                                    onChanged: (value) {
                                      setState(() {
                                        nopolisi.text = value;
                                      });
                                    },
                                    decoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          width: 1,
                                          color: Colors.black38,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          width: 1,
                                          color: Colors.black38,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(bottom: 4.0),
                                  child: Text(
                                    'No surat jalan',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w100,
                                        color: Colors.grey),
                                  ),
                                ),
                                SizedBox(
                                  width: 300,
                                  child: TextField(
                                    controller: nosurat,
                                    onChanged: (value) {
                                      setState(() {
                                        nosurat.text = value;
                                      });
                                    },
                                    decoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          width: 1,
                                          color: Colors.black38,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          width: 1,
                                          color: Colors.black38,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(bottom: 4.0),
                                  child: Text(
                                    'Driver',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w100,
                                        color: Colors.grey),
                                  ),
                                ),
                                SizedBox(
                                  width: 300,
                                  child: TextField(
                                    controller: driver,
                                    onChanged: (value) {
                                      setState(() {
                                        driver.text = value;
                                      });
                                    },
                                    decoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          width: 1,
                                          color: Colors.black38,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          width: 1,
                                          color: Colors.black38,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(bottom: 4.0),
                                  child: Text(
                                    'Vendor Transformator',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w100,
                                        color: Colors.grey),
                                  ),
                                ),
                                SizedBox(
                                  width: 300,
                                  child: TextField(
                                    controller: vendor,
                                    onChanged: (value) {
                                      setState(() {
                                        vendor.text = value;
                                      });
                                    },
                                    decoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          width: 1,
                                          color: Colors.black38,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          width: 1,
                                          color: Colors.black38,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: 250,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const SizedBox(
                                  width: 100,
                                ),
                                if(isloading == true)
                              const  SizedBox(
                                  width: 100, height: 40,
                                  child: CircularProgressIndicator()),
                                if(isloading == false)
                                ButtonIconWidget(
                                  width: 100,
                                  label: "Kirim",
                                  onpress: () {
                                   
                                    int planning = planmodel!.id;
                                    int partner = partnermodel!.id;
                                    int po = pomodel!.id;
                                    int truck = truckmodel!.id;
                                    int pengiriman = pengirimanmodel!.id;

                                    String planDateIn = dateIn.text;
                                    String planDateOut = dateOut.text;
                                    String planDateEta = dateEta.text;

                                    String nopol = nopolisi.text;
                                    String nosuratjalan = nosurat.text;
                                    String namadriver = driver.text;
                                    String namavendor = vendor.text;

                                    Map data = {
                                      'plan': planning,
                                      'partner': partner,
                                      'po_type': po,
                                      'truck_type': truck,
                                      'pengiriman_type': pengiriman,
                                      'tanggal_in': planDateIn,
                                      'tanggal_out': planDateOut,
                                      'tanggal_eta': planDateEta,
                                      'no_polisi': nopol,
                                      'no_surat_jalan': nosuratjalan,
                                      'driver': namadriver,
                                      'vendor_transporter': namavendor,
                                    };
                                    setState(() {
                                      isloading = true;
                                    });
                                    cplan.sendRegisterplan(data);
                                    setState(() {
                                      isloading = false;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
