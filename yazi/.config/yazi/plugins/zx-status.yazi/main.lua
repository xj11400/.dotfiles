local function spacer()
	return ui.Span(" ")
end

local function style()
	local m = th.mode
	if cx.active.mode.is_select then
		return { main = m.select_main, alt = m.select_alt }
	elseif cx.active.mode.is_unset then
		return { main = m.unset_main, alt = m.unset_alt }
	else
		return { main = m.normal_main, alt = m.normal_alt }
	end
end

local function mode()
	local m = cx.active.mode
	local mode = tostring(m):sub(1, 3):upper()

	local style = style()

	return ui.Line {
	  ui.Span(th.status.sep_left.open):fg(style.main.bg):bg("reset"),
	  ui.Span(" "):style(style.main),
	  ui.Span(th.status.sep_left.close):fg(style.main.bg):bg(style.alt.bg),
	}

end

local function perm()
	local h = cx.active.current.hovered
	if not h then
		return ""
	end

	local perm = h.cha:perm()
	if not perm then
		return ""
	end

	local spans = {}
	for i = 1, #perm do
		local c = perm:sub(i, i)
		local style = th.status.perm_type
		if c == "-" or c == "?" then
			style = th.status.perm_sep
		elseif c == "r" then
			style = th.status.perm_read
		elseif c == "w" then
			style = th.status.perm_write
		elseif c == "x" or c == "s" or c == "S" or c == "t" or c == "T" then
			style = th.status.perm_exec
		end
		spans[i] = ui.Span(c):style(style)
	end
	return ui.Line(spans)
end

local function position()
	local h = cx.active.current
	local cursor = h.cursor
	local length = #h.files

	return ui.Line {
		ui.Span(string.format(" %2d/%-2d ", math.min(cursor + 1, length), length))
	}
end

local function right_sep()

	local style = style()

	return ui.Line {
		ui.Span(th.status.sep_right.open):fg(style.main.bg):bg(style.alt.bg),
		ui.Span(" "):style(style.main),
		ui.Span(th.status.sep_right.close):fg(style.main.bg):bg("reset"),
	}
end

local function nlink()
	local h = cx.active.current.hovered
	if not h then
		return ui.Span("")
	end

	if not h.cha.nlink then
		return ui.Span("")
	end

	return ui.Span(h.cha.nlink .. " ")
end

local function owner()
	local h = cx.active.current.hovered
	if not h or not h.cha.uid or not h.cha.gid then
		return ui.Span("")
	end

	local user = ya.user_name(h.cha.uid) or h.cha.uid
	local group = ya.group_name(h.cha.gid) or h.cha.gid

	return ui.Line(string.format("%s:%s ", user, group))
end

local function mtime()
	local h = cx.active.current.hovered
	if not h then
		return ui.Span("")
	end

	if not h.cha.mtime then
		return ui.Span("")
	end

	return ui.Span(os.date("%Y-%m-%d %H:%M", h.cha.mtime // 1) .. " ")
end

return {
	setup = function()
		Status:children_remove(1, Status.LEFT) -- mode
		Status:children_remove(2, Status.LEFT) -- size
		Status:children_remove(3, Status.LEFT) -- name
		Status:children_remove(4, Status.RIGHT) -- perm
		Status:children_remove(5, Status.RIGHT) -- percentage
		Status:children_remove(6, Status.RIGHT) -- position

		Status:children_add(mode, 1000, Status.LEFT)
		Status:children_add(spacer, 1050, Status.LEFT)
		Status:children_add(perm, 1100, Status.LEFT)
		Status:children_add(spacer, 1150, Status.LEFT)
		Status:children_add(nlink, 1200, Status.LEFT)
		Status:children_add(owner, 1300, Status.LEFT)
		Status:children_add(mtime, 1400, Status.LEFT)

		Status:children_add(position, 1400, Status.RIGHT)
		Status:children_add(right_sep, 1500, Status.RIGHT)
	end,
}
