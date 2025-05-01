<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\userController;
use App\Http\Controllers\catController;
use App\Http\Controllers\itemController;
use App\Http\Controllers\tempOrderController;
use App\Http\Controllers\orderController;
use App\Http\Controllers\managestockController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/
Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
   
});




Route::post('login',[AuthController::class,'login']);
 Route::post('/forgot_password',[AuthController::class,'forgotpassword'])->withoutMiddleware(['auth:api']);;

Route::middleware(['auth:api'])->group(function () {
 
    
    Route::group(['prefix' => 'user/'], function () { 
Route::post('add',[AuthController::class,'register']);
Route::post('change_password',[AuthController::class,'updateUser']);

Route::get('delete/{id}',[AuthController::class,'destory']);
Route::get('list',[AuthController::class,'index']);
Route::post('logout',[AuthController::class,'logout']);
    });

    Route::post('auth/validate-token',[AuthController::class,'validateToken']);


Route::group(['prefix' => 'stock/'], function () { 
     Route::post('add',[managestockController::class,'store']);
     Route::get('delete/{id}',[managestockController::class,'destory']);
     Route::post('list',[managestockController::class,'index']);
    
    
});



Route::group(['prefix' => 'category/'], function () { 

    Route::post('add',[catController::class,'store']);
    Route::post('delete',[catController::class,'destory']);
    Route::get('list',[catController::class,'index']);
    Route::post('find',[catController::class,'id']);

});

Route::group(['prefix' => 'item/'], function () { 
    Route::post('add',[itemController::class,'store']);
    Route::get('delete/{id}',[itemController::class,'destroy']);
    Route::get('list',[itemController::class,'index']);
});

Route::group(['prefix' => 'tempOrder/'], function () { 
    Route::post('add',[tempOrderController::class,'store']);
    Route::get('delete/{id}',[tempOrderController::class,'destroy']);
     Route::post('list',[tempOrderController::class,'index']);
     Route::post('increment',[tempOrderController::class,'increment']);
     Route::post('decrement',[tempOrderController::class,'decrement']);
});

Route::group(['prefix' => 'order/'], function () { 
    Route::post('add',[orderController::class,'store']);
    Route::post('delete',[orderController::class,'destroy']);
     Route::post('list',[orderController::class,'index']);
     Route::post('final',[orderController::class,'order']);
     Route::post('detail',[orderController::class,'orderlist']);
});
     Route::post('todaySale',[orderController::class,'todaySale']);

});



Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
