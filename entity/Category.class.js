export class Category {

    constructor(_id, _type, _name, _sort, _create_time, _update_time, _create_user, _update_user) {
        this.id = _id;
        this.type = _type;
        this.name = _name;
        this.sort = _sort;
        this.create_time = _create_time;
        this.update_time = _update_time;
        this.create_user = _create_user;
        this.update_user = _update_user;
    }

    toJson() {
        return {
            'id': this.id,
            'type': this.type, 
            'name': this.name, 
            'sort': this.sort, 
            'create_time': this.create_time,
            'update_time': this.update_time,
            'create_user': this.create_user,
            'update_user': this.update_user
        }

    }
}