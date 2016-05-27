<?php 
namespace App\Http\Controllers;

use DB;
use Illuminate\Support\Facades\View;
use Illuminate\Http\Request;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Support\Facades\Input;
use Illuminate\Database\Query\Builder;
use Illuminate\Database\Eloquent\Model; 
use Illuminate\Support\Facades\Mail;
use App\tag;
use App\Exceptions\CustomException;
use App\articletag;
use App\article;



class TagController extends Controller{

	public function search(){
		return view('tagview');
	}
	public function find(Request $request){

		$find=$request->input('tags');
		
		$findtag=tag::where('tagsName','=',$find)->get();
    //dump($findtag);
    if($findtag){
        $take=$findtag[0]->id;
        //dump($take);
        $articletagid=DB::table('articletags')->select('articles_id')->where('tag_id','=',$take)->get();
        //dump($articletagid);

       foreach ($articletagid as $a_id) {
        $articletag=$a_id->articles_id;
       // dump($articletag);
         $results[]=article::where('id','=',$articletag)->first();//dump($results);
       return view::make('search')->with('result',$results);
    
}
    else
    {
        echo 'Tag Not Found';
    }
 
public function addTag()
    {
    	return view ('display');
    }

public function add(Input $input){
    	$get=$input::get('addtags');
        $title=$input::get('Title');
        $body=$input::get('body');
        $article=new article;
        $article->Title=$title;
        $article->article=$body;
        $article->save();
    	//$check=tag::where('tagsName','=',$get)->count();
         $value=explode(",",$get);
         //dump($value);

    	foreach ($value as $val) {
    	   $bool=$this->check($val);
    	   if($bool == false){
    	   $tag=new tag;
    	   $tag->tagsName=$val;
    	   $tag->save();
           DB::table('articletags')->insert(['tag_id'=>$tag->id,'articles_id'=>$article->id]);
          
        }
        else{
        	$store=$bool;

          // DB::table('articletags')->insert([]);
           DB::table('articletags')->insert(['tag_id'=>$store,'articles_id'=>$article->id]);
        	           
        }
   		}



    }

    public function check($new){
    	$checkit=tag::where("tagsName",'=',$new)->first();
        
    	//dump($checkit[0]->id);
    //	dump($checkit);
    	if($checkit==NULL){
    	    return false;
          	}
    	else{
      return $checkit->id;

    		}
    	
    }

}
