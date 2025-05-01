<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\temporder;
use App\Models\item;
use App\Models\order;
class listorder extends Model
{
    use HasFactory;

    protected $fillable =["qty","item_id","price","order_id"];
    
    public function item()
    {
        return $this->hasOne(item::class,'id','item_id');
    }
    public function order()
    {
        return $this->hasOne(order::class,'id','order_id');
    }
    
}
