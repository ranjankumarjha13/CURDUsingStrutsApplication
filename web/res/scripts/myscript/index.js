/*
/!**
 * Created by admin on 05-12-2018.
 *!/

var clIndex = new function()
{
  this.register=function()
    {

   var  isvalid=false;
        isvalid=Validation.checkMandatory(document.getElementById('name'),"Name",false);
        isvalid=Validation.checkMandatory(document.getElementById('mobile'),"Mobile",false);
        isvalid=Validation.checkMandatory(document.getElementById('email'),"Email",false);
        isvalid=Validation.checkMandatory(document.getElementById('address'),"Address",false);
        isvalid=Validation.checkMandatory(document.getElementById('zipcode'),"Zipcode",true);

      var buttonid=document.getElementById("buttoncheck").value;
        console.log("Button id is",+buttonid);

      var submitData = con.formData2QueryString(document.forms["frmAdd"]);

        callAJAX.sendRequestAJAX("POST","addForm!register.do?"+submitData,"resRegDv");
    }

};
*/
var clIndex = new function()
{
   this.fetchDetails=function()
   {
       callAJAX.sendRequestAJAX("GET","viewData!viewDetails.do","viewdiv")
   }

};


function inputCheck(obj){
    if(obj.value.length <= 0){
        obj.style.border="1px solid red";
        return false;
    }
    else{
        obj.style.border="1px solid";
        return true;
    }
}

function register(){
    var ret = inputCheck(document.getElementById("name"));
    var ret = inputCheck(document.getElementById("mobile"));
    var ret = inputCheck(document.getElementById("email"));
    var ret = inputCheck(document.getElementById("address"));
    var ret = inputCheck(document.getElementById("zipcode"));
    if(ret){
        var submitData = con.formData2QueryString(document.forms["frmAdd"]);
        alert(submitData)

        callAJAX.sendRequestAJAX("POST","addForm!register.do?"+submitData,"resRegDv");
    }
    else{
        alert("please Fill the rquired field")
    }
    function edit()
    {
        var ret = inputCheck(document.getElementById("name"));
        var ret = inputCheck(document.getElementById("mobile"));
        var ret = inputCheck(document.getElementById("email"));
        var ret = inputCheck(document.getElementById("address"));
        var ret = inputCheck(document.getElementById("zipcode"));
        if(ret){
            var submitData = con.formData2QueryString(document.forms["frmAdd"]);
            alert(submitData)


        }
        else{
            alert("please Fill the rquired field")
        }
    }
}

