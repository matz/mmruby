puts "Shell start"
while true
  suspend_task # suspend task itself
  line = gets
  if line != nil && line.size > 0
    case line.chomp
    when "quit", "exit"
      puts "bye"
      exit_shell
    else
      puts line
      unless compile_and_run(line)
        puts "Failed to compile!"
      end
    end
  end
end

