function candidateValidation(name,salutaion,first,last,full,dob,mail,country,state,application,status,salary,job) {
   console.log("inside hello world");

    var cname = document.getElementById(name).value;
     var csalutaion = document.getElementById(salutaion).value;
     var cfirst = document.getElementById(first).value;
     var clast = document.getElementById(last).value;
     var cfull = document.getElementById(full).value;
     var cdob = document.getElementById(dob).value;
     var cmail = document.getElementById(mail).value;
     var ccountry = document.getElementById(country).value;
     var cstate = document.getElementById(state).value;
     var capplication = document.getElementById(application).value;
	 var cstatus = document.getElementById(status).value;
     var csalary = document.getElementById(salary).value;
     var cjob = document.getElementById(job).value;
    if(cname == ''){
        console.log("inside jobname alert");
        alert("Job Name is required");
    }else if(csalutaion == ''){
        alert("salution is required");
    }else if(cfirst == ''){
        alert("firstname is required");
    }else if(clast == ''){
        alert("lastname is required");
    }else if(cfull == ''){
        alert("fullname is required");
    }else if(cdob == ''){
        alert("date of birth is required");
    }else if(cmail == ''){
        alert("Email is required");
    }else if(ccountry == ''){
        alert("country is required");
    }else if(cstate == ''){
        alert("state is required");
    }else if(capplication == ''){
        alert("application date is required");
    }else if(cstatus == ''){
        alert("status is required");
    }else if(csalary == ''){
        alert("Expected salary is required");
    }else if(cjob == ''){
        alert("jobName is required");
    }else{
        alert("all fields are inserted successfully");
        save();
    }
}