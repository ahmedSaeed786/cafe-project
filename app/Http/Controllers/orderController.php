<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\order;
use App\Models\item;
use App\Models\listorder;
use App\Models\temporder;

class orderController extends Controller
{
    /**
     * Display a listing of the resource.
     */
      public function index(Request $request)
    {
        
        $catlog  = order::orderBy('id', 'desc')->get();
        return response()->json($catlog);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function totalamount(Request $request)
    {
        $paid = order::where('id',$request->order_type)->get();
        $paids = order::where('id',$request->order_type)->count();
        $technologenesis = temporder::where('id',$request->order_id)->get();
        $paid = temporder::where('id',$request->order_id)->get();
        $paid = temporder::where('id',$request->order_id)->get();
        $paid = temporder::where('id',$request->order_id)->get();
        
        $data []=[
            "paid" =>$paid,
            "count" =>$paids,
            ]; 
            
            return $data;
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        
        
      
        
        $order = order::Create(
          
            ['user_id' => $request->user_id,
            'total_price' => $request->total_price,
            'order_type' => $request->order_type,
          ] 
        );
        foreach($request->order as $listorder){
          $item = item::where('id',$listorder['item_id'])->where('manage_stock',1)->first();
            if($item){
                           $data =  item::where('id',$listorder['item_id'])->update([
            'stock' => $item->stock - $listorder['qty']
         ]);
         
            }
            
         
            
            
        $ordersq = listorder::Create(
            [ 
            'order_id' => $order->id,
            'qty' => $listorder['qty'],
            'item_id' => $listorder['item_id'],
            'price' => $listorder['price']
            ] 
        );
            
        }  
     
     $temporder = temporder::where('order_id',$request->order_type)->delete();
        
          return response()->json("Thank you for your order... ");
         

    }
    
    //Today sale
    
    public function todaySale(Request $request)
    
    {
        $date = $request->input('date');
        $orders = order::where('order_type', '!=', 1)->whereDate('created_at', $date)->count();
        $orderAmount = order::where('order_type', '!=', 1)->whereDate('created_at', $date)->sum('total_price');
        $order = order::where('order_type', 1)->whereDate('created_at', $date)->count();
        $orderPaidTotal = order::where('order_type', 1)->whereDate('created_at', $date)->sum('total_price');
        $unPaidMonthData = order::where('order_type', '!=', 1)->whereMonth('created_at', '=', date('m', strtotime($date)))->count();
        $unPaidMonthDataTotal = order::where('order_type', '!=', 1)->whereMonth('created_at', '=', date('m', strtotime($date)))->sum('total_price');;
        $paidMonthData = order::where('order_type', 1)->whereMonth('created_at', '=', date('m', strtotime($date)))->count();
        $paidMonthDataTotal = order::where('order_type', 1)->whereMonth('created_at', '=', date('m', strtotime($date)))->sum('total_price');;
        $data =[
                // "Today_sale" => $order,
                "Today_Sale" => $orderPaidTotal,
                "Today_Unpaid" => $orderAmount,
                // "Unpaid" => $orders,
                // "Month_of_sale_unpaid" => $unPaidMonthData,
                "This_Month_Unpaid" => $unPaidMonthDataTotal,
                // "Month_of_sale_paid" => $paidMonthData,
                "This_Month_Sale" => $paidMonthDataTotal,
               ];
                return $data;
            
    }
    
    
    
    
       public function orderlist(Request $request)
    {
      $date = $request->input('date');
        $paid = order::whereDate('created_at', $date)->where('order_type', 1)->sum('total_price');
        $paids =  order::withCount('list_items')
             ->whereDate('created_at', $date)->with('users')
             ->where('order_type', 1)
             ->get();
             
            //  return $paids;
            // $paidDetail = listorder::with('item')->whereDate('created_at', $date)->where('order_id', 1)->get();
            $office = order::whereDate('created_at', $date)->where('order_type',2)->sum('total_price');
               $offices =  order::withCount('list_items')
             ->whereDate('created_at', $date)->with('users')
             ->where('order_type', 2)
             ->get();
            $technologenesis = order::whereDate('created_at', $date)->where('order_type',3)->sum('total_price');
               $technologenesises = order::withCount('list_items')
             ->whereDate('created_at', $date)->with('users')
             ->where('order_type', 3)
             ->get();
            $marksman = order::whereDate('created_at', $date)->where('order_type',4)->sum('total_price');
               $marksmans =  order::withCount('list_items')
             ->whereDate('created_at', $date)->with('users')
             ->where('order_type', 4)
             ->get();
           $guest = order::whereDate('created_at', $date)->where('order_type',5)->sum('total_price');
               $guests =  order::withCount('list_items')
             ->whereDate('created_at', $date)->with('users')
             ->where('order_type', 5)
             ->get();
          $gard = order::whereDate('created_at', $date)->where('order_type',6)->sum('total_price');
               $guard =  order::withCount('list_items')
             ->whereDate('created_at', $date)->with('users')
             ->where('order_type', 6)
             ->get();
          $totalrevenue = $paid+$technologenesis+$marksman+ $guest+$gard;
         $data =[
             ["name" => "Paid","amount" => $paid ??0,"details" =>  $paids],
            ["name" => "Office","amount" => $office ??0,"details" => $offices],
            ["name" => "Technologenesis","amount" => $technologenesis ??0,"details" => $technologenesises],
           ["name" => "Marksman","amount" => $marksman ??0 ,"details" => $marksmans],
           ["name" => "Guest","amount" => $guest ??0 ,"detail" => $guest],
            ["name" => "Guards","amount" => $gard ??0, "detail" => $guard],
            //   "total revenue" =>$totalrevenue ??0,
            ]; 
             return $data;
    }
    
    
    
    
    
        public function order(Request $request)
    {
         $order = listorder::updateOrCreate(
            ['id' =>  $request->id], 
            ['qty' => $request->qty,
            'order_id' => $request->order_id,
            'item_id' => $request->item_id,
            'price' => $request->price,] 
        );
         $item = item::where('id',$request->item_id)->first();
       $data =  item::where('id',$request->item_id)->update([
               'stock' => $item->stock - $request->qty
           ]);
        $orders = listorder::where('id',$order->id)->with('item')->first();
     // return $orderData;
        return response()->json($orders);
 }

  
  
  
     //Delete
    public function destroy(Request $request)
    {
        $item  = order::find($request->id)->delete();
        return response()->json($item);
    }
}
