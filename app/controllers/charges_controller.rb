# frozen_string_literal: true

class ChargesController < ApplicationController
  rescue_from Stripe::CardError, with: :catch_exception
  def new; end

  def create
    # Amount in cents
    @amount = @cart.total_price

    customer = Stripe::Customer.create(
      email: params[:stripeEmail],
      source: params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      customer: customer.id,
      amount: @amount * 100,
      description: 'Rails Stripe Customer',
      currency: 'pkr'
    )
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end
end
