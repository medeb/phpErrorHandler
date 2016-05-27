<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTagsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {   
       Schema::create('articles',function(Blueprint $table){
        $table->increments('id');
        $table->string('Title');
        $table->text('What\'s your story');
        $table->timestamps();

        
       });
       Schema::create('tags', function (Blueprint $table) {
            $table->increments('id');
            $table->string('tagsName');
            
            $table->timestamps();
        });
        Schema::create('articletags',function (Blueprint $table){
            $table->integer ('articles_id')->unsigned()->index();
             $table->foreign('articles_id')->references('id')->on('articles')->onDelete('cascade')->onUpdate('cascade');
            $table->integer('tag_id')->unsigned()->index();
            $table->foreign('tag_id')->references('id')->on('tags')->onDelete('cascade')->onUpdate('cascade');
            $table->timestamps();
        });
        Schema::create('smsdb',function(Blueprint $table){
        $table->increments('Id');
        $table->integer ('Mobile No');
        $table->string('Text');
        $table->timestamps();
       
       }); 
    }
    

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {    
        Schema::drop('tags');
        Schema::drop('articles');
        Schema::drop('articletags');
        Schema::drop('smsdb');
    }
}
