<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\temporder;
use App\Models\item;
use DB;
class tempOrderController extends Controller
{
    /**
     * Display a listing of the resource.
     */
      public function index(Request $request)
    {
        
        $catlogs  = temporder::where('order_id',$request->order_id)->with('item')->orderBy('id', 'desc')->get();
        
 


        return response()->json($catlogs);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function increment(Request $request)
    {
         $temp = temporder::where('order_id', $request->order_id)
                        ->where('item_id', $request->item_id)->first();
                         
         $tempOrder = temporder::where('order_id', $request->order_id)
                        ->where('item_id', $request->item_id)
                        ->update(["item_qty" => $temp->item_qty +1]);
                         return response()->json("Data Add Successfully");
    }
    
    
    public function decrement(Request $request)
    {
       $temp = temporder::where('order_id', $request->order_id)
                        ->where('item_id', $request->item_id)->first();
                       
                        
         $tempOrder = temporder::where('order_id', $request->order_id)
                        ->where('item_id', $request->item_id)
                        ->update(["item_qty" => $temp->item_qty -1]);
                         return response()->json("Data Add Successfully");
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {   
        
        
       $tempOrder = temporder::where('order_id', $request->order_id)
                        ->where('item_id', $request->item_id)
                        ->first();

if ($tempOrder) {
    // If item already exists, update the item_qty
    $tempOrder->item_qty += 1;
    $tempOrder->save();
} else {
    // If item does not exist, create a new record
    $tempOrder = temporder::create([
        'order_id' => $request->order_id,
        'item_qty' => $request->item_qty,
        'total_price' => $request->total_price,
        'item_id' => $request->item_id,
        'total_price' => $request->total_price,
    ]);
}
       
            $tempOrders = temporder::where('id',$tempOrder->id)->with('item')->first();
            return response()->json("Data Add Successfully");
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
        $item  = temporder::find($id)->delete();
        return response()->json($item);
    }
}
