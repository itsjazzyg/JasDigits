function load()
  m = {}
  mo = {}
  mc = {}
  moc = 0
  mcc = 0
  for i = 0,15 do m[i] = 0 end

  while countBlank(m) >= 14 do
    m[math.random(0,15)] = 2
  end

  r(m)

  main()
end

function main()
  game = true

  while game do
    prompt(m)
    r(m)

    if gameOver(m) then
      noMoreMoves()
      game = false
    end
  end
end
