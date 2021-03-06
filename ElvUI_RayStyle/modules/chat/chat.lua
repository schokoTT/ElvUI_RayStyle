--[[------------------------------------------------------------
--	RayStyle, an ElvUI edit by Ray
--
--	This file contains initialization code for RayStyle
------------------------------------------------------------]]--
local E, L, V, P, G, _ = unpack(ElvUI); --Import: Engine, Locales, PrivateDB, ProfileDB, GlobalDB, Localize Underscore
local CH = E:GetModule("Chat")
local RS = E:GetModule("RayStyle")

local function StyleChat()
	for _, frameName in pairs(CHAT_FRAMES) do
		local cf = _G[frameName]
		_G[frameName.."EditBoxLanguage"]:Kill()
		_G[frameName.."EditBox"]:SetTemplate("Transparent")
	end
end
hooksecurefunc(CH, "StyleChat", StyleChat)