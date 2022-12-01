export class Dish {

    constructor(_id, _name, _category_id, _price, _code, _image, _description, _status, _sort, _create_time, _update_time, _create_user, _update_user, _is_deleted) {
        this.id = _id;
        this.name = _name;
        this.category_id = _category_id;
        this.price = _price;
        this.code = _code;
        this.image = _image;
        this.description = _description;
        this.status = _status;
        this.sort = _sort;
        this.create_time = _create_time;
        this.update_time = _update_time;
        this.create_user = _create_user;
        this.update_user = _update_user;
        this.is_deleted = _is_deleted;
    }

    toJson() {
        return {
            'id': this.id,
            'name': this.name, 
            'category_id': this.category_id, 
            'price': this.price, 
            'code': this.code,
            'image': this.image,
            'description': this.description,
            'status': this.status,
            'sort': this.sort, 
            'create_time': this.create_time, 
            'update_time': this.update_time, 
            'create_user': this.create_user,
            'update_user': this.update_user,
            'is_deleted': this.is_deleted
        }

    }
}