class Bread
  def initialize
    @toast_status = 'fresh'
  end

  def toasts
    @toast_status = 'toasted'
  end

  def burns
    @toast_status = 'burned'
  end

  def toastiness
    @toast_status
  end
end
