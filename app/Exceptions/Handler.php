<?php

namespace App\Exceptions;

use Exception;
use Illuminate\Auth\Access\AuthorizationException;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use Symfony\Component\HttpKernel\Exception\HttpException;
use Illuminate\Foundation\Validation\ValidationException;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;
use Illuminate\Foundation\Exceptions\Handler as ExceptionHandler;
use Illuminate\Support\Facades\Mail;
class Handler extends ExceptionHandler
{
    /**
     * A list of the exception types that should not be reported.
     *
     * @var array
     */
    protected $dontReport = [
        AuthorizationException::class,
        HttpException::class,
        ModelNotFoundException::class,
        ValidationException::class,
    ];

    /**
     * Report or log an exception.
     *
     * This is a great spot to send exceptions to Sentry, Bugsnag, etc.
     *
     * @param  \Exception  $e
     * @return void
     */
    public function report(Exception $e)
    {
        return parent::report($e);
    }

    /**
     * Render an exception into an HTTP response.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Exception  $e
     * @return \Illuminate\Http\Response
     */
    public function render($request, Exception $e)
    {   
       
       if($e instanceof CustomException){   
       // return redirect()->to('exception');        
        }else{
     $data=$e->getMessage();
     $file=$e->getFile();
     $sev=$e->getLine();
     //dump($e);
    if($e->getprevious()){
       $pdata=$e->getprevious()->getMessage();
       $pfile=$e->getprevious()->getFile();
       $psev=$e->getprevious()->getLine();

   Mail::queue('mailsecond',['data'=>$data,'file'=>$file,'sev'=>$sev,'pd'=>$pdata,'pf'=>$pfile,'pl'=>$psev], function($Message)
      {   
  
      $Message->to(['dbjtsrkr672@gmail.com'], 'Hi All')->from('deb672353@mailgun.com','debLaravel')->subject('Careful Deb!');
      });

 }
else{

   Mail::queue('mail',['data'=>$data,'file'=>$file,'sev'=>$sev], function($Message)
      {   
  
      $Message->to(['dbjtsrkr672@gmail.com'], 'Hi All')->from('deb672353@mailgun.com','debLaravel')->subject('Careful Deb!');
      });}
    //return redirect('exception');
    
        return parent::render($request, $e);}
    }
}
