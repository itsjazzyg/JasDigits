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

function gameOver(m)
  i = 0
  j = 0
  countH = 0
  countV = 0

  if countBlank(m) == 0 then
    while i ~= 12 do
      if m[i] == m[i+4] then countH = countH+1 end
      i = i+1
    end
    while j ~= 3 do
      if m[j] == m[j+1] then countV = countV+1 end
      j = j+4
      if j > 15 then j = j-15 end
    end

    if countH == 0 then
      if countV == 0 then
        return true
      end
    end
  end

  return false
end
