<?php

namespace App\Http\Controllers;

use App\Employee;
use Illuminate\Http\Request;
use Auth;

class EmployeeController extends Controller
{      
    public function showAllEmployees(){
        $employees=Employee::all();
        $employee_list=array();
        foreach($employees as $employee){
            $employee_obj=["emp_id"=>$employee->id,"emp_name"=>$employee->emp_name,
            "emp_email"=>$employee->emp_email,"emp_photo"=>$employee->emp_photo,"branch_name"=>$employee->branch->branch_name,"bank_name"=>$employee->branch->bank->bank_name];      

            array_push($employee_list,$employee_obj);
        }
        
        return response()->json($employee_list);
    }

    public function doLogin(Request $request){
        $email=$request->email;
        $pass=$request->password;

        $userdata=array(
            'email'=>$email,
            'password'=>$pass
        );

        if(Auth::attempt($userdata)){
            return response()->json(true);
        }else{
            return response()->json(false);
        }
    }
    
}