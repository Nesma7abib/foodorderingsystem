<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Auth;

class Craftsman
{
    public function handle($request, Closure $next)
    {
        $role = Auth::check() ? Auth::user()->role->name : "";
        if ($role === "Craftsman")
            return $next($request);
        else
            return redirect()->back()->with('error', 'You are not allowed as a buyer to do this action! Create craftsman account to pressent and control your handmads for sale.');
            
    }
}
