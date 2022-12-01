export class User {

    constructor(_id, _name, _phone, _code, _sex, _idNumber, _status) {
        this.id = _id;
        this.name = _name;
        this.phone = _phone;
        this.code = _code;
        this.sex = _sex;
        this.idNumber = _idNumber;
        this.status = _status;
    }

    toJson() {
        return {
            'id': this.id,
            'name': this.name, 
            'phone': this.phone, 
            'code': this.code, 
            'sex': this.sex,
            'idNumber': this.idNumber,
            'status': this.status
        }

    }
}
