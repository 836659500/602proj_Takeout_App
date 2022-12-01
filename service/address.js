import {R} from '../common/R.class.js'

export async function def (db) {
    var address = {"id":"1",
        "userId":"1",
        "consignee":"Professor Sheehan",
        "phone":"asheehan@bu.edu",
        "sex":"1",
        "provinceCode":null,
        "provinceName":null,
        "cityCode":null,
        "cityName":null,
        "districtCode":null,
        "districtName":null,
        "detail":"Boston University PHO 202",
        "label":"学校",
        "isDefault":1,
        "createTime":"2022-11-26 10:16:45",
        "updateTime":"2022-11-26 10:24:32",
        "createUser":"1",
        "updateUser":"1",
        "isDeleted":0
    }

    return R.success(address)
}


//{"code":1,"msg":null,"data":{"id":"1596523358008651778","userId":"1587677269574836225","consignee":"曹正一","phone":"13853713107","sex":"1","provinceCode":null,"provinceName":null,"cityCode":null,"cityName":null,"districtCode":null,"districtName":null,"detail":"Boston University","label":"学校","isDefault":1,"createTime":"2022-11-26 10:16:45","updateTime":"2022-11-26 10:24:32","createUser":"1587677269574836225","updateUser":"1587677269574836225","isDeleted":0},"map":{}}
