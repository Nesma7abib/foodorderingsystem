@extends('base_layout._layout')

@section('body')
    <div class="row">

        <div class="col-md-11">
            <div class="card">
                <div class="card-header">
                    <h3>{{ __('Show Craftsman') }}</h3>
                    <hr>
                </div>
                <div class="card-body">
                    <div class="form-group container-image-profile text-center" style="width: 140px;">
                        <img src="{{asset($craftsman->image)}}" class="card-img-top" alt="...">
                    </div>
                    <br>
                    <div class="form-group">
                        <label for="firstName">{{ __('firstName') }} </label>
                        <input type="text" class="form-control" name="firstName" value="{{ $craftsman->firstName }}">
                    </div>
                    <div class="form-group">
                        <label for="lastName">{{ __('lastName') }} </label>
                        <input type="text" class="form-control" name="lastName" value="{{ $craftsman->lastName }}">
                    </div>
                    <div class="form-group">
                        <label for="username">{{ __('username') }} </label>
                        <input type="text" class="form-control" name="username" value="{{ $craftsman->username }}">
                    </div>
                    <div class="form-group">
                        <label for="email">{{ __('email') }} </label>
                        <input type="email" class="form-control" name="email" value="{{ $craftsman->email }}">
                    </div>
                    <div class="form-group">
                        <label for="mobile">{{ __('mobile') }} </label>
                        <input type="mobile" class="form-control" name="mobile" value="{{ $craftsman->mobile }}">
                    </div>
                    <div class="form-group">
                        <label for="address">{{ __('address') }} </label>
                        <input type="address" class="form-control" name="address" value="{{ $craftsman->address }}">
                    </div>

                    <div class="form-group">
                        <a data-toggle="modal" class="btn btn-lg" id="smallButton"
                            data-target="#smallModal"
                            data-attr="{{ route('craftsman.delete', $craftsman->id) }}"
                            title="{{ __('Delete Craftsman')}}">
                            {{ __('Delete Craftsman')}} <i class="fa fa-trash text-danger fa-lg"></i>
                        </a>
                    </div>

                    <div class="form-action text-left">
                        <a href="{{ route('admin.craftsman.products', $craftsman->id) }}" type="reset" name="products"
                            class="btn btn-primary">{{ __('Show craftsman Products') }}</a>
                    </div>
                    <div class="form-action text-center">
                        <a href="{{ route('craftsmen.index') }}" type="reset" name="cancel"
                            class="btn btn-default">{{ __('Cancel') }}</a>
                    </div>
                </div>

            </div>
            <br>
            <br>
        </div>
    </div>

<div class="modal fade" id="smallModal" tabindex="-1" role="dialog" aria-labelledby="smallModalLabel"
    aria-hidden="true">
    <div class="modal-dialog modal-sm" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body" id="smallBody">
                <div>
                    <!-- the result to be displayed apply here -->
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
@section('script')
<script>
    $(document).on('click', '#smallButton', function(event) {
        event.preventDefault();
        let href = $(this).attr('data-attr');
        $.ajax({
            url: href,
            beforeSend: function() {
                $('#loader').show();
            },
            // return the result
            success: function(result) {
                $('#smallModal').modal("show");
                $('#smallBody').html(result).show();
            },
            complete: function() {
                $('#loader').hide();
            },
            error: function(jqXHR, testStatus, error) {
                console.log(error);
                alert("Page " + href + " cannot open. Error:" + error);
                $('#loader').hide();
            },
            timeout: 8000
        })
    });
</script>
@endsection
