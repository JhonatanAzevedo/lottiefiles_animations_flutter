import 'package:library/library.dart';

import '../../controller/data_controller.dart';
import '../models/pendency/list_pendency_model.dart';

mixin ListPendencieDatasource {
  Future<ListPendencieModel?> getListPendency(String subsidiaryId);
}

class ListPendencieDatasourceImpl implements ListPendencieDatasource {
  final BaseRepository baseRepository;
  String baseRepositoryPricing = "https://dev-services.labpetz.com.br/pricing/v1";

  ListPendencieDatasourceImpl(this.baseRepository);

  @override
  Future<ListPendencieModel> getListPendency(String subsidiaryId) async {
    if (DataPriceController.instace.isApiConection) {
      final url = baseRepositoryPricing + "/pendency/subsidiary/${subsidiaryId}?typeList=PRICING";

      var response = await baseRepository.get(url, '');

      if (response.statusCode == 200) {
        return ListPendencieModel.fromJson(response.result);
      } else {
        throw Exception();
      }
    } else {
      return ListPendencieModel.fromJson(mockJson);
    }
  }
}

Map<String, dynamic> mockJson = {
  "pendencies": [
    {
      "orderId": "000832",
      "ecommerce": "65581147",
      "orderType": "SFS EXPRESSA",
      "time": "16:06:00",
      "date": "2021-11-25",
      "label": {
        "collorButton": "#F15B40",
        "description": "ATRASO 6 DIAS",
        "abbreviatedDescription": "Gerar Tarefa"
      },
      "status": "ATRASO",
      "zeroContact": false,
      "task": "",
      "action": null,
      "orderDate": "2021-11-25",
      "createdDate": "0000-00-00",
      "createdTime": "        ",
      "updateTime": "        ",
      "updateDate": "0000-00-00",
      "requesterAnswer": false,
      "index": 1,
      "taskDescription": ""
    },
    {
      "orderId": "000834",
      "ecommerce": "65581217",
      "orderType": "SFS EXPRESSA",
      "time": "13:18:00",
      "date": "2021-11-26",
      "label": {
        "collorButton": "#F15B40",
        "description": "ATRASO 5 DIAS",
        "abbreviatedDescription": "Gerar Tarefa"
      },
      "status": "ATRASO",
      "zeroContact": false,
      "task": "",
      "action": null,
      "orderDate": "2021-11-26",
      "createdDate": "0000-00-00",
      "createdTime": "        ",
      "updateTime": "        ",
      "updateDate": "0000-00-00",
      "requesterAnswer": false,
      "index": 2,
      "taskDescription": ""
    }
  ],
  "count": 2
};
