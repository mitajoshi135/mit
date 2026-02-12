<h1>user 1</h1>
<h1>{{$user}}</h1>
<h1>{{$user[1]}}</h1>
<h1><?php echo $user ?></h1>
<h1>{{rand()}}</h1>

@if($user=='istar')
<h2>this is istar</h2>
@elseif($user=='mit')
<h2>this is mit</h2>
@else
<h2>other</h2>
@endif

<div>
    @for($i=0;$i<=10;$i++)
    <h3>{{$i}}</h3>
    @endfor
</div>

<div>
    @foreach($users as $user)
    <h4>{{$user}}</h4>
    @endforeach
</div>