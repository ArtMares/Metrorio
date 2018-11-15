require("util")

local function clone_onto(source, override, partial)
    local partial = partial or false
    if(override['__partial__'] == true) then
        partial = true
        override['__partial__'] = nil
    else
        return override
    end
end

function clone_existing_data(entry, data, f)
    if (entry == nil) then
        error("Tried to clone non-existant data key")
    end

    local new = table.deepcopy(entry)
    data['__partial__'] = true

    local ret = clone_onto(new, data)

    if (f ~= nil) then
        f(ret)
    end

    return ret
end

function ternary(condition, t, f, call)
    if(condition) then
        if(call ~= false and type(t) == 'function') then
            return t()
        else
            return t
        end
    else
        if(call ~= false and type(f) == 'function') then
            return f()
        else
            return f
        end
    end
end