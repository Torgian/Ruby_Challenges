# PUSH
# ADD
# SUB
# MULT
# DIV
# MOD
# POP
# PRINT
class Mini_Lang
  def push(register, stack)
    stack.push(register[0])
    #return stack
  end

  def add(register, stack)
    #p register.object_id
    register[0] = stack.pop + register[0]
    #p register[0].object_id
    #return register
  end

  def sub(register, stack)
    register[0] = stack.pop - register[0]
    #return register
  end

  def mult(register, stack)
    register[0] = stack.pop * register[0]
    #return register
  end

  def div(register, stack)
    register[0] = stack.pop / register[0]
    #return register
  end

  def mod(register, stack)
    register[0] = stack.pop % register[0]
   # return register
  end

  def pop(register, stack)
    register[0] = stack.pop
    #return register
  end

end


def mini_language(string_of_commands)
  commands = string_of_commands.split(' ')
  register = [0]
  stack = []
  command_class = Mini_Lang.new
  commands.each_with_index do |command, i|
    if command == "PRINT"
      puts "#{register[0]}"
    elsif command.match(/\d/)
      register[0] = command.to_i
    else
      command_class.send command.to_sym.downcase, register, stack
    end
    #p register[0].object_id
  end
end

mini_language('5 PRINT PUSH 3 PRINT ADD PRINT')