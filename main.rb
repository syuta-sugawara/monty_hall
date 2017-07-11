require './monty_hall'

#_区切り文字
simulater = MontyHall::Simulator.new(100_000)
simulater.execute
simulater.show_result
