# frozen_string_literal: true

module ApplicationHelper
  def cart_count_over_one
    "<span class='btn btn-sm btn-dark'>#{@cart.line_items.count}</span>".html_safe if @cart.line_items.count.positive?
  end

  def cart_has_items
    @cart.line_items.count.positive?
  end
end
