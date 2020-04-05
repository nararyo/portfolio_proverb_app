class ProverbsController < ApplicationController
  def index
  end

  def show
  end

  def anxious
    proverbs_type = Proverb.where(feel:"anxious").find_each.pluck(:who_said, :expression)
    proverb = proverbs_type.sample
    @expression  = proverb[1]
    @proverbed_by = proverb[0]

  end

  def depress
    proverbs_type = Proverb.where(feel:"anxious").find_each.pluck(:who_said, :expression)
    proverb = proverbs_type.sample
    @expression  = proverb[1]
    @proverbed_by = proverb[0]
  end

  def sad
    proverbs_type = Proverb.where(feel:"anxious").find_each.pluck(:who_said, :expression)
    proverb = proverbs_type.sample
    @expression  = proverb[1]
    @proverbed_by = proverb[0]
  end

  def tired
    proverbs_type = Proverb.where(feel:"anxious").find_each.pluck(:who_said, :expression)
    proverb = proverbs_type.sample
    @expression  = proverb[1]
    @proverbed_by = proverb[0]
  end

  def up
    proverbs_type = Proverb.where(feel:"anxious").find_each.pluck(:who_said, :expression)
    proverb = proverbs_type.sample
    @expression  = proverb[1]
    @proverbed_by = proverb[0]
  end

end
