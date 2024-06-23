<?php
namespace Http\Request\Exceptions;

final class GetRequestError 
{


    public function display($statusCode, $message, $headlines, $details = ''){
        /**
         * Outputs a pretty JSON error message.
         *
         * @param int $statusCode The HTTP status code.
         * @param string $message The error message.
         * @param string $details Additional details about the error.
         */
        // Set the HTTP response code
        http_response_code($statusCode);

        // Create the error message array
        $error = [
            'status' => 'error',
            "title"=> "Authentication Error",
            'message' => $message,
            'details' => $details,
            "headlines"=> $headlines,
            "code"=> "generic_authentication_error"
        ];
        // Set the Content-Type header to application/json
        header('Content-Type: application/json');

        // Output the pretty-printed JSON error message
        echo json_encode($error, JSON_PRETTY_PRINT);

        // Terminate the script to ensure no further output
        exit();
    }
}
