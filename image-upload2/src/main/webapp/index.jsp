<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css">
 <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
 
</head>
<body>
   <div class="container">
    <form action="upload" enctype="multipart/form-data" method="post" id="form">
		<input id="files" type="file" name="file" accept="image/png, image/jpeg" multiple hidden="true">
		<label for="files">
		<i class='bx bx-image-add'></i>
		<p> Fotoğraf Seçmek İçin Tıklayın</p>
		</label>
	</form>
	<div class="progress-bar" id='progressBar' >
      <div class="progress" id='bar' >
      </div>
    </div>
	<div class="debug-area" id='debug'></div>
     <button  id="uploadButton" form="form" type="submit">Yükle</button>
   </div>
	<script type="text/javascript" src="progress.js"></script>
</body>
</html>



