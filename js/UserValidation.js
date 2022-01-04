function userValid() {
    if (document.getElementById('TxtMobile').value == "")
    {
        alert("Mobile cannot be blank");
        document.getElementById('TxtMobile').focus();
        return (false);
    }
    if (document.getElementById('TxtPassword').value == "") {
        alert("Pasword Required");
        document.getElementById('TxtPassword').focus();
        return (false);
    }
    //if (document.getElementById('Txtaddress').value == "") {
    //    alert("Address Required");
    //    document.getElementById('Txtaddress').focus();
    //    return (false);
    //}
    //if (document.getElementById('Txtdeliverypalce').value == "") {
    //    alert("Delivery Address Required");
    //    document.getElementById('Txtdeliverypalce').focus();
    //    return (false);
    //}
   
    return true;
}