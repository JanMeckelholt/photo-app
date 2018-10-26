Rails.configuration.stripe = {
	:publishable_key => 'pk_test_95xnEIfbFaPZK1osQ12DTrWd',
	:secret_key => 'sk_test_rFVf6YVLTCPp2OfXxPdLawcM'
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]