const fileUploader = document.getElementById('files');
const feedback = document.getElementById('feedback');
const progress = document.getElementById('progress');

const reader = new FileReader();

fileUploader.addEventListener('change' , (event) =>{
	const files = event.target.files;
	const file =files[0];
	reader.readAsDataURL(file);
	
	reader.addEventListener('progress', (event) =>{
		if(event.loaded && event.total){
			const percent =(event.loaded / event.total)*100;
			progress.value = percent;
			document.getElementById('progress-label').innerHTML = Math.round(percent) + "%";
			
			if(percent === 100){
				let msg = '<span>Dosya başarı ile yüklendi. </span> ';
				feedback.innerHTML =msg; 
			}
		}
	});
});
