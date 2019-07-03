function newNum(max)
  level = math.log(max)/math.log(2)
  level = math.max(1,level-2)

  return randNum(level)
end

function newNumRC(rc,newNum)
  count = 0

  for i = 1,4 do
    if rc[i] == 0 then count = count + 1 end
  end

  seq = math.random(1,count)
  seqnum = 0

  loop = true
  i = 1

  while loop do
  if rc[i] == 0 then seqnum = seqnum+1 end
  if seqnum == seq then
    rc[i] = newNum
    loop = false
  end
  i = i+1
  end

  return rc
end

function newNumUp(m,newNum)
  rc = {m[12],m[13],m[14],m[15]}

  rc = newNumRC(rc,newNum)

  m[12] = rc[1]
  m[13] = rc[2]
  m[14] = rc[3]
  m[15] = rc[4]

  return m
end

function newNumDown(m,newNum)
  rc = {m[0],m[1],m[2],m[3]}

  rc = newNumRC(rc,newNum)

  m[0] = rc[1]
  m[1] = rc[2]
  m[2] = rc[3]
  m[3] = rc[4]

  return m
end

function newNumLeft(m,newNum)
  rc = {m[3],m[7],m[11],m[15]}

  rc = newNumRC(rc,newNum)

  m[3] = rc[1]
  m[7] = rc[2]
  m[11] = rc[3]
  m[15] = rc[4]

  return m
end

function newNumRight(m,newNum)
  rc = {m[0],m[4],m[8],m[12]}

  rc = newNumRC(rc,newNum)

  m[0] = rc[1]
  m[4] = rc[2]
  m[8] = rc[3]
  m[12] = rc[4]

  return m
end