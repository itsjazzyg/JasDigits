function p(m)

  io.write("┏━━━┳━━━┳━━━┳━━━┓\n┃")
  for i = 0,3 do
    writem(m[i])
    io.write("┃")
  end
  io.write("\n")
  io.write("┣━━━╋━━━╋━━━╋━━━┫\n┃")
  for i = 4,7 do
    writem(m[i])
    io.write("┃")
  end  
  io.write("\n")
  io.write("┣━━━╋━━━╋━━━╋━━━┫\n┃")
  for i = 8,11 do
    writem(m[i])
    io.write("┃")
  end 
  io.write("\n")
  io.write("┣━━━╋━━━╋━━━╋━━━┫\n┃")
  for i = 12,15 do
    writem(m[i])
    io.write("┃")
  end  
  io.write("\n") 
  io.write("┗━━━┻━━━┻━━━┻━━━┛\n")

end

function writem(e)
  if e == 0 then io.write("   ")
  elseif e < 10 then p1(e)
  elseif e < 100 then p2(e)
  else p3(e)
  end
end

function p1(e)
  io.write(" ")
  io.write(e)
  io.write(" ")  
end

function p2(e)
  io.write(" ")
  io.write(e)
end

function p3(e)
  io.write(e)
end