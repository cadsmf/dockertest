local foo = 2
local nk = require("nakama")
nk.logger_info("Lua module loaded.")

local function healthcheck_rpc(context, payload)
    nk.logger_info("Healthcheck RPC called.")
    return nk.json_encode({ ["success"] = true})
end

local function myrpccall_rpc(context, payload)
    nk.logger_info("my rpc call called.")
    return nk.json_encode({ ["success"] = false})
end

nk.register_rpc(healthcheck_rpc, "healthcheck_lua")
nk.register_rpc(myrpccall_rpc, "myrpccall_rpc")