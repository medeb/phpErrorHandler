{!! Form::open(array('url'=>'findTag')) !!}
<br>                  
{!! Form::text('tags','',array('class'=>'formtext','id'=>'tags',"placeholder"=>'Tags'))!!}
{!! Form::submit('Search') !!}

{!! Form::close() !!}
