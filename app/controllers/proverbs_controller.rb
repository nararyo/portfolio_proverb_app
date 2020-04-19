class ProverbsController < ApplicationController
  def index
    @proverbs = Proverb.all
  end

  def show
  end

  def anxious
    proverb = pick_up_proverb("anxious")
    @expression  = proverb[0]
    @proverbed_by = proverb[1]

  end

  def depress
    proverb = pick_up_proverb("depress")
    @expression  = proverb[0]
    @proverbed_by = proverb[1]
  end

  def tired
    proverb = pick_up_proverb("tired")
    @expression  = proverb[0]
    @proverbed_by = proverb[1]
  end

  def other
    proverb = pick_up_proverb("other")
    @expression  = proverb[0]
    @proverbed_by = proverb[1]
  end

  private
  def pick_up_proverb(params)
    proverbs_type = Proverb.where(feel:params).find_each.pluck(:who_said, :expression)
    proverbs_type.sample
  end

end
