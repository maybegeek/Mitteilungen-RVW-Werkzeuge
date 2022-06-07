--[[
  in combination with csl: cv-style grouping by year and alphabet. sorting
  within. remove subsequent same-year annotation.
]]

idx = 'first'

function Span(el)
  eltarget = el.classes:includes("csl-block")
  eljahr = pandoc.utils.stringify(el.c)
  if eltarget and idx == 'first' then
    idx = eljahr
    el.attributes['ref-jahr'] = "jahr-" .. idx
    el.classes:insert("jahr")
    el.classes:insert(idx)
    return el
  elseif eltarget and idx == eljahr then
    idx = eljahr
    return {}
  elseif eltarget and idx ~= elcontent then
    idx = eljahr
    el.attributes['ref-jahr'] = "jahr-" .. idx
    el.classes:insert("jahr")
    el.classes:insert(idx)
    return el
  else
    return el
  end
end
