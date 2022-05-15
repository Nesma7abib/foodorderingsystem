<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Auth;

class Buyer
{
    public function handle($request, Closure $next)
    {
        $role = Auth::check() ? Auth::user()->role->name : "";
        if ($role === "Buyer")
            return $next($request);
        else
            return redirect()->back()->with('error', 'You are not allowed to perform this action with craftsman account, create buyer account to bid on auctions and order products');
    }
}
