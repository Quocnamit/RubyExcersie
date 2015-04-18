
# class Appointments < Array
#   def at (time)
#     self << time
#   end
#
#   def earliest
#     self.min
#   end
# end

class Appointments
  def initialize
    @dating = []
  end

  def at (time)
    @dating << time
  end

  def earliest
    @dating.min
  end
end

