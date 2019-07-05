function moveUp(t)
  m = tableElementDuplicate(t)

  for i = 0,11 do
    if m[i] == m[i+4] then
      m[i] = m[i]*2
      m[i+4] = 0
    elseif m[i] == 0 then
      m[i] = m[i+4]
      m[i+4] = 0
    end
  end
  return m
end

function moveDown(t)
  m = tableElementDuplicate(t)

  i = 15
  while i >=4 do
    if m[i] == m[i-4] then
      m[i] = m[i]*2
      m[i-4] = 0
    elseif m[i] == 0 then
      m[i] = m[i-4]
      m[i-4] = 0
    end
    i = i-1
  end
  return m
end

function moveLeft(t)
  m = tableElementDuplicate(t)

  i = 0
  while i ~= 3 do
    if m[i] == m[i+1] then
      m[i] = m[i]*2
      m[i+1] = 0
    elseif m[i] == 0 then
      m[i] = m[i+1]
      m[i+1] = 0
    end
    i = i+4
    if i > 15 then i = i-15 end
  end
  return m
end

function moveRight(t)
  m = tableElementDuplicate(t)

  i = 15
  while i ~= 12 do
    if m[i] == m[i-1] then
      m[i] = m[i]*2
      m[i-1] = 0
    elseif m[i] == 0 then
      m[i] = m[i-1]
      m[i-1] = 0
    end
    i = i-4
    if i < 0 then i = i+15 end
  end
  return m
end
