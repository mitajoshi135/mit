<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class UserController extends Controller
{
    public function getUser1(){
        $name = "mit";
        $users = ['mit', 'istar'];
        return view('user1', ["user" => $name, "users" => $users]);
    }
}
