<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    function login(Request $reg)
    {
        $user = User::where(['email'=>$reg->email])->first();
        if(!$user || !Hash::check($reg->password,$user->password))
        {
            return "Username or Password is not matching";
        }
        else
        {
            $reg->session()->put('user',$user);
            return redirect('/');
        }
    }
    function register(Request $req)
    {
       // return $req->input();
       $user = new User;
       $user->name=$req->name;
       $user->email=$req->email;
       $user->password=Hash::make($req->name);
       $user->save();
       return redirect('/login');
    }
}
