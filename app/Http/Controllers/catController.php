<?php
namespace App\Http\Controllers;
// use Illuminate\Http\Request;
use Illuminate\Http\Request;
use App\Models\catlog;
use App\Models\item;


class catController extends Controller
{
    //

    public function store(Request $request)
    {

       
        $catlog  = catlog::updateOrCreate(
            ['name' => $request->name], 
            ['name' => $request->name,
            'status' => '1',
            'icon' => $request->icon] 
            
        );
   
        return response()->json($catlog);
    }


    public function destory(Request $request)
    {
        
        $catlog  = catlog::find($request->id)->delete();
        return response()->json($catlog);
    }
    public function index(Request $request)
    {
        
        $catlog  = catlog::where('status',1)->get();
        return response()->json($catlog);
    }
    
    public function id(Request $request)
    {
        $catlogs = Catlog::where('status', 1)->get();

$items = Item::where('status', 1)
             ->orderBy('id', 'desc')
             ->get()
             ->groupBy('catlog_id');

$result = [];

foreach ($catlogs as $catlog) {
    $result[$catlog->name] = $items[$catlog->id] ?? [];
}
// $result['All'] = $items->flatten()->all();
$result['All'] = $items->sortByDesc('catlog_id')->flatten()->all();
return $result;

        
        
        
        
    //     if($request->id == 20){
    //     $catlog  = item::where('status',1)->with('catlog')->orderBy('id', 'desc')->get();
    //     return response()->json($catlog);
    // }
    // else{  $catlog  = item::where('catlog_id',$request->id)->with('catlog')->where('status',1)->orderBy('id', 'desc')->get();
    //     return response()->json($catlog);
        
    // }
        
    }

}
