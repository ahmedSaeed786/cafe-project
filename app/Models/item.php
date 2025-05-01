<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\catlog;
class item extends Model
{
    use HasFactory;

    protected $fillable =['name','price','image','status','stock','catlog_id','manage_stock'];

    public function catlog()
    {
        return $this->hasOne(catlog::class,'id','catlog_id');
    }
}
