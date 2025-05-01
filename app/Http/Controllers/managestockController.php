<?php
namespace App\Http\Controllers;
// use Illuminate\Http\Request;
use Illuminate\Http\Request;
use App\Models\managestock;

class managestockController extends Controller
{
    //

    public function store(Request $request)
    {

       
        $catlog  = managestock::updateOrCreate(
            ['id' => $request->id], 
            ['user_id' => $request->user_id,
            'new_stock' =>  $request->new_stock,
            'old_stock' =>  $request->old_stock,
            ] 
            
        );
   
        $stock =  managestock::with('Users')->where('id',  $catlog->id)->first();
        return response()->json($catlog);
    }


    public function destory($id)
    {
        
        $catlog  = managestock::find($id)->delete();
        return response()->json("Data Delete Successfully...");
    }
    
    
    
    public function index(Request $request)
    {
        
        $catlog  = managestock::with('Users')->orderBy('id', 'desc')->get();
        return response()->json($catlog);
    }
    
   

}
