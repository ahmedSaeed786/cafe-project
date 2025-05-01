<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\item;
use App\Models\catlog;
class itemController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        
        $catlog  = item::where('status',1)->with('catlog')->orderBy('id', 'desc')->get();
        return response()->json($catlog);
    }

    /**
     * Show the form for creating a new resource.
     */
 
    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {

     
        $item  = item::updateOrCreate(
            ['id' => $request->id], 
            ['name' => $request->name,
            'price' => $request->price,
            'status' => 1,
            'image' => $request->image,
            'manage_stock' => $request->manage_stock,
            'stock' => $request->stock,
            'catlog_id' => $request->catlog_id
            ] 
        );
         $items = item::where('id',$item->id)->with('catlog')->first();
         return response()->json($items);
        
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
       $a =  item::where('id',$id)->update([
            'status' => 2
        ]);
         return response()->json("Delete Successfully..");
     
    }
}
