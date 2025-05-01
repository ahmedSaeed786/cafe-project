<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\item;
class temporder extends Model
{
    use HasFactory;

    protected $fillable =['order_id','item_qty','total_price','item_id']; 
    public function item()
    {
        return $this->hasOne(item::class,'id','item_id')->with('catlog');
    }
}
