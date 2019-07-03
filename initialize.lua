function load()
  m = {}
  mo = {}
  mc = {}
  moc = 0
  mcc = 0
  for i = 0,15 do m[i] = 0 end

  game = true

  while countBlank(m) >= 14 do
    m[math.random(0,15)] = 2
  end

  r(m)
end