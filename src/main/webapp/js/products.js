const imageInput = document.getElementById('image');
		const imageContainer = document.getElementById('image-container');

		imageInput.addEventListener('change', function() {
			const file = imageInput.files[0];
			const reader = new FileReader();

			reader.addEventListener('load', function() {
				const image = new Image();
				image.src = reader.result;
				image.onload = function() {
					const aspectRatio = image.width / image.height;
					if (aspectRatio > 1) {
						imageContainer.style.width = '30%';
						imageContainer.style.height = '30%';
					} else {
						imageContainer.style.width = '30%';
						imageContainer.style.height = '30%';
					}
					imageContainer.innerHTML = '';
					imageContainer.appendChild(image);
				}
			});

			if (file) {
				reader.readAsDataURL(file);
			}
		});