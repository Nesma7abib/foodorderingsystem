@extends('layouts.main_layout')
@section('content')
    <div class="about_us">
        <div class="container">
            <div class="title mt-4">
                <h2>{{ __('Handicrafts Auction Terms And Conditions')}}</h2>
            </div>
            <div class="content_about mt-3">
                <br><br>
                <div class="goal">
                    <h3><b>{{ __('Buyer ')}}</b></h3><br>
                    <i class="fas fa-check fa-1x"></i>
                    <span>{{ __('When you receive the product you ordered; You must confirm that the order is received without problems from your orders page')}}</span><br><br>
                    <i class="fas fa-check "> </i>
                    <span>{{ __('Keep in touch with the product owner to make it easier for him to deliver your product when he orderes.')}}</span><br><br>
                    <i class="fas fa-check "> </i>
                    <span>{{ __('If you didnt reseve your order within 3 hours and the seller did not improve to communicate with you about the delay, you can contact support via the attached mail in the Contact Us section.')}}</span><br><br>
                    <i class="fas fa-check "> </i>
                    <span>{{ __('You are responsible for your bid you add to any product, at any moment you may win the auction and the product will be converted into a request for you and shipped to you immediately after the auction ends, when your bid was the highest one on that product. Here we note to dont despair if you notice the new bids are higher than your bid, who knows! those bidders may delete their bids and you get the abortianity to win the product, moreover you can compete aggressively for the product you like by adjusting your bid at a higher bid price.')}}</span><br><br>
                    <i class="fas fa-check "></i>
                    <span>{{ __('When you win an auction, you must pay the total price of your bid at onece directly as soon as you receive the product, otherwise you may be reported and charged in addition to being banned from the site, as well as you must pay the amount of Order Now at once directly as soon as you received your order through this feature.')}}</span><br><br>
                    <i class="fas fa-check "></i>
                    <span>{{ __('You can edit or delete your bids in the duration of the product auction, but you cannot do so in the last 10 hours of the auction timer.')}}</span><br><br>
                    <i class="fas fa-check "></i>
                    <span>{{ __('You may find one of your offers has been removed from your bids page, at that time the product itself and all bids on it will have been deleted by the administration.')}}</span><br><br>
                    <i class="fas fa-check "></i>
                    <span>{{ __('When you find a product marked (in-active) that means it is in delivery and will be deleted from the system as soon as the buyer confirms its delivary.')}}</span><br><br>
                </div>
                <br><br>
                <div class="goal">
                    <h3><b>{{ __('Craftsman - ProductsOwner')}}</b></h3><br>
                    <i class="fas fa-check "></i>
                    <span>{{ __('When adding a product, you have to take care of choosing the buy-now price, as the system will depend on it to calculate the starting bid price for your product’s auction (40% of the buy-now price), as well as calculate the minimum possible bid increment between every two bids (6% of the purchase price now) and thus calculate The minimum value for the prices of all possible bids. Therefore, the higher the buy-now price of your product, the more chance you will have to sell the product at a higher price, whether through the buy-now price itself or through the auction.')}}</span><br><br>
                    <i class="fas fa-check fa-1x"></i>
                    <span>{{ __('All products you add must be totaly handmade and belong to one of the website categories, if your products is found to be not handmade, or ready-made from the market, it will be deleted and this behaviour will affect the reliability of your account and we may have to block you.')}}</span><br><br>
                    <i class="fas fa-check "> </i>
                    <span>{{ __('You have to speed up the delivery of your handmads when it ordered, within a period of no more than 3 hours, so you should pay attention the website notifications about your ordered products via your email as possible to avoid the late delivary. Delivery of products will cause annoyance to buyers which may force us to block your account and products.')}}</span><br><br>
                    <i class="fas fa-check "> </i>
                    <span>{{ __('Keep in touch with the buyer during the delivery period to reassure him, if the product is delivered to him and he does not pay for it properly; You can contact the website support.')}}</span><br><br>
                    <i class="fas fa-check "> </i>
                    <span>{{ __('Your product will remain in the website with an (inactive) sign as long as the buyer does not confirm receipt, this may indicate problems that occurred during delivery, which affects your account reliability, so you must ask the buyer to confirm receipt of your product as soon as you confirm that it was successfully shipped to him.')}}</span><br><br>
                    <i class="fas fa-check "> </i>
                    <span>{{ __('You can update or delete your product as long as it has not won any bids yet, put you cannot update or delete your product, so you must check your product description when adding it and quickly review it before buyers start competing for it.')}}</span><br><br>
                    <i class="fas fa-check "></i>
                    <span>{{ __('If you miss a product from your list of products, it means that it has been deleted by the admin for not meeting the conditions of the handicraft auction.')}}</span><br><br>
                </div>
            </div>
            <br>
            <div class="form-group">
                <a href="{{ URL::previous() }}" name="cancel"
                class="btn btn-warning">{{ __('Go Back') }}</a>
            </div>
        </div>
    </div>
@endsection
