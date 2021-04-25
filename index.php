<?php

{
    
    require 'includes/lb_helper.php';
    $api = new LicenseBoxAPI();
    
    $res = $api->verify_license();
  

define('LARAVEL_START', microtime(true));



require __DIR__.'/source/vendor/autoload.php';



$app = require_once __DIR__.'/source/bootstrap/app.php';



$kernel = $app->make(Illuminate\Contracts\Http\Kernel::class);

$response = $kernel->handle(
    $request = Illuminate\Http\Request::capture()
);

$response->send();

$kernel->terminate($request, $response);

}
