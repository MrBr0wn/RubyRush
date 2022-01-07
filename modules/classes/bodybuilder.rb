class Bodybuilder

  def initialize
    @biceps = 0
    @triceps = 0
    @deltoid = 0
    @pectorals = 0
  end

  def pump_muscle(muscle)
    case muscle
    when "biceps"
      @biceps += 1
    when "triceps"
      @triceps += 1
    when "deltoid"
      @deltoid += 1
    when "pectorals"
      @pectorals += 1
    end
  end

  def show_result(str_number)
    puts "#{str_number} bodybuilder:"
    puts "
          Biceps: #{@biceps}
          Triceps: #{@triceps}
          Deltoid: #{@deltoid}
          Pectorals: #{@pectorals}
          \n"
  end

end
