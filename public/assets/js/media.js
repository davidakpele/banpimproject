$(document).ready(function() {
    $('#add_media').submit(function (event) {
        // Prevent the form from submitting
        event.preventDefault();
        // Clear any previous errors
        $('.error').remove();

        // Variables to track validation
        let isValid = true;
        const allowedExtensions = ['jpg', 'jpeg', 'png', 'gif', 'mp4', 'avi'];
        const maxFileSize = 5 * 1024 * 1024; // 5 MB
        // Validate each field
        if ($('#media_name').val().trim() === '') {
            isValid = false;
            $('#media_name').after('<span class="error">This field is required</span>');
        }
        if ($('#description').val().trim() === '') {
            isValid = false;
            $('#description').after('<span class="error">This field is required</span>');
        }
        if ($('#category').val().trim() === '') {
            isValid = false;
            $('#category').after('<span class="error">This field is required</span>');
        }
     const fileInput = $('#file');
        const file = fileInput[0].files[0];
        if (!file) {
            isValid = false;
            $('#file').after('<span class="error">This field is required</span>');
        } else {
            const fileName = file.name;
            const fileSize = file.size;
            const fileExtension = fileName.split('.').pop().toLowerCase();

            // Check file extension
            if (!allowedExtensions.includes(fileExtension)) {
                isValid = false;
                $('#file').after('<span class="error">Invalid file type. Allowed types are: ' + allowedExtensions.join(', ') + '</span>');
            }
            // Check file size
            if (fileSize > maxFileSize) {
                isValid = false;
                $('#file').after('<span class="error">File size exceeds 5 MB</span>');
            }
        }

        // Check if form is valid
        if (isValid) {
            // If valid, submit the form
            // Use AJAX to submit the form without refreshing the page
            let formData = new FormData(this);
            $.ajax({
                url: 'create', // Replace with your server script to handle the form submission
                type: 'POST',
                data: formData,
                processData: false,
                contentType: false,
                success: function(response) {
                    $('#add_media')[0].reset();
                    $('.success').show().html('New media successfully added.!');
                    window.location.reload();
                },
                error: function(response) {
                    // Handle any errors
                   $('.error-ico').show().html('An error occurred while submitting the form.');
                }
            });
        }
    });
});
