 @foreach($result as $results)
<h2><span style="color:red">{{ $results->Title }}</span></h2>
<p><span style="color:blue">{{ $results->article }}</span></p>
@endforeach