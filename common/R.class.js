export class R {

    constructor(_code, _msg, _data, _map) {
        this.code = _code;
        this.msg = _msg;
        this.data = _data;
        this.map = _map;
    }

    toJson() {
        return {
            'code': this.code,
            'msg': this.msg,
            'data': this.data,
            'map': this.map
        }
    }

    static success (object) {
        var r = new R(null, null, null, null);
        r.data = object;
        r.code = 1;
        return r.toJson();
    }

    static error(msg) {
        var r = new R(null, null, null, null);
        r.msg = msg;
        r.code = 0;
        return r.toJson();
    }

    add(key, value) {
        this.map.put(key, value);
        return this;
    }

}