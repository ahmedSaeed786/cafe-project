<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Cache;

class CheckToken
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
    
        $token = $request->header('Authorization');
      
        if (!$token) {
            return response()->json(['error' => 'Access Token is missing'], 401);
        }

        //  $token = str_replace('Bearer ', '', $token);
         
 
        // if (!Cache::get($token)) {
        //     return response()->json(['error' => 'Invalid Access Token'], 401);
        // } else {
        //     return response()->json(['error' => 'Invalid Access Token'], 401);
        // }

        return $next($request);
    }
}