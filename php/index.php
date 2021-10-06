<?php
require __DIR__ . "/inc/bootstrap.php";
 
$uri = parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH);
$uri_arr = explode( '/', $uri );

// if ((isset($uri[2]) && $uri[2] != 'examination') || !isset($uri[3])) {
//     header("HTTP/1.1 404 Not Found");
//     exit();
// }

require PROJECT_ROOT_PATH . "/Controller/Api/ExaminationController.php";
 
$objFeedController = new ExaminationController();

switch ($uri) {
    case '/examination/get-questions' :
        $objFeedController->getQuestions();
        break;
    default:
    http_response_code(404);
    require __DIR__ . '/views/404.php';
    break;
}

?>