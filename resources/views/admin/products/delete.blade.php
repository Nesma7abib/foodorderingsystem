{{-- !-- Delete Warning Modal --> --}}
<form action="{{ route('product.destroy', $product->id) }}" method="post">
    <div class="modal-body">
        @csrf
        @method('DELETE')
        <h5 class="text-center">{{ __('Are you sure you want to delete ')}}{{ __($product->title) }} {{ __('with all related bids?')}}</h5>
    </div>
    <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
        <button type="submit" class="btn btn-danger">Yes, Delete Product</button>
    </div>
</form>
