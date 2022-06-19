@extends("layout")

@section("content")
<div class="p-3">
    <div data-role="panel" data-title-caption="Liste des mesures de sécurité" data-collapsible="true" data-title-icon="<span class='mif-chart-line'></span>">

			<div class="grid">
				<div class="row">
					<div class="cell-1">
			    		<strong>Domaine</strong>
			    	</div>
					<div class="cell-4">
						<select id='domain_id' name="domain_id" size="1" width='10'>
						    <option value="0">-- Choisir un domaine --</option>
							@foreach ($domains as $domain)
						    	<option value="{{ $domain->id }}"
									@if (((int)Session::get("domain"))==$domain->id)		
										selected 
									@endif >
						    		{{ $domain->title }} - {{ $domain->description }}
						    	</option>
						    @endforeach
						</select>
					</div>
					<div class="cell-7" align="right">
						<button class="button primary" onclick="location.href = '/measures/create';">Nouveau</button>
					</div>
				</div>

			<script>
				window.addEventListener('load', function(){
			    var select = document.getElementById('domain_id');

			    select.addEventListener('change', function(){
			        window.location = '/measures?domain=' + this.value;
			    }, false);
			}, false);
			</script>

				<div class="row">
					<div class="cell">

			<table class="table striped row-hover cell-border"
		       data-role="table"
		       data-rows="10"
		       data-show-activity="true"
		       data-rownum="false"
		       data-check="false"
		       data-check-style="1">
			   <thead>
				    <tr>
						<th class="sortable-column sort-asc" width="10%">Domaine</th>
						<th class="sortable-column sort-asc" width="10%">Clause</th>
						<th class="sortable-column sort-asc" width="60%">Nom</th>
						<th class="sortable-column sort-asc" width="10%">Maturité</th>
						<th width="10%">Actif</th>
				    </tr>
			    </thead>
			    <tbody>
			@foreach($measures as $measure)
				<tr>
					<td>
						<a href="/domains/{{$measure->domain_id}}">
							{{ $measure->domain->title }}
						</a>
					</td>
					<td><a href="/measures/{{ $measure->id}}">
						@if (strlen($measure->clause)==0)
							None
						@else
							{{ $measure->clause }}
						@endif
						</a>
					</td>
					<td>{{ $measure->name }}</td>
					<td>
						<select name="maturity" id="maturity" onchange="setMaturity({{ $measure->id }}, this.value);">
							<option value="0" {{ $measure->maturity==0 ? "selected" : "" }}></option>
							<option value="1" {{ $measure->maturity==1 ? "selected" : "" }}>Initial</option>
							<option value="2" {{ $measure->maturity==2 ? "selected" : "" }}>Reproductible</option>
							<option value="3" {{ $measure->maturity==3 ? "selected" : "" }}>Défini</option>
							<option value="4" {{ $measure->maturity==4 ? "selected" : "" }}>Maitrisé</option>
							<option value="5" {{ $measure->maturity==5 ? "selected" : "" }}>Optimisé</option>
						</select>
					</td>
					<td>
						<input type="checkbox" data-role="switch" data-material="true"
							@if ($measure->isActive($measure->id))
								checked 
							@endif
							onclick="activateControl(this,{{ $measure->id }});">
					</td>
				</tr>
			@endforeach
			</tbody>
			</table>
		</div>
	</div>
</div>

<script type="text/javascript">
function setMaturity(id, value) {
  console.log(id + " change, new value = " + value);
  $.ajax({
    type: 'GET',
    url: '{{ url( "/measure/maturity" ) }}'+"?id="+id+"&value="+value,
    success: function (data){
        console.log("Maturity set to "+value+" for measure "+id);
    },
    error: function(e) {
        console.log("Error measure "+id+" not set to maturity value "+value);
        console.log(e);
    }});
}

function activateControl(cb, id) {
  console.log(id + " clicked, new value = " + cb.checked);
  if (cb.checked)
	  $.ajax({
	    type: 'GET',
	    url: '{{ url( "/measure/activate" ) }}'+"?id="+id,
	    success: function (data){
	        console.log("Control "+id+" activated");
	    },
	    error: function(e) {
	        console.log("Error measure "+id+" not activated");
	        console.log(e);
	    }});
	else
	  $.ajax({
	    type: 'GET',
	    url: '{{ url( "/measure/disable" ) }}'+"?id="+id,
	    success: function (data){
	        console.log("Control "+id+" disabled");
	    },
	    error: function(e) {
	        console.log("Error measure "+id+" not disabled");
	        console.log(e);
	    }});
}
</script>
@endsection
