require './lib/bread.rb'

class Toaster
  def toast(bread, time = 0)

    case time
    when 1
      bread.toasts
    when 2
      bread.burns
    end

    bread
  end
end
