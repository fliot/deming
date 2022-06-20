@extends("layout")

@section("content")
<div class="p-3">
    <div data-role="panel" data-title-caption="Modifier un domaine" data-collapsible="true" data-title-icon="<span class='mif-chart-line'></span>">
	@if (count($errors))
	<div class= “form-group”>
		<div class= “alert alert-danger”>
			<ul>
			@foreach ($errors->all() as $error)
				<li>{{ $error }}</li>
			@endforeach
			</ul>
		</div>
	</div>
	@endif

	<form method="POST" action="/domains/{{ $domain->id }}">
	@method("PATCH")
	@csrf
		<div class="grid">
	    	<div class="row">
	    		<div class="cell-1">
		    		<strong>Title</strong>
		    	</div>
				<div class="cell-5">
					<input type="text" class="input {{ $errors->has('title') ? 'is-danger' : ''}}" name="title" value="{{ $errors->has('title') ?  old('title') : $domain->title }}" size='5'>
				</div>
			</div>
	    	<div class="row">
	    		<div class="cell-1">
		    		<strong>Desription</strong>
		    	</div>
				<div class="cell-5">
					<input type="text" class="input {{ $errors->has('title') ? 'is-danger' : ''}}" name="description" value="{{ $errors->has('description') ?  old('description') : $domain->description }}" size='5'>
				</div>
			</div>

			<div class="row">
	    		<div class="cell-5">
					<button type="submit" class="button success">Sauver</button>
					</form>

					<form action="/domains/{{ $domain->id }}" method="post">
			        	{{ method_field('delete') }}
			        	@csrf
			            <button class="button alert" type="submit">Supprimer</button>
			        </form>
					
					<form action="/domains/{{ $domain->id }}">
						<button type="submit" class="button">
							<span class="mif-cancel"></span> Annuler
						</button>
					</form>
				</div>
			</div>

	</div>
</div>
@endsection



