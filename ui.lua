function top()
  io.write("Welcome!\n")
  io.write("Version ")
  io.write(version)
  io.write("\n\n")
end

function r(m)
  os.execute("clear")
  top()
  io.write("Score:")
  io.write(calcScore(m))
  io.write("\n")
  p(m)
end

function prompt(m)
  loop = true
  moc = 0

  invUp = 0
  invDown = 0
  invLeft = 0
  invRight = 0

  for i = 0,15 do mo[i] = m[i] end
  for i = 0,15 do moc = moc .. mo[i] end

  io.write("W for up, S for down, A for left, D for right\n")

  while loop do
    mcc = 0

    io.write(">")
    c = io.read()

    if c == "W" or c == "w" then
      moveUp(m)
      for i = 0,15 do mc[i] = m[i] end
      for i = 0,15 do mcc = mcc .. mc[i] end
      if mcc == moc then
        io.write("Invalid move\n")
        invUp = 1
      else
        m = newNumUp(m,newNum(checkMax(m)))
        loop = false
      end
    elseif c == "S" or c == "s" then
      moveDown(m)
      for i = 0,15 do mc[i] = m[i] end
      for i = 0,15 do mcc = mcc .. mc[i] end
      if mcc == moc then
        io.write("Invalid move\n")
        invDown = 1
      else
        m = newNumDown(m,newNum(checkMax(m)))
        loop = false
      end
    elseif c == "A" or c == "a" then
      moveLeft(m)
      for i = 0,15 do mc[i] = m[i] end
      for i = 0,15 do mcc = mcc .. mc[i] end
      if mcc == moc then
        io.write("Invalid move\n")
        invLeft = 1
      else
        m = newNumLeft(m,newNum(checkMax(m)))
        loop = false
      end
    elseif c == "D" or c == "d" then
      moveRight(m)
      for i = 0,15 do mc[i] = m[i] end
      for i = 0,15 do mcc = mcc .. mc[i] end
      if mcc == moc then
        io.write("Invalid move\n")
        invRight = 1
      else
        m = newNumRight(m,newNum(checkMax(m)))
        loop = false
      end
    else
      io.write("Invalid response\n")
    end

    inv = invUp + invDown + invLeft + invRight
    if inv == 4 then
      noMoreMoves()
      loop = false
    end
  end
end 

function noMoreMoves()
  io.write("\nNo more moves!\n")
  io.write("Your score is ")
  io.write(calcScore(m))
  io.write("!")

  io.read()

  load()
end