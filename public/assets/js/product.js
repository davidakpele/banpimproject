$(document).ready(function() {
    $('#add_product').submit(function (event) {
        // Prevent the form from submitting
        event.preventDefault();
        
        // Clear any previous errors
        $('.error').remove();

        // Variables to track validation
        let isValid = true;

        // Validate each field
        if ($('.product_name').val().trim() === '') {
            isValid = false;
            $('.product_name').after('<span class="error">This field is required</span>');
        }
        if ($('.product_title').val().trim() === '') {
            isValid = false;
            $('.product_title').after('<span class="error">This field is required</span>');
        }
        if ($('.product_description').val().trim() === '') {
            isValid = false;
            $('.product_description').after('<span class="error">This field is required</span>');
        }
        if ($('.product_category').val().trim() === '') {
            isValid = false;
            $('.product_category').after('<span class="error">This field is required</span>');
        }
        if ($('.product_tag').val().trim() === '') {
            isValid = false;
            $('.product_tag').after('<span class="error">This field is required</span>');
        }
        if ($('.product_size').val().trim() === '') {
            isValid = false;
            $('.product_size').after('<span class="error">This field is required</span>');
        }
        if ($('.product_weight').val().trim() === '') {
            isValid = false;
            $('.product_weight').after('<span class="error">This field is required</span>');
        }
        if ($('.product_sku_id').val().trim() === '') {
            isValid = false;
            $('.product_sku_id').after('<span class="error">This field is required</span>');
        }
        if ($('.product_color').val().trim() === '') {
            isValid = false;
            $('.product_color').after('<span class="error">This field is required</span>');
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
                    $('#add_product')[0].reset();
                    $('.success').show().html('New product successfully added.!');
                },
                error: function(response) {
                    // Handle any errors
                   $('.error-ico').show().html('An error occurred while submitting the form.');
                }
            });
        }
    });
});
