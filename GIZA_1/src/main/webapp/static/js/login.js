//Validate email
 const email = document.getElementById("Email");
 email.addEventListener("click",()=> 
 {debugger; 
 alert("Warning!!!!!")});
 
 function validateForm()
	{
	    if(document.frm.Emailaddress.value=="")
	    {
	      alert("User Name should be left blank");
	      document.frm.Emailaddress.focus();
	      return false;
	    }
	    else if(document.frm.Password.value=="")
	    {
	      alert("Password should be left blank");
	      document.frm.Password.focus();
	      return false;
	    }}