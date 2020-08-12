module HomeHelper
  def featured_spaces
    @spaces = Space.all
    @random_spaces = @spaces.sample(3)
  end
end
