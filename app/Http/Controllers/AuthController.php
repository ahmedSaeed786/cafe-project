<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use App\Models\model_has_permission;
use App\Models\role_has_permission;
use App\Models\User;

// 
class AuthController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth:api', ['except' => ['login','register']]);
    }
    
                public function validateToken()
            {
                 $user = auth()->user();

    // do something with the user
            if(!$user) {
                return response()->json([
                    'message' => 'Check Bearer',
                    'data' => $user,
                ]);
            }
            else{
                 return response()->json([
                    'message' => 'ok',
                    'data' => $user,
                ]);
            }
                            
            //     $user = Auth::guard('api')->user();
      
            //     if($user) {
            //         // Token is valid, return the user data
            //         return response()->json([
            //             'status' => 'success',
            //             'user' => $user
            //         ]);
            //     } else {
            //         // Token is invalid, return an error message
            //         return response()->json([
            //             'status' => 'error',
            //             'message' => 'Invalid token'
            //         ],401);
            // }
            }

    public function login(Request $request)
    {
        $request->validate([
            'email' => 'required|string|email',
            'password' => 'required|string',
        ]);
        $credentials = $request->only('email', 'password');

        $token = Auth::attempt($credentials);
        if (!$token) {
            return response()->json([
                'status' => 'error',
                'message' => 'Unauthorized',
            ], 401);
        }

        $user = Auth::user();
        
        // if (auth()->user()->hasRole('Admin')) {
        
            return response()->json([
                'status' => 'success',
                'user' => $user,
              
                'authorisation' => [
                
                    'token' => $token,
                    'type' => 'bearer',
                    'expires_in' => auth()->factory()->getTTL()
                ]
            ]);
            
            
        // } else {
        //     return response()->json([
        //         'status' => 'success',
        //         'user' => $user,
         
        //         'authorisation' => [
        //             'token' => $token,
        //             'type' => 'bearer',
        //         ]
        //     ]); 
        // }
       








    
    }










    public function register(Request $request){
        // return $request->all();
    //     if(isset($request->image)){
    //     $imageBase64 = $request->input('image');
    // $imageName = uniqid() . '.png'; // generate a unique filename
    // $imagePath = public_path('image/' . $imageName);

    // $imageData = base64_decode(preg_replace('#^data:image/\w+;base64,#i', '', $imageBase64));
    // file_put_contents($imagePath, $imageData);   
    //     }
        
     if ($request->has('password')) {
    $user = User::updateOrCreate(
        ['email' => $request->email],
        [
            'name' => $request->name,
            'email' => $request->email,
            'role' => $request->role,
            'phone' => $request->phone,
            'password' => Hash::make($request->password),
        ]
    );
} else {
    $user = User::updateOrCreate(
        ['email' => $request->email],
        [
            'name' => $request->name,
            'email' => $request->email,
            'role' => $request->role,
            'phone' => $request->phone,
        ]
    );
}
      
    //          $roleId = $request->role;
    //         $role = Role::find($roleId);
    //     // 
    //     // 
        
    //         if ($role) {
    //             $user->syncRoles([$role->name]);
    //         }
    //         if(isset($user->id)){
    //             model_has_permission::where('model_id',$user->id)->delete();
    //         }
    //         $permissionIds = $request->permissions;
    //         $permissions = Permission::whereIn('id', $permissionIds)->get();
    //         $user = User::find($user->id);
    //         $permissionDelete = Permission::whereIn('id', $permissionIds)->get();
    //       $dat = $user->revokePermissionTo($permissionDelete);
    //   $permissions = Permission::whereIn('id', $request->permissions)->get();
    //     foreach ($permissions as $permission) {
    //         $user->givePermissionTo($permission);
    //     }
        return $user;

        
    }
    
    
    
    
    
    public function logout()
    {
        Auth::logout();
        return response()->json([
            'status' => 'success',
            'message' => 'Successfully logout',
        ]);
    }
    
    
    
    
    public function forgotpassword(Request $request)
    {
        	$Update =	User::where('email',$request->email)->update([
                    	'password' => Hash::make($request->password),
                    	]);
                    	
                    	
                    	return $Update;
        
    }
    
    
        public function updateUser(Request $request)
            {
                	$Update =	User::where('id',$request->id)->update([
                    	'password' => Hash::make($request->password),
                    	]);
                    	return $Update;
            }
  
    public function destory($id)
    {
        $user = User::find($id)->delete();
        return response()->json($user);

    }
      public function index(Request $request)
    {
        
        $user  = User::orderBy('id', 'desc')->get();
        return response()->json($user);
    }

}