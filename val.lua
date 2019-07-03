function countBlank(m)
  b = 0
  for i = 0,15 do
    if m[i] == 0 then b = b+1 end
  end
  return b
end

function checkMax(m)
  max = 0
  for i = 0,15 do
    if m[i] > max then max = m[i] end
  end
  return max
end

function calcScore(m)
  score = 0

  for i = 0,15 do
    score = score + m[i]
  end

  return score*10
end