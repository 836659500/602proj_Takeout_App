export class shoppingCart {

    constructor(_id, _name, _image, _user_id, _dish_id, _setmeal_id, _dish_flavor, _number, _amount, _create_time) {
        this.id = _id;
        this.name = _name;
        this.image = _image;
        this.user_id = _user_id;
        this.dish_id = _dish_id;
        this.setmeal_id = _setmeal_id;
        this.dish_flavor = _dish_flavor;
        this.number = _number;
        this.amount = _amount;
        this.create_time = _create_time;
    }

    toJson() {
        return {
            'id': this.id,
            'name': this.name, 
            'image': this.image, 
            'user_id': this.user_id, 
            'dish_id': this.dish_id,
            'setmeal_id': this.setmeal_id,
            'dish_flavor': this.dish_flavor,
            'number': this.number,
            'amount': this.amount,
            'create_time': this.create_time
        }

    }
}
