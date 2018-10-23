-- file : config.lua
local module = {}

module.SSID = {}  
module.SSID["GenericConnection"] = "APPLEWATER14ORANGECAT"

module.step_ms = 10

-- example for local MQTT

--module.MQHOST = "ohab.local"
--module.MQPORT = 1883
--module.MQID = node.chipid()
--module.MQUSR = ""
--module.MQPW = ""

-- example for cloud MQTT

module.MQHOST = "192.168.1.40"
module.MQPORT = 1883
module.MQID = node.chipid()
module.MQUSR = "homeassistant"
module.MQPW = "6duek4hjnku3rs2gk79qgnwvakdw"

module.MQTLS = 0 -- 0 = unsecured, 1 = TLS/SSL

module.ENDPOINT = "/rollerblind/"
module.ID = "0"
--module.SUB = "set"
module.SUB = {[module.ENDPOINT .. module.ID .. "/set"]=0,[module.ENDPOINT .. "all"]=0}
module.POST = module.ENDPOINT .. module.ID .. "/status"
return module
 
