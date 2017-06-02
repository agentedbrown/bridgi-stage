<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
<meta name="language" content="en-US">
<meta name="viewport"content="maximum-scale=1.0,width=device-width,initial-scale=1.0">
<title>Rate user profession</title>
</head>
<body>
	<div class="background-wrapper">
		<div class="centered" id="original">
			<div class="form-header">
				<h2>Rate user profession</h2>
			</div>

			<form action='${raw(request.contextPath)}/api/rate/rateUserProfession' method="post" id="update-form" >
				<!--
				<div class="file-upload">
                    <label>File 1</label> <input id="file1" type="file" name="file1" />
                </div>
                <div class="file-upload">
                    <label>File 2</label> <input id="file2" type="file" name="file2" />
                </div>
                -->
                token <input type="text" name="token" value ="gcbxms9fdhy1ucei"/>
                <br/>
                friendId <input type="text" name="friendId" value ="vwg3q2a1471433697254"/>
                <br/>
                professionId <input type="text" name="professionId" value ="5707"/>
                <br/>
                rate <input type="text" name="rate" value ="2"/>
                <br/>
                comment <input type="text" name="comment" value ="this is comment"/>
                <br/>
                <input type="submit" class="buttons" value="Upload" />
			</form>
			<br/>
			<hr>
			</br>
			<form action='${raw(request.contextPath)}/api/rate/uploadFileRateProfession' method="post" id="update-form2" enctype="multipart/form-data">
                <div class="file-upload">
                    <label>File 2</label> <input id="file2" type="file" name="file2" />
                </div>
                token <input type="text" name="token" value ="gcbxms9fdhy1ucei"/>
                <br/>
                rateProfessionId <input type="text" name="rateProfessionId" value="" />
                <br/>
                <input type="submit" class="buttons" value="Upload" />
           </form>
		</div>
		<div id="shareBtn" class="btn btn-success clearfix">Share</div>
		<script>
document.getElementById('shareBtn').onclick = function() {
  FB.ui({
    method: 'share',
    display: 'popup',
    href: 'https://developers.facebook.com/docs/',
  }, function(response){});
}
</script>
	</div>
	<r:layoutResources/>
	<script type="text/javascript">
		window.appContext = "${raw(request.contextPath)}"
	</script>
</body>
</html>
