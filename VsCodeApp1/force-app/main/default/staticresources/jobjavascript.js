function jobvalidation(name,manager,jobtype,description,noofposition,lastdateid) {
    console.log("inside hello world");

    var jname = document.getElementById(name).value;
     var jmanager = document.getElementById(manager).value;
     var jjobtype = document.getElementById(jobtype).value;
     var jdescription = document.getElementById(description).value;
     var jnoofpostion = document.getElementById(noofposition).value;
     var jlastdate = document.getElementById(lastdateid).value;

    if(jname == ''){
        console.log("inside jobname alert");
        alert("Job Name is required");
    }else if(jmanager == ''){
        alert("manager contact is required");
    }else if(jjobtype == ''){
        alert("jobtype is required");
    }else if(jdescription == ''){
        alert("description is required");
    }else if(jnoofpostion == ''){
        alert("no of position is required");
    }else if(jlastdate == ''){
        alert("last application date is required");
    }else{
        alert("all fields are inserted successfully");
        save();
    }
}