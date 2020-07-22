<?php

namespace App\Http\Controllers;
use App\Http\Requests\FoodballRequest;
use App\Models\Foodball;
use App\Models\Regions;
use App\Models\Districts;
use Illuminate\Http\Request;

class FoodballController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $foodballs = Foodball::latest()->paginate(5);
        return view('foodball.index',compact('foodballs'))
            ->with('i', (request()->input('page', 1) - 1) * 5);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $regions = Regions::all();
        return view('foodball.create', compact('regions'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */

    public function store(FoodballRequest $request)
    {
        $foodball = new Foodball();
        $foodball->distrocts_id     =   $request->distrocts_id;
        $foodball->lacation         =   $request->lacation;
        $foodball->address          =   $request->address;
        $foodball->description      =   $request->description;
        $foodball->phone1           =   $request->phone1;
        $foodball->phone2           =   $request->phone2;
        $foodball->messinger_link   =   $request->messinger_link;
        $foodball->eni              =   $request->eni;
        $foodball->buyi             =   $request->buyi;
        $foodball->working_hours    =   $request->working_hours;
        $foodball->created_at       =   date("Y-m-d");
        if ($request->hasFile('image1')){
            $image1 = $request->file('image1');
            $image1_name = ((int) (microtime(true)))."1".$image1->getClientOriginalName();
            $image1->move(base_path('public\images'), $image1_name);
        }
        $foodball->image1 = $image1_name;
        if ($request->hasFile('image2')){
            $image2 = $request->file('image2');
            $image2_name = ((int) (microtime(true)))."2".$image2->getClientOriginalName();
            $image2->move(base_path('public\images'), $image2_name);
        }
        $foodball->image2 = $image2_name;
        $foodball->save();
        return redirect()->route('foodball.index')->with('success','Yangi Ilova qushildi.');
    }
//    /**
//     * Display the specified resource.
//     *
//     * @param  \App\UserData  $userData
//     * @return \Illuminate\Http\Response
//     */
    public function show($id)
    {
        $foodballs = Foodball::find($id);
        return view('foodball.show',compact('foodballs'));
    }
    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $foodballs = Foodball::find($id);
        return view('foodball.edit',compact('foodballs','id'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {

        $foodball = Foodball::find($id);
        $foodball->distrocts_id     =   $request->distrocts_id;
        $foodball->lacation         =   $request->lacation;
        $foodball->address          =   $request->address;
        $foodball->description      =   $request->description;
        $foodball->phone1           =   $request->phone1;
        $foodball->phone2           =   $request->phone2;
        $foodball->messinger_link   =   $request->messinger_link;
        $foodball->eni              =   $request->eni;
        $foodball->buyi             =   $request->buyi;
        $foodball->working_hours    =   $request->working_hours;
        $foodball->created_at       =   date("Y-m-d");
        if ($request->hasFile('image1')){
            $image1 = $request->file('image1');
            $image1_name = ((int) (microtime(true)))."1".$image1->getClientOriginalName();
            $image1->move(base_path('public\images'), $image1_name);
        }
        $foodball->image1 = $image1_name;
        if ($request->hasFile('image2')){
            $image2 = $request->file('image2');
            $image2_name = ((int) (microtime(true)))."2".$image2->getClientOriginalName();
            $image2->move(base_path('public\images'), $image2_name);
        }
        $foodball->image2 = $image2_name;
        $foodball->save();
        return redirect()->route('foodball.index')->with('success','Yangi Ilova qushildi.');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Foodball::find($id)->delete();

        return redirect()->route('foodball.index')
            ->with('success','User deleted successfully');
    }



    public function lists_one($id){
        $branches = Districts::where('regions_id', $id)->get();
        return json_encode($branches);
    }
}
