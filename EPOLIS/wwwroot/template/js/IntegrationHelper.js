function invokeWebServices(ServicesName, methodName, parameter) {
    debugger;
    var result;
    var dataPost = ''
    if (parameter != null) {
        dataPost = JSON.stringify(parameter);
    }
    //JSON.stringify(parameter);  

    $.ajax({
        cache: false,
        async: false,
        url: '../' + ServicesName + '/' + methodName,
        data: dataPost,
        dataType: "json",
        type: "POST",
        contentType: "application/json; charset=utf-8",
        success: successFunc,
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            debugger
            //w2alert(errorThrown)
        }
    });

    function successFunc(data, status) {
        debugger;
        result = data;


    }


    return result;
}