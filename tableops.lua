function tableCompareSame(tableOld,tableNew)
  to = 0
  tn = 0

  for i = 0,15 do to = to .. tableOld[i] end
  for i = 0,15 do tn = tn .. tableNew[i] end

  if tn == to then
    return true
  else
    return false
  end
end

function tableElementDuplicate(tableOld)
  tableNew = {}

  for i = 0,15 do tableNew[i] = tableOld[i] end

  return tableNew
end
