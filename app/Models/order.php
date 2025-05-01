<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\temporder;
use App\Models\item;
use App\Models\listorder;
use App\Models\User;
class order extends Model
{
    use HasFactory;

    protected $fillable =["total_price","order_type","user_id"];
    public function item()
    {
        return $this->hasMany(item::class,'id','item_id');
    }
    public function temp()
    {
        return $this->hasMany(temporder::class,'id','temp_id');
    }
     public function list_items()
    {
        return $this->hasMany(listorder::class,'order_id','id');
    }
     public function users()
    {
        return $this->hasOne(User::class,'id','user_id');
    }
    
    
}
