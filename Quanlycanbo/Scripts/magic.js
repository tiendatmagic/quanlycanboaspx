$(document).ready(function () {
    $("#ContentPlaceHolder1_GridView1 tr:even").css("backgroundColor", "rgb(253,225,230)");
    $("#ContentPlaceHolder1_GridView2 tr:even").css("backgroundColor", "rgb(253,225,230)");
    $("input").addClass("form-control");
    $("#ContentPlaceHolder1_DetailsView1 > tbody > tr:nth-child(1) > td:nth-child(1)").text("Phòng ban ID");
    $("#ContentPlaceHolder1_DetailsView1 > tbody > tr:nth-child(2) > td:nth-child(1)").text("Tên phòng ban");
});
alert("© 2020 Copyright by Tiendatmagic");