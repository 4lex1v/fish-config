
function fish_prompt --description 'Write out the prompt'
	
  ## Building the final prompt:

  ## To print on the next line add 'echo'
  echo -n -s (set_color blue) '['(date "+%H:%M")'] ' (set_color green) (pwd) ' ' (set_color red) ">> "
  
end