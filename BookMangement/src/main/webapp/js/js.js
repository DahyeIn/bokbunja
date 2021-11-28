function check() {
		var d = document.dae;
		var rentable = d.bookrentable.value;
		var rvalue=/^[0]*$/;
		if(rvalue.test(rentable))
			{
			alert("오류");
			return false;
			}
			else 
			{
				return true;
			}
	    d.submit();
	}