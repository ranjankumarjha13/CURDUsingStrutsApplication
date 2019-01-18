/**
 * Created by admin on 06-12-2018.
 */
var Clview=new function()
{
    this.edit=function(name)
    {
        callAJAX.sendRequestAJAX("POST","edit!editDetails.do?name="+name,"dvEditView");
    }
    this.deleteEmp=function(name)
    {
        callAJAX.sendRequestAJAX("POST","delete!deleteDetails.do?name="+name,"dvEditView");
        document.getElementById("tr"+name).style.display="none";
    }
    this.updateEmp=function()
    {
        var submitData = con.formData2QueryString(document.forms["frmAdd"]);
        alert(submitData)
        /*callAJAX.sendRequestAJAX("POST","update!updateDetails.do?name="+name+"&"+submitData,"dvupdate");*/
        callAJAX.sendRequestAJAX("POST","update!updateDetails.do?"+submitData,"dvupdate")
       /* callAJAX.sendRequestAJAX("POST","update!updateDetails.do?"+submitData,"resRegDv");*/
    }

};
