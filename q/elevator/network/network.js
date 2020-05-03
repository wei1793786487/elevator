const url = "http://api.wukaka.com/"


//登录
function login(data) {
    return request({
        url: url + "login",
        method: 'post',
        data: data
    })
}

//查看是否过期
function life() {
    return request({
        url: url + "isLife",
    })
}


//获取用户上次登录信息
function get_user_info(username) {
    return request({
        url: url + "user/" + username + ""
    })
}

//查看用户是不存在
function check_user(username){
    return request({
        url: url + "user/isHave",
        data: {username},
    })
}
 
//添加用户
function add_user(data){
    return request({
        url: url + "user",
        method:"post",
        data: data,
    })
}
//退出登录
function logout(){
    return request({
        url: url + "logout",
    })
}

//改变用户状态
function chance_user(data){
    return request({
        url: url + "user",
        method:"put",
        data: data,
    })
} 
//修改密码
function chance_psd(new_psd,old_psd){
    return request({
        url: url + "user/password",
        method:"put",
        data: {
            new_password: new_psd,
            old_password: old_psd 
        }
    })
}
//删除日志
function delete_log(ids){
    return request({
        url: url + "log",
        method:"delete",
        data:  {
            ids
        },
    }) 
}

//添加电梯
function add_elevator(data){
    return request({
        url: url + "elevator",
        method:"post",
        data:  data
    }) 
}
function chance_elevator(data){
    return request({
        url: url + "elevator",
        method:"put",
        data:  data
    }) 
}

function delete_elevator(ids){
    return request({
        url: url + "elevator",
        method:"delete",
        data:  {
            ids
        },
    }) 
}

//添加电梯
function add_fault(data){
    return request({
        url: url + "fault",
        method:"post",
        data:  data
    }) 
}



//添加提交修复
function chance_fault_r(data){
    return request({
        url: url + "fault",
        method:"put",
        data: {
            id:data.id,
            repair:data.repair
        }
    }) 
}

//添加是否修复
function chance_fault_s(data){
    return request({
        url: url + "fault",
        method:"put",
        data: {
            id:data.id,
            submit:data.submit
        }
    }) 
}



function delete_fault(ids){
    return request({
        url: url + "fault",
        method:"delete",
        data:  {
            ids
        },
    }) 
}


//添加零件
function add_part(data){
    return request({
        url: url + "part",
        method:"post",
        data:  data
    }) 
}

function delete_part(ids){
    return request({
        url: url + "part",
        method:"delete",
        data:  {
            ids
        },
    }) 
}

function delete_record(ids){
    return request({
        url: url + "record",
        method:"delete",
        data:  {
            ids
        },
    }) 
}

function chance_record(data){
    return request({
        url: url + "record",
        method:"put",
        data:  data
    }) 
}

function chance_part(data){
    return request({
        url: url + "part",
        method:"put",
        data:  data
    }) 
}


//查看需要维修的数量
function find_elevator(){
    return request({
        url: url + "elevator/number",
        method:"get",
    }) 
}

//根据id查询
function find_fault_id(id){
    return request({
        url: url + "fault/"+id,
    }) 
}

//根据id查询
function find_record_id(id){
    return request({
        url: url + "record/"+id,
    }) 
}



function find_common(){
    return request({
        url: url + "/record/common"
    }) 
}



function add_maintenance(data){
    return request({
        url: url + "maintenanceService",
        method:"post",
        data:  data

    }) 
}


//查看需要维修的数量
function add_record(data){
    return request({
        url: url + "record",
        method:"post",
        data:  data
    }) 
}

function find_elevator_id(id){
    return request({
        url: url + "elevator/"+id,
    }) 
}