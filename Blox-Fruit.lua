
local repo = 'https://raw.githubusercontent.com/ahmadsgamer2/L_UI/tree/main/'
 
 local Library = loadstring(game:HttpGet(repo .. 'UI_Lib_L'))()
 local SaveManager = loadstring(game:HttpGet(repo .. 'SaveManager'))()
 local ThemeManager = loadstring(game:HttpGet(repo .. 'ThemeManager'))()
 
 FastTween = true
 
_G.SaveSetting = {
	AutoFarm = false,
	AutoFarmSky = false,
	Superhuman = false,
	AutoCakePrince = false,
	AutoThirdWorld = false,
	BypassTp = false,
	Godhuman = false,
	AutoHollow = false,
	AutoStoreFruit = true,
	BringFruit = false,
	AutoRandomFruit = true,
	SelectModeMaterial = nil,
	AutoFarmMaterial = false,
	AutoTTK = false,
	AutoFactory = false,
	AutoRengoku = false,
	HideDmg = false,
	AutoBuyHaki = false,
	AutoBuySword = false,
	AutoSaber = false,
	AutoKillBoss = false,
	SelectBossAndQuest = false,
	AutoKillAllBoss = false,
	FarmAura = false,
	DistanceFarm = 1500,
	HealthMastery = 15,
	FarmFruit = false,
	FarmGun = false,
	sKillz = true,
	sKillx = true,
	sKillv = true,
	sKillc = true,
	AutoCDK = false,
	AutoSoulGuitar = false,
	AutoCakePrince = false,
	RipIndra = false,
	RipIndraHop = false,
	AutoCastalRaid = false,
	Health = 20,
	DistanceX = 0,
	DistanceY = 0,
	DistanceZ = 30,
	TradeDeathKing = false,
	FarmChest = false,
	ValkyrieHelmet = false,
	Musketeer = false,
	HunTerCape = false,
    Bandanna = false,
    PaleScarf = false,
	ElectricClaw = false,
	SerpentBow = false,
	AcidumRifle = false,
	FastAttack = "Fast",
	WhiteScreen = false,
	FastMode = false
 }
 
 repeat wait() until game:IsLoaded()
 repeat wait() until game:GetService("Players")
 repeat wait() until game:GetService("Players").LocalPlayer
 repeat wait() until game:GetService("Players").LocalPlayer.PlayerGui
 repeat wait() until game:GetService("ReplicatedStorage").Effect.Container
 if not game:IsLoaded() then
	 local GameLoadGui = Instance.new("Message",workspace);
	 GameLoadGui.Text = 'Wait Game Loading';
	 game.Loaded:Wait();
	 GameLoadGui:Destroy();
	 task.wait();
 end;
 if game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") then
	 repeat wait()
		 if game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("Main").ChooseTeam.Visible == true then
				 for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Activated)) do                                                                                                
					 v.Function()
				 end
			  end
	 until game.Players.LocalPlayer.Team ~= nil and game:IsLoaded()
 end
 --------------- 
 --Auto Rejoin System
 spawn(function()
	 while true do wait()
		 getgenv().rejoin = game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(Kick)
				 if Kick.Name == 'ErrorPrompt' and Kick:FindFirstChild('MessageArea') and Kick.MessageArea:FindFirstChild("ErrorFrame") then
					 game:GetService("TeleportService"):Teleport(game.PlaceId)
					 wait(50)
				 end
		 end)
	 end
 end)
	function LoadSettings()
		if readfile and writefile and isfile and isfolder then
			if not isfolder("Demon Hub Premium Scripts") then
				makefolder("Demon Hub Premium Scripts")
			end
			if not isfolder("Demon Hub Premium Scripts/Blox Fruits/") then
				makefolder("Demon Hub Premium Scripts/Blox Fruits/")
			end
			if not isfile("Demon Hub Premium Scripts/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json") then
				writefile("Demon Hub Premium Scripts/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json", game:GetService("HttpService"):JSONEncode(_G.SaveSetting))
			else
				local Decode = game:GetService("HttpService"):JSONDecode(readfile("Demon Hub Premium Scripts/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json"))
				for i,v in pairs(Decode) do
					_G.SaveSetting[i] = v
				end
			end
		else
			return warn("Status : Undetected Executor")
		end
	end
	
	function savesettings()
		if readfile and writefile and isfile and isfolder then
			if not isfile("Demon Hub Premium Scripts/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json") then
				LoadSettings()
			else
				local Decode = game:GetService("HttpService"):JSONDecode(readfile("Demon Hub Premium Scripts/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json"))
				local Array = {}
				for i,v in pairs(_G.SaveSetting) do
					Array[i] = v
				end
				writefile("Demon Hub Premium Scripts/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json", game:GetService("HttpService"):JSONEncode(Array))
			end
		else
			return warn("Status : Undetected Executor")
		end
	end
	
 LoadSettings()
 
 
 Old_World = false
 New_World = false
 Three_World = false
 local placeId = game.PlaceId
 if placeId == 2753915549 then
	 Old_World = true
 elseif placeId == 4442272183 then
	 New_World = true
 elseif placeId == 7449423635 then
	 Three_World = true
 end
 -- [Deleted Effect Auto]
 
	 task.spawn(function()
		 while wait() do
			 pcall(function()
				 if HideDmg then
					 game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = false
				 else
					 game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = true
				 end
			 end)
		 end
	 end)
 
 task.spawn(function()
	 while task.wait() do
		for i, v in pairs(game.Workspace["_WorldOrigin"]:GetChildren()) do
			if v.Name == "Dust" or v.Name == "eff" or v.Name == "CurvedRing" or v.Name == "SwordSlash" or v.Name == "Sounds" or v.Name == "SlashHit" then
			    v:Destroy() 
			end
		end
		 
	 end
 end)
 
 if game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Death") then
	 game:GetService("ReplicatedStorage").Effect.Container.Death:Destroy()
 end
 if game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Respawn") then
	 game:GetService("ReplicatedStorage").Effect.Container.Respawn:Destroy()
 end
 
 function click()
	game:GetService'VirtualUser':CaptureController()
	game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
 end
 
 function AutoHaki()
	 if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
		 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
	 end
 end
 function Equip(ToolX)
 if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(ToolX) then
	 getgenv().Tol = game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(ToolX)
	 game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tol)
 end
 end
	 -- [CheckMasteryWeapon]
 
 function CheckMasteryWeapon(NameWe,MasNum)
	 if game.Players.LocalPlayer.Backpack:FindFirstChild(NameWe) then
		 if tonumber(game.Players.LocalPlayer.Backpack:FindFirstChild(NameWe).Level.Value) < tonumber(MasNum) then
			 return "true DownTo"
		 elseif tonumber(game.Players.LocalPlayer.Backpack:FindFirstChild(NameWe).Level.Value) >= tonumber(MasNum) then
			 return "true UpTo"
		 end
	 end
	 if game.Players.LocalPlayer.Character:FindFirstChild(NameWe) then
		 if tonumber(game.Players.LocalPlayer.Character:FindFirstChild(NameWe).Level.Value) < tonumber(MasNum) then
			 return "true DownTo"
		 elseif tonumber(game.Players.LocalPlayer.Character:FindFirstChild(NameWe).Level.Value) >= tonumber(MasNum) then
			 return "true UpTo"
		 end
	 end
	 return "else"
 end
 
 
 -- [CheckMaterial]
 
 local function CheckMaterial(v1)
	 if Old_World then 
		 if (v1=="Magma Ore") then 
			 MaterialMob={"Military Soldier [Lv. 300]","Military Spy [Lv. 325]"};
			 CFrameMon=CFrame.new( -5815,84,8820);
		 elseif ((v1=="Leather") or (v1=="Scrap Metal")) then 
			 MaterialMob={"Brute [Lv. 45]"};
			 CFrameMon=CFrame.new( -1145,15,4350);
		 elseif (v1=="Angel Wings") then 
			 MaterialMob={"God's Guard [Lv. 450]"};
			 CFrameMon=CFrame.new( -4698,845, -1912);
		 elseif (v1=="Fish Tail") then 
			 MaterialMob={"Fishman Warrior [Lv. 375]","Fishman Commando [Lv. 400]"};
			 CFrameMon=CFrame.new(61123,19,1569);
		 end 
	 end 
	 if New_World then 
		 if (v1=="Magma Ore") then 
			 MaterialMob={"Magma Ninja [Lv. 1175]"};
			 CFrameMon=CFrame.new( -5428,78, -5959);
		 elseif (v1=="Scrap Metal") then
			 MaterialMob={"Swan Pirate [Lv. 775]"};
			 CFrameMon=CFrame.new(878,122,1235);
		 elseif (v1=="Radioactive Material") then 
			 MaterialMob={"Factory Staff [Lv. 800]"};
			 CFrameMon=CFrame.new(295,73, -56);
		 elseif (v1=="Vampire Fang") then 
			 MaterialMob={"Vampire [Lv. 975]"};
			 CFrameMon=CFrame.new( -6033,7, -1317);
		 elseif (v1=="Mystic Droplet") then 
			 MaterialMob={"Water Fighter [Lv. 1450]","Sea Soldier [Lv. 1425]"};
			 CFrameMon=CFrame.new( -3385,239, -10542);
		 end 
	 end 
	 if Three_World then 
		 if (v1=="Candy [Event]") then
			 MaterialMob={"Snow Demon [Lv. 2425]","Candy Rebel [Lv. 2375]"};
			 CFrameMon=CFrame.new(-777.070862, 2.5809536, -14453.0078, 0.33384338, 0, -0.942628562, 0, 1, 0, 0.942628562, 0, 0.33384338);
		 elseif (v1=="Bone & Demonic Wisp") then
			 MaterialMob={"Reborn Skeleton [Lv. 1975]","Living Zombie [Lv. 2000]","Demonic Soul [Lv. 2025]"};
			 CFrameMon=CFrame.new(-9507, 172, 6158);
		 elseif (v1=="Mini Tusk") then 
			 MaterialMob={"Mythological Pirate [Lv. 1850]"};
			 CFrameMon=CFrame.new( -13545,470, -6917);
		 elseif (v1=="Fish Tail") then 
			 MaterialMob={"Fishman Raider [Lv. 1775]","Fishman Captain [Lv. 1800]"};
			 CFrameMon=CFrame.new( -10993,332, -8940);
		 elseif (v1=="Scrap Metal") then 
			 MaterialMob={"Jungle Pirate [Lv. 1900]"};
			 CFrameMon=CFrame.new( -12107,332, -10549);
		 elseif (v1=="Dragon Scale") then 
			 MaterialMob={"Dragon Crew Archer [Lv. 1600]","Dragon Crew Warrior [Lv. 1575]"};
			 CFrameMon=CFrame.new(6594,383,139);
		 elseif (v1=="Conjured Cocoa") then 
			 MaterialMob={"Cocoa Warrior [Lv. 2300]","Chocolate Bar Battler [Lv. 2325]","Sweet Thief [Lv. 2350]","Candy Rebel [Lv. 2375]"};
			 CFrameMon=CFrame.new(620.6344604492188,78.93644714355469, -12581.369140625);
		 elseif (v1=="Gunpowder") then MaterialMob={"Pistol Billionaire [Lv. 1525]"};
			 CFrameMon=CFrame.new( -469,74,5904);
		 end 
	 end 
 end
 --AutoFarm
 function CheckBossQuest()
	 if SelectBoss == "Saber Expert [Lv. 200] [Boss]" then
		 MsBoss = "Saber Expert [Lv. 200] [Boss]"
		 NameBoss = "Saber Expert"
		 CFrameBoss = CFrame.new(-1458.89502, 29.8870335, -50.633564, 0.858821094, 1.13848939e-08, 0.512275636, -4.85649254e-09, 1, -1.40823326e-08, -0.512275636, 9.6063415e-09, 0.858821094)
	 elseif SelectBoss == "The Saw [Lv. 100] [Boss]" then
		 MsBoss = "The Saw [Lv. 100] [Boss]"
		 NameBoss = "The Saw"
		 CFrameBoss = CFrame.new(-683.519897, 13.8534927, 1610.87854, -0.290192783, 6.88365773e-08, 0.956968188, 6.98413629e-08, 1, -5.07531119e-08, -0.956968188, 5.21077759e-08, -0.290192783)
	 elseif SelectBoss == "Greybeard [Lv. 750] [Raid Boss]" then
		 MsBoss = "Greybeard [Lv. 750] [Raid Boss]"
		 NameBoss = "Greybeard"
		 CFrameBoss = CFrame.new(-4955.72949, 80.8163834, 4305.82666, -0.433646321, -1.03394289e-08, 0.901083171, -3.0443168e-08, 1, -3.17633075e-09, -0.901083171, -2.88092288e-08, -0.433646321)
	 elseif SelectBoss == "The Gorilla King [Lv. 25] [Boss]" then
		 MsBoss = "The Gorilla King [Lv. 25] [Boss]"
		 NameBoss = "The Gorilla King"
		 NameQuestBoss = "JungleQuest"
		 LevelQuestBoss = 3
		 CFrameQuestBoss = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
		 CFrameBoss = CFrame.new(-1223.52808, 6.27936459, -502.292664, 0.310949147, -5.66602516e-08, 0.950426519, -3.37275488e-08, 1, 7.06501808e-08, -0.950426519, -5.40241736e-08, 0.310949147)
	 elseif SelectBoss == "Bobby [Lv. 55] [Boss]" then
		 MsBoss = "Bobby [Lv. 55] [Boss]"
		 NameBoss = "Bobby"
		 NameQuestBoss = "BuggyQuest1"
		 LevelQuestBoss = 3
		 CFrameQuestBoss = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
		 CFrameBoss = CFrame.new(-1147.65173, 32.5966301, 4156.02588, 0.956680477, -1.77109952e-10, -0.29113996, 5.16530874e-10, 1, 1.08897802e-09, 0.29113996, -1.19218679e-09, 0.956680477)
	 elseif SelectBoss == "Yeti [Lv. 110] [Boss]" then
		 MsBoss = "Yeti [Lv. 110] [Boss]"
		 NameBoss = "Yeti"
		 NameQuestBoss = "SnowQuest"
		 LevelQuestBoss = 3
		 CFrameQuestBoss = CFrame.new(1384.90247, 87.3078308, -1296.6825, 0.280209213, 2.72035177e-08, -0.959938943, -6.75690828e-08, 1, 8.6151708e-09, 0.959938943, 6.24481444e-08, 0.280209213)
		 CFrameBoss = CFrame.new(1221.7356, 138.046906, -1488.84082, 0.349343032, -9.49245944e-08, 0.936994851, 6.29478194e-08, 1, 7.7838429e-08, -0.936994851, 3.17894653e-08, 0.349343032)
	 elseif SelectBoss == "Mob Leader [Lv. 120] [Boss]" then
		 MsBoss = "Mob Leader [Lv. 120] [Boss]"
		 NameBoss = "Mob Leader"
		 CFrameBoss = CFrame.new(-2848.59399, 7.4272871, 5342.44043, -0.928248107, -8.7248246e-08, 0.371961564, -7.61816636e-08, 1, 4.44474857e-08, -0.371961564, 1.29216433e-08, -0.92824)
	 elseif SelectBoss == "Vice Admiral [Lv. 130] [Boss]" then
		 MsBoss = "Vice Admiral [Lv. 130] [Boss]"
		 NameBoss = "Vice Admiral"
		 NameQuestBoss = "MarineQuest2"
		 LevelQuestBoss = 2
		 CFrameQuestBoss = CFrame.new(-5035.42285, 28.6520386, 4324.50293, -0.0611100644, -8.08395768e-08, 0.998130739, -1.57416586e-08, 1, 8.00271849e-08, -0.998130739, -1.08217701e-08, -0.0611100644)
		 CFrameBoss = CFrame.new(-5078.45898, 99.6520691, 4402.1665, -0.555574954, -9.88630566e-11, 0.831466436, -6.35508286e-08, 1, -4.23449258e-08, -0.831466436, -7.63661632e-08, -0.555574954)
	 elseif SelectBoss == "Warden [Lv. 175] [Boss]" then
		 MsBoss = "Warden [Lv. 175] [Boss]"
		 NameBoss = "Warden"
		 NameQuestBoss = "ImpelQuest"
		 LevelQuestBoss = 1
		 CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
		 CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
	 elseif SelectBoss == "Chief Warden [Lv. 200] [Boss]" then
		 MsBoss = "Chief Warden [Lv. 200] [Boss]"
		 NameBoss = "Chief Warden"
		 NameQuestBoss = "ImpelQuest"
		 LevelQuestBoss = 2
		 CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
		 CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
	 elseif SelectBoss == "Swan [Lv. 225] [Boss]" then
		 MsBoss = "Swan [Lv. 225] [Boss]"
		 NameBoss = "Swan"
		 NameQuestBoss = "ImpelQuest"
		 LevelQuestBoss = 3
		 CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
		 CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
	 elseif SelectBoss == "Magma Admiral [Lv. 350] [Boss]" then
		 MsBoss = "Magma Admiral [Lv. 350] [Boss]"
		 NameBoss = "Magma Admiral"
		 NameQuestBoss = "MagmaQuest"
		 LevelQuestBoss = 3
		 CFrameQuestBoss = CFrame.new(-5317.07666, 12.2721891, 8517.41699, 0.51175487, -2.65508806e-08, -0.859131515, -3.91131572e-08, 1, -5.42026761e-08, 0.859131515, 6.13418294e-08, 0.51175487)
		 CFrameBoss = CFrame.new(-5530.12646, 22.8769703, 8859.91309, 0.857838571, 2.23414389e-08, 0.513919294, 1.53689133e-08, 1, -6.91265853e-08, -0.513919294, 6.71978384e-08, 0.857838571)
	 elseif SelectBoss == "Fishman Lord [Lv. 425] [Boss]" then
		 MsBoss = "Fishman Lord [Lv. 425] [Boss]"
		 NameBoss = "Fishman Lord"
		 NameQuestBoss = "FishmanQuest"
		 LevelQuestBoss = 3
		 CFrameQuestBoss = CFrame.new(61123.0859, 18.5066795, 1570.18018, 0.927145958, 1.0624845e-07, 0.374700129, -6.98219367e-08, 1, -1.10790765e-07, -0.374700129, 7.65569368e-08, 0.927145958)
		 CFrameBoss = CFrame.new(61351.7773, 31.0306778, 1113.31409, 0.999974668, 0, -0.00714713801, 0, 1.00000012, 0, 0.00714714266, 0, 0.999974549)
	 elseif SelectBoss == "Wysper [Lv. 500] [Boss]" then
		 MsBoss = "Wysper [Lv. 500] [Boss]"
		 NameBoss = "Wysper"
		 NameQuestBoss = "SkyExp1Quest"
		 LevelQuestBoss = 3
		 CFrameQuestBoss = CFrame.new(-7862.94629, 5545.52832, -379.833954, 0.462944925, 1.45838088e-08, -0.886386991, 1.0534996e-08, 1, 2.19553424e-08, 0.886386991, -1.95022007e-08, 0.462944925)
		 CFrameBoss = CFrame.new(-7925.48389, 5550.76074, -636.178345, 0.716468513, -1.22915289e-09, 0.697619379, 3.37381434e-09, 1, -1.70304748e-09, -0.697619379, 3.57381835e-09, 0.716468513)
	 elseif SelectBoss == "Thunder God [Lv. 575] [Boss]" then
		 MsBoss = "Thunder God [Lv. 575] [Boss]"
		 NameBoss = "Thunder God"
		 NameQuestBoss = "SkyExp2Quest"
		 LevelQuestBoss = 3
		 CFrameQuestBoss = CFrame.new(-7902.78613, 5635.99902, -1411.98706, -0.0361216255, -1.16895912e-07, 0.999347389, 1.44533963e-09, 1, 1.17024491e-07, -0.999347389, 5.6715117e-09, -0.0361216255)
		 CFrameBoss = CFrame.new(-7917.53613, 5616.61377, -2277.78564, 0.965189934, 4.80563429e-08, -0.261550069, -6.73089886e-08, 1, -6.46515304e-08, 0.261550069, 8.00056768e-08, 0.965189934)
	 elseif SelectBoss == "Cyborg [Lv. 675] [Boss]" then
		 MsBoss = "Cyborg [Lv. 675] [Boss]"
		 NameBoss = "Cyborg"
		 NameQuestBoss = "FountainQuest"
		 LevelQuestBoss = 3
		 CFrameQuestBoss = CFrame.new(5253.54834, 38.5361786, 4050.45166, -0.0112687312, -9.93677887e-08, -0.999936521, 2.55291371e-10, 1, -9.93769547e-08, 0.999936521, -1.37512213e-09, -0.0112687312)
		 CFrameBoss = CFrame.new(6041.82813, 52.7112198, 3907.45142, -0.563162148, 1.73805248e-09, -0.826346457, -5.94632716e-08, 1, 4.26280238e-08, 0.826346457, 7.31437524e-08, -0.563162148)
		 -- New World
	 elseif SelectBoss == "Diamond [Lv. 750] [Boss]" then
		 MsBoss = "Diamond [Lv. 750] [Boss]"
		 NameBoss = "Diamond"
		 NameQuestBoss = "Area1Quest"
		 LevelQuestBoss = 3
		 CFrameQuestBoss = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956)
		 CFrameBoss = CFrame.new(-1736.26587, 198.627731, -236.412857, -0.997808516, 0, -0.0661673471, 0, 1, 0, 0.0661673471, 0, -0.997808516)
	 elseif SelectBoss == "Jeremy [Lv. 850] [Boss]" then
		 MsBoss = "Jeremy [Lv. 850] [Boss]"
		 NameBoss = "Jeremy"
		 NameQuestBoss = "Area2Quest"
		 LevelQuestBoss = 3
		 CFrameQuestBoss = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
		 CFrameBoss = CFrame.new(2203.76953, 448.966034, 752.731079, -0.0217453763, 0, -0.999763548, 0, 1, 0, 0.999763548, 0, -0.0217453763)
	 elseif SelectBoss == "Fajita [Lv. 925] [Boss]" then
		 MsBoss = "Fajita [Lv. 925] [Boss]"
		 NameBoss = "Fajita"
		 NameQuestBoss = "MarineQuest3"
		 LevelQuestBoss = 3
		 CFrameQuestBoss = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044)
		 CFrameBoss = CFrame.new(-2297.40332, 115.449463, -3946.53833, 0.961227536, -1.46645796e-09, -0.275756449, -2.3212845e-09, 1, -1.34094433e-08, 0.275756449, 1.35296352e-08, 0.961227536)
	 elseif SelectBoss == "Don Swan [Lv. 1000] [Boss]" then
		 MsBoss = "Don Swan [Lv. 1000] [Boss]"
		 NameBoss = "Don Swan"
		 CFrameBoss = CFrame.new(2288.802, 15.1870775, 863.034607, 0.99974072, -8.41247214e-08, -0.0227668174, 8.4774733e-08, 1, 2.75850098e-08, 0.0227668174, -2.95079072e-08, 0.99974072)
	 elseif SelectBoss == "Smoke Admiral [Lv. 1150] [Boss]" then
		 MsBoss = "Smoke Admiral [Lv. 1150] [Boss]"
		 NameBoss = "Smoke Admiral"
		 NameQuestBoss = "IceSideQuest"
		 LevelQuestBoss = 3
		 CFrameQuestBoss = CFrame.new(-6059.96191, 15.9868021, -4904.7373, -0.444992423, -3.0874483e-09, 0.895534337, -3.64098796e-08, 1, -1.4644522e-08, -0.895534337, -3.91229982e-08, -0.444992423)
		 CFrameBoss = CFrame.new(-5115.72754, 23.7664986, -5338.2207, 0.251453817, 1.48345061e-08, -0.967869282, 4.02796978e-08, 1, 2.57916977e-08, 0.967869282, -4.54708946e-08, 0.251453817)
	 elseif SelectBoss == "Cursed Captain [Lv. 1325] [Raid Boss]" then
		 MsBoss = "Cursed Captain [Lv. 1325] [Raid Boss]"
		 NameBoss = "Cursed Captain"
		 CFrameBoss = CFrame.new(916.928589, 181.092773, 33422, -0.999505103, 9.26310495e-09, 0.0314563364, 8.42916226e-09, 1, -2.6643713e-08, -0.0314563364, -2.63653774e-08, -0.999505103)
	 elseif SelectBoss == "Darkbeard [Lv. 1000] [Raid Boss]" then
		 MsBoss = "Darkbeard [Lv. 1000] [Raid Boss]"
		 NameBoss = "Darkbeard"
		 CFrameBoss = CFrame.new(3876.00366, 24.6882591, -3820.21777, -0.976951957, 4.97356325e-08, 0.213458836, 4.57335361e-08, 1, -2.36868622e-08, -0.213458836, -1.33787044e-08, -0.976951957)
	 elseif SelectBoss == "Order [Lv. 1250] [Raid Boss]" then
		 MsBoss = "Order [Lv. 1250] [Raid Boss]"
		 NameBoss = "Order"
		 CFrameBoss = CFrame.new(-6221.15039, 16.2351036, -5045.23584, -0.380726993, 7.41463495e-08, 0.924687505, 5.85604774e-08, 1, -5.60738549e-08, -0.924687505, 3.28013137e-08, -0.380726993)
	 elseif SelectBoss == "Awakened Ice Admiral [Lv. 1400] [Boss]" then
		 MsBoss = "Awakened Ice Admiral [Lv. 1400] [Boss]"
		 NameBoss = "Awakened Ice Admiral"
		 NameQuestBoss = "FrostQuest"
		 LevelQuestBoss = 3
		 CFrameQuestBoss = CFrame.new(5669.33203, 28.2118053, -6481.55908, 0.921275556, -1.25320829e-08, 0.388910472, 4.72230788e-08, 1, -7.96414241e-08, -0.388910472, 9.17372489e-08, 0.921275556)
		 CFrameBoss = CFrame.new(6407.33936, 340.223785, -6892.521, 0.49051559, -5.25310213e-08, -0.871432424, -2.76146022e-08, 1, -7.58250565e-08, 0.871432424, 6.12576301e-08, 0.49051559)
	 elseif SelectBoss == "Tide Keeper [Lv. 1475] [Boss]" then
		 MsBoss = "Tide Keeper [Lv. 1475] [Boss]"
		 NameBoss = "Tide Keeper"
		 NameQuestBoss = "ForgottenQuest"             
		 LevelQuestBoss = 3
		 CFrameQuestBoss = CFrame.new(-3053.89648, 236.881363, -10148.2324, -0.985987961, -3.58504737e-09, 0.16681771, -3.07832915e-09, 1, 3.29612559e-09, -0.16681771, 2.73641976e-09, -0.985987961)
		 CFrameBoss = CFrame.new(-3570.18652, 123.328949, -11555.9072, 0.465199202, -1.3857326e-08, 0.885206044, 4.0332897e-09, 1, 1.35347511e-08, -0.885206044, -2.72606271e-09, 0.465199202)
		 -- Thire World
	 elseif SelectBoss == "Stone [Lv. 1550] [Boss]" then
		 MsBoss = "Stone [Lv. 1550] [Boss]"
		 NameBoss = "Stone"
		 NameQuestBoss = "PiratePortQuest"             
		 LevelQuestBoss = 3
		 CFrameQuestBoss = CFrame.new(-290, 44, 5577)
		 CFrameBoss = CFrame.new(-1085, 40, 6779)
	 elseif SelectBoss == "Island Empress [Lv. 1675] [Boss]" then
		 MsBoss = "Island Empress [Lv. 1675] [Boss]"
		 NameBoss = "Island Empress"
		 NameQuestBoss = "AmazonQuest2"             
		 LevelQuestBoss = 3
		 CFrameQuestBoss = CFrame.new(5443, 602, 752)
		 CFrameBoss = CFrame.new(5659, 602, 244)
	 elseif SelectBoss == "Kilo Admiral [Lv. 1750] [Boss]" then
		 MsBoss = "Kilo Admiral [Lv. 1750] [Boss]"
		 NameBoss = "Kilo Admiral"
		 NameQuestBoss = "MarineTreeIsland"             
		 LevelQuestBoss = 3
		 CFrameQuestBoss = CFrame.new(2178, 29, -6737)
		 CFrameBoss =CFrame.new(2846, 433, -7100)
	 elseif SelectBoss == "Captain Elephant [Lv. 1875] [Boss]" then
		 MsBoss = "Captain Elephant [Lv. 1875] [Boss]"
		 NameBoss = "Captain Elephant"
		 NameQuestBoss = "DeepForestIsland"             
		 LevelQuestBoss = 3
		 CFrameQuestBoss = CFrame.new(-13232, 333, -7631)
		 CFrameBoss = CFrame.new(-13221, 325, -8405)
	 elseif SelectBoss == "Beautiful Pirate [Lv. 1950] [Boss]" then
		 MsBoss = "Beautiful Pirate [Lv. 1950] [Boss]"
		 NameBoss = "Beautiful Pirate"
		 NameQuestBoss = "DeepForestIsland2"             
		 LevelQuestBoss = 3
		 CFrameQuestBoss = CFrame.new(-12686, 391, -9902)
		 CFrameBoss = CFrame.new(5182, 23, -20)
	 elseif SelectBoss == "Cake Queen [Lv. 2175] [Boss]" then
		 MsBoss = "Cake Queen [Lv. 2175] [Boss]"
		 NameBoss = "Cake Queen"
		 NameQuestBoss = "IceCreamIslandQuest"             
		 LevelQuestBoss = 3
		 CFrameQuestBoss = CFrame.new(-716, 382, -11010)
		 CFrameBoss = CFrame.new(-821, 66, -10965)
	 elseif SelectBoss == "rip_indra True Form [Lv. 5000] [Raid Boss]" then
		 MsBoss = "rip_indra True Form [Lv. 5000] [Raid Boss]"
		 NameBoss = "rip_indra True Form"
		 CFrameBoss = CFrame.new(-5359, 424, -2735)
	 elseif SelectBoss == "Longma [Lv. 2000] [Boss]" then
		 MsBoss = "Longma [Lv. 2000] [Boss]"
		 NameBoss = "Longma"
		 CFrameBoss = CFrame.new(-10248.3936, 353.79129, -9306.34473)
	 elseif SelectBoss == "Soul Reaper [Lv. 2100] [Raid Boss]" then
		 MsBoss = "Soul Reaper [Lv. 2100] [Raid Boss]"
		 NameBoss = "Soul Reaper"
		 CFrameBoss = CFrame.new(-9515.62109, 315.925537, 6691.12012)
	 end
 end
 _G.GetBoss = false
 function GetBossName()
	 for i,v in pairs(game.ReplicatedStorage:GetChildren()) do
		 if not _G.GetBoss then
			 -- World 1
			 if v.Name == "The Gorilla King [Lv. 25] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 20  then
				 _G.Settings.Boss["Select Boss"] = "The Gorilla King [Lv. 25] [Boss]"
			 elseif v.Name == "Bobby [Lv. 55] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 55  then
				 _G.Settings.Boss["Select Boss"] = "Bobby [Lv. 55] [Boss]" 
			 elseif v.Name == "Yeti [Lv. 110] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 105  then
				 _G.Settings.Boss["Select Boss"] = "Yeti [Lv. 110] [Boss]"
			 elseif v.Name == "Mob Leader [Lv. 120] [Boss]"  and game.Players.localPlayer.Data.Level.Value >= 120 then
				 _G.Settings.Boss["Select Boss"] = "Mob Leader [Lv. 120] [Boss]"
			 elseif v.Name == "Vice Admiral [Lv. 130] [Boss]"  and game.Players.localPlayer.Data.Level.Value >= 130 then
				 _G.Settings.Boss["Select Boss"] = "Vice Admiral [Lv. 130] [Boss]"
			 elseif v.Name == "Warden [Lv. 175] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 175 then
				 _G.Settings.Boss["Select Boss"] = "Warden [Lv. 175] [Boss]"
			 elseif v.Name == "Saber Expert [Lv. 200] [Boss]" and game.Workspace.Map.Jungle.Final.Part.Transparency == 1 then
				 _G.Settings.Boss["Select Boss"] = "Saber Expert [Lv. 200] [Boss]"
			 elseif v.Name == "Chief Warden [Lv. 200] [Boss]"  and game.Players.localPlayer.Data.Level.Value >= 200 then
				 _G.Settings.Boss["Select Boss"] = "Chief Warden [Lv. 200] [Boss]"
			 elseif v.Name == "Swan [Lv. 225] [Boss]"  and game.Players.localPlayer.Data.Level.Value >= 250 then
				 _G.Settings.Boss["Select Boss"] = "Swan [Lv. 225] [Boss]"
			 elseif v.Name == "Magma Admiral [Lv. 350] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 350  then
				 _G.Settings.Boss["Select Boss"] = "Magma Admiral [Lv. 350] [Boss]"
			 elseif v.Name == "Fishman Lord [Lv. 425] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 425  then
				 _G.Settings.Boss["Select Boss"] = "Fishman Lord [Lv. 425] [Boss]"
			 elseif v.Name == "Wysper [Lv. 500] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 500 then
				 _G.Settings.Boss["Select Boss"] = "Wysper [Lv. 500] [Boss]"
			 elseif v.Name == "Thunder God [Lv. 575] [Boss]"  and game.Players.localPlayer.Data.Level.Value >= 575 then
				 _G.Settings.Boss["Select Boss"] = "Thunder God [Lv. 575] [Boss]"
			 elseif v.Name == "Cyborg [Lv. 675] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 675 then
				 _G.Settings.Boss["Select Boss"] = "Cyborg [Lv. 675] [Boss]"
				 -- World2
			 elseif v.Name == "Diamond [Lv. 750] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 750 then
				 _G.Settings.Boss["Select Boss"] = "Diamond [Lv. 750] [Boss]"
			 elseif v.Name == "Jeremy [Lv. 850] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 850 then
				 _G.Settings.Boss["Select Boss"] = "Jeremy [Lv. 850] [Boss]"
			 elseif v.Name == "Fajita [Lv. 925] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 925  then
				 _G.Settings.Boss["Select Boss"] = "Fajita [Lv. 925] [Boss]"
			 elseif v.Name == "Don Swan [Lv. 1000] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 1000 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","1") == 0 then
				 _G.Settings.Boss["Select Boss"] = "Don Swan [Lv. 1000] [Boss]" 
			 elseif v.Name == "Smoke Admiral [Lv. 1150] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 1150 then
				 _G.Settings.Boss["Select Boss"] = "Smoke Admiral [Lv. 1150] [Boss]"
			 elseif v.Name == "Cursed Captain [Lv. 1325] [Raid Boss]" and game.Players.localPlayer.Data.Level.Value >= 1325 then
				 _G.Settings.Boss["Select Boss"] = "Cursed Captain [Lv. 1325] [Raid Boss]"
			 elseif v.Name == "Awakened Ice Admiral [Lv. 1400] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 1400  then
				 _G.Settings.Boss["Select Boss"] = "Awakened Ice Admiral [Lv. 1400] [Boss]"
			 elseif v.Name == "Tide Keeper [Lv. 1475] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 1475  then
				 _G.Settings.Boss["Select Boss"] = "Tide Keeper [Lv. 1475] [Boss]"
				 -- World3
			 elseif v.Name == "Stone [Lv. 1550] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 1550 then
				 _G.Settings.Boss["Select Boss"] = "Stone [Lv. 1550] [Boss]"
			 elseif v.Name == "Island Empress [Lv. 1675] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 1675 then
				 _G.Settings.Boss["Select Boss"] = "Island Empress [Lv. 1675] [Boss]"
			 elseif v.Name == "Kilo Admiral [Lv. 1750] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 1750 then
				 _G.Settings.Boss["Select Boss"] = "Kilo Admiral [Lv. 1750] [Boss]"
			 elseif v.Name == "Captain Elephant [Lv. 1875] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 1875 then
				 _G.Settings.Boss["Select Boss"] = "Captain Elephant [Lv. 1875] [Boss]"
			 elseif v.Name == "Beautiful Pirate [Lv. 1950] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 1950 then
				 _G.Settings.Boss["Select Boss"] = "Beautiful Pirate [Lv. 1950] [Boss]"
			 elseif v.Name == "Cake Queen [Lv. 2175] [Boss]" and game.Players.localPlayer.Data.Level.Value >= 2175 then
				 _G.Settings.Boss["Select Boss"] = "Cake Queen [Lv. 2175] [Boss]"
			 end 
		 end 
	 end
 end
 function CheckQuest()
	 local MyLevel = game.Players.LocalPlayer.Data.Level.Value
	 if Old_World then
		 if MyLevel == 1 or MyLevel <= 9 then -- Bandit
			 LevelFarm = 1
 
			 Name = "Bandit [Lv. 5]"
			 QuestName = "BanditQuest1"
 
			 LevelQuest = 1
			 NameMon = "Bandit"
 
			 CFrameMon = CFrame.new(1145, 17, 1634)
			 VectorMon = Vector3.new(1145, 17, 1634)
 
			 CFrameQuest = CFrame.new(1060, 17, 1547)
			 VectorQuest = Vector3.new(1060, 17, 1547)
		 elseif MyLevel == 10 or MyLevel <= 14 then -- Monkey
			 LevelFarm = 2
 
			 Name = "Monkey [Lv. 14]"
			 QuestName = "JungleQuest"
 
			 LevelQuest = 1
			 NameMon = "Monkey"
 
			 CFrameMon = CFrame.new(-1496, 39, 35)
			 VectorMon = Vector3.new(-1496, 39, 35)
 
			 CFrameQuest = CFrame.new(-1602, 37, 152)
			 VectorQuest = Vector3.new(-1602, 37, 152)
		 elseif MyLevel == 15 or MyLevel <= 29 then -- Gorilla
			 LevelFarm = 3
 
			 Name = "Gorilla [Lv. 20]"
			 QuestName = "JungleQuest"
 
			 LevelQuest = 2
			 NameMon = "Gorilla"
 
			 CFrameMon = CFrame.new(-1237, 6, -486)
			 VectorMon = Vector3.new(-1237, 7, -486)
 
			 CFrameQuest = CFrame.new(-1602, 37, 152)
			 VectorQuest = Vector3.new(-1602, 37, 152)
		 elseif MyLevel == 30 or MyLevel <= 39 then -- Pirate
			 LevelFarm = 4
 
			 Name = "Pirate [Lv. 35]"
			 QuestName = "BuggyQuest1"
 
			 LevelQuest = 1
			 NameMon = "Pirate"
 
			 CFrameMon = CFrame.new(-1115, 14, 3938)
			 VectorMon = Vector3.new(-1115, 14, 3938)
 
			 CFrameQuest = CFrame.new(-1140, 5, 3828)
			 VectorQuest = Vector3.new(-1140, 5, 3828)
		 elseif MyLevel == 40 or MyLevel <= 59 then -- Brute
			 LevelFarm = 5
 
			 Name = "Brute [Lv. 45]"
			 QuestName = "BuggyQuest1"
 
			 LevelQuest = 2
			 NameMon = "Brute"
 
			 CFrameMon = CFrame.new(-1145, 15, 4350)
			 VectorMon = Vector3.new(-1146, 15, 4350)
 
			 CFrameQuest = CFrame.new(-1140, 5, 3828)
			 VectorQuest = Vector3.new(-1140, 5, 3828)
		 elseif MyLevel == 60 or MyLevel <= 74 then -- Desert Bandit
			 LevelFarm = 6
 
			 Name = "Desert Bandit [Lv. 60]"
			 QuestName = "DesertQuest"
 
			 LevelQuest = 1
			 NameMon = "Desert Bandit"
 
			 CFrameMon = CFrame.new(932, 7, 4484)
			 VectorMon = Vector3.new(932, 7, 4484)
 
			 CFrameQuest = CFrame.new(897, 7, 4388)
			 VectorQuest = Vector3.new(897, 7, 4388)
		 elseif MyLevel == 75 or MyLevel <= 89 then -- Desert Officre
			 LevelFarm = 7
 
			 Name = "Desert Officer [Lv. 70]"
			 QuestName = "DesertQuest"
 
			 LevelQuest = 2
			 NameMon = "Desert Officer"
 
			 CFrameMon = CFrame.new(1572, 10, 4373)
			 VectorMon = Vector3.new(1572, 10, 4373)
 
			 CFrameQuest = CFrame.new(897, 7, 4388)
			 VectorQuest = Vector3.new(897, 7, 4388)
		 elseif MyLevel == 90 or MyLevel <= 99 then -- Snow Bandits
			 LevelFarm = 8
 
			 Name = "Snow Bandit [Lv. 90]"
			 QuestName = "SnowQuest"
 
			 LevelQuest = 1
			 NameMon = "Snow Bandits"
 
			 CFrameMon = CFrame.new(1289, 150, -1442)
			 VectorMon = Vector3.new(1289, 106, -1442)
 
			 CFrameQuest = CFrame.new(1386, 87, -1297)
			 VectorQuest = Vector3.new(1386, 87, -1297)
		 elseif MyLevel == 100 or MyLevel <= 119 then -- Snowman
			 LevelFarm = 9
 
			 Name = "Snowman [Lv. 100]"
			 QuestName = "SnowQuest"
 
			 LevelQuest = 2
			 NameMon = "Snowman"
 
			 CFrameMon = CFrame.new(1289, 150, -1442)
			 VectorMon = Vector3.new(1289, 106, -1442)
 
			 CFrameQuest = CFrame.new(1386, 87, -1297)
			 VectorQuest = Vector3.new(1386, 87, -1297)
		 elseif MyLevel == 120 or MyLevel <= 149 then -- Chief Petty Officer
			 LevelFarm = 10
 
			 Name = "Chief Petty Officer [Lv. 120]"
			 QuestName = "MarineQuest2"
 
			 LevelQuest = 1
			 NameMon = "Chief Petty Officer"
 
			 CFrameMon = CFrame.new(-4855, 23, 4308)
			 VectorMon = Vector3.new(-4855, 23, 4308)
 
			 CFrameQuest = CFrame.new(-5036, 29, 4325)
			 VectorQuest = Vector3.new(-5036, 29, 4325)
		 elseif MyLevel == 150 or MyLevel <= 174 then -- Sky Bandit
			 LevelFarm = 11
 
			 Name = "Sky Bandit [Lv. 150]"
			 QuestName = "SkyQuest"
 
			 LevelQuest = 1
			 NameMon = "Sky Bandit"
 
			 CFrameMon = CFrame.new(-4981, 278, -2830)
			 VectorMon = Vector3.new(-4981, 278, -2830)
 
			 CFrameQuest = CFrame.new(-4842, 718, -2623)
			 VectorQuest = Vector3.new(-4842, 718, -2623)
		 elseif MyLevel == 175 or MyLevel <= 189 then -- Dark Master
			 LevelFarm = 12
 
			 Name = "Dark Master [Lv. 175]"
			 QuestName = "SkyQuest"
 
			 LevelQuest = 2
			 NameMon = "Dark Master"
 
			 CFrameMon = CFrame.new(-5250, 389, -2272)
			 VectorMon = Vector3.new(-5250, 389, -2272)
 
			 CFrameQuest = CFrame.new(-4842, 718, -2623)
			 VectorQuest = Vector3.new(-4842, 718, -2623)
		 elseif MyLevel == 190 or MyLevel <= 209 then -- Dark Master
			 LevelFarm = 13
 
			 Name = "Prisoner [Lv. 190]"
			 QuestName = "PrisonerQuest"
 
			 LevelQuest = 1
			 NameMon = "Prisoner"
 
			 CFrameMon = CFrame.new(5411, 96, 690)
			 VectorMon = Vector3.new(5411, 96, 690)
 
			 CFrameQuest = CFrame.new(5308, 2, 474)
			 VectorQuest = Vector3.new(5308, 2, 474)
		 elseif MyLevel == 210 or MyLevel <= 249 then -- Dark Master
			 LevelFarm = 14
 
			 Name = "Dangerous Prisoner [Lv. 210]"
			 QuestName = "PrisonerQuest"
 
			 LevelQuest = 2
			 NameMon = "Dangerous Prisoner"
 
			 CFrameMon = CFrame.new(5411, 96, 690)
			 VectorMon = Vector3.new(5411, 96, 690)
 
			 CFrameQuest = CFrame.new(5308, 2, 474)
			 VectorQuest = Vector3.new(5308, 2, 474)
		 elseif MyLevel == 250 or MyLevel <= 299 then -- Toga Warrior
			 LevelFarm = 15
 
			 Name = "Toga Warrior [Lv. 250]"
			 QuestName = "ColosseumQuest"
 
			 LevelQuest = 1
			 NameMon = "Toga Warrior"
 
			 CFrameMon = CFrame.new(-1824, 50, -2743)
			 VectorMon = Vector3.new(-1824, 50, -2743)
 
			 CFrameQuest = CFrame.new(-1576, 8, -2985)
			 VectorQuest = Vector3.new(-1576, 8, -2985)
		 elseif MyLevel == 300 or MyLevel <= 329 then -- Military Soldier
			 LevelFarm = 16
 
			 Name = "Military Soldier [Lv. 300]"
			 QuestName = "MagmaQuest"
 
			 LevelQuest = 1
			 NameMon = "Military Soldier"
 
			 CFrameMon = CFrame.new(-5408, 11, 8447)
			 VectorMon = Vector3.new(-5408, 11, 8447)
 
			 CFrameQuest = CFrame.new(-5316, 12, 8517)
			 VectorQuest = Vector3.new(-5316, 12, 8517)
		 elseif MyLevel == 330 or MyLevel <= 374 then -- Military Spy
			 LevelFarm = 17
 
			 Name = "Military Spy [Lv. 325]"
			 QuestName = "MagmaQuest"
 
			 LevelQuest = 2
			 NameMon = "Military Spy"
 
			 CFrameMon = CFrame.new(-5815, 84, 8820)
			 VectorMon = Vector3.new(-5815, 84, 8820)
 
			 CFrameQuest = CFrame.new(-5316, 12, 8517)
			 VectorQuest = Vector3.new(-5316, 12, 8517)
		 elseif MyLevel == 375 or MyLevel <= 399 then -- Fishman Warrior
			 LevelFarm = 18
 
			 Name = "Fishman Warrior [Lv. 375]"
			 QuestName = "FishmanQuest"
 
			 LevelQuest = 1
			 NameMon = "Fishman Warrior"
 
			 CFrameMon = CFrame.new(60859, 19, 1501)
			 VectorMon = Vector3.new(60859, 19, 1501)
 
			 CFrameQuest = CFrame.new(61123, 19, 1569)
			 VectorQuest = Vector3.new(61123, 19, 1569)
			 if (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
				 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
			 end
		 elseif MyLevel == 400 or MyLevel <= 449 then -- Fishman Commando
			 LevelFarm = 19
 
			 Name = "Fishman Commando [Lv. 400]"
			 QuestName = "FishmanQuest"
 
			 LevelQuest = 2
			 NameMon = "Fishman Commando"
 
			 CFrameMon = CFrame.new(61891, 19, 1470)
			 VectorMon = Vector3.new(61891, 19, 1470)
 
			 CFrameQuest = CFrame.new(61123, 19, 1569)
			 VectorQuest = Vector3.new(61123, 19, 1569)
						 if (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
				 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
			 end
		 elseif MyLevel == 450 or MyLevel <= 474 then -- God's Guards
			 LevelFarm = 20
 
			 Name = "God's Guard [Lv. 450]"
			 QuestName = "SkyExp1Quest"
 
			 LevelQuest = 1
			 NameMon = "God's Guards"
 
			 CFrameMon = CFrame.new(-4698, 845, -1912)
			 VectorMon = Vector3.new(-4698, 845, -1912)
 
			 CFrameQuest = CFrame.new(-4722, 845, -1954)
			 VectorQuest = Vector3.new(-4722, 846, -1954)
			 if AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
						 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
					 end
		 elseif MyLevel == 475 or MyLevel <= 524 then -- Shandas
			 LevelFarm = 21
 
			 Name = "Shanda [Lv. 475]"
			 QuestName = "SkyExp1Quest"
 
			 LevelQuest = 2
			 NameMon = "Shandas"
 
			 CFrameMon = CFrame.new(-7685, 5567, -502)
			 VectorMon = Vector3.new(-7685, 5567, -502)
 
			 CFrameQuest = CFrame.new(-7862, 5546, -380)
			 VectorQuest = Vector3.new(-7862, 5546, -380)
			 if AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
						 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
					 end
		 elseif MyLevel == 525 or MyLevel <= 549 then -- Royal Squad
			 LevelFarm = 22
 
			 Name = "Royal Squad [Lv. 525]"
			 QuestName = "SkyExp2Quest"
 
			 LevelQuest = 1
			 NameMon = "Royal Squad"
 
			 CFrameMon = CFrame.new(-7670, 5607, -1460)
			 VectorMon = Vector3.new(-7670, 5607, -1460)
 
			 CFrameQuest = CFrame.new(-7904, 5636, -1412)
			 VectorQuest = Vector3.new(-7904, 5636, -1412)
		 elseif MyLevel == 550 or MyLevel <= 624 then -- Royal Soldier
			 LevelFarm = 23
 
			 Name = "Royal Soldier [Lv. 550]"
			 QuestName = "SkyExp2Quest"
 
			 LevelQuest = 2
			 NameMon = "Royal Soldier"
 
			 CFrameMon = CFrame.new(-7828, 5607, -1744)
			 VectorMon = Vector3.new(-7828, 5607, -1744)
 
			 CFrameQuest = CFrame.new(-7904, 5636, -1412)
			 VectorQuest = Vector3.new(-7904, 5636, -1412)
		 elseif MyLevel == 625 or MyLevel <= 649 then -- Galley Pirate
			 LevelFarm = 24
 
			 Name = "Galley Pirate [Lv. 625]"
			 QuestName = "FountainQuest"
 
			 LevelQuest = 1
			 NameMon = "Galley Pirate"
 
			 CFrameMon = CFrame.new(5589, 45, 3996)
			 VectorMon = Vector3.new(5589, 45, 3996)
 
			 CFrameQuest = CFrame.new(5256, 39, 4050)
			 VectorQuest = Vector3.new(5256, 39, 4050)
		 elseif MyLevel >= 650 then -- Galley Captain
			 LevelFarm = 25
 
			 Name = "Galley Captain [Lv. 650]"
			 QuestName = "FountainQuest"
 
			 LevelQuest = 2
			 NameMon = "Galley Captain"
 
			 CFrameMon = CFrame.new(5649, 39, 4936)
			 VectorMon = Vector3.new(5649, 39, 4936)
 
			 CFrameQuest = CFrame.new(5256, 39, 4050)
			 VectorQuest = Vector3.new(5256, 39, 4050)
		 end
	 end
	 if New_World then
		 if MyLevel == 700 or MyLevel <= 724 then -- Raider [Lv. 700]
			 LevelFarm = 1
 
			 Name = "Raider [Lv. 700]"
			 QuestName = "Area1Quest"
 
			 LevelQuest = 1
			 NameMon = "Raider"
 
			 CFrameQuest = CFrame.new(-425, 73, 1837)
			 VectorQuest = Vector3.new(-425, 73, 1837)
 
			 CFrameMon = CFrame.new(-746, 39, 2390)
			 VectorMon = Vector3.new(-746, 39, 2389)
		 elseif MyLevel == 725 or MyLevel <= 774 then -- Mercenary [Lv. 725]
			 LevelFarm = 2
 
			 Name = "Mercenary [Lv. 725]"
			 QuestName = "Area1Quest"
 
			 LevelQuest = 2
			 NameMon = "Mercenary"
 
			 CFrameQuest = CFrame.new(-425, 73, 1837)
			 VectorQuest = Vector3.new(-425, 73, 1837)
 
			 CFrameMon = CFrame.new(-874, 141, 1312)
			 VectorMon = Vector3.new(-874, 141, 1312)
		 elseif MyLevel == 775 or MyLevel <= 799 then -- Swan Pirate [Lv. 775]
			 LevelFarm = 3
 
			 Name = "Swan Pirate [Lv. 775]"
			 QuestName = "Area2Quest"
 
			 LevelQuest = 1
			 NameMon = "Swan Pirate"
 
			 CFrameQuest = CFrame.new(634, 73, 918)
			 VectorQuest = Vector3.new(634, 73, 918)
 
			 CFrameMon = CFrame.new(878, 122, 1235)
			 VectorMon = Vector3.new(878, 122, 1235)
		 elseif MyLevel == 800 or MyLevel <= 874 then -- Factory Staff [Lv. 800]
			 LevelFarm = 4
 
			 Name = "Factory Staff [Lv. 800]"
			 QuestName = "Area2Quest"
 
			 LevelQuest = 2
			 NameMon = "Factory Staff"
 
			 CFrameQuest = CFrame.new(634, 73, 918)
			 VectorQuest = Vector3.new(634, 73, 918)
 
			 CFrameMon = CFrame.new(295, 73, -56)
			 VectorMon = Vector3.new(295, 73, -56)
		 elseif MyLevel == 875 or MyLevel <= 899 then -- Marine Lieutenant [Lv. 875]
			 LevelFarm = 5
 
			 Name = "Marine Lieutenant [Lv. 875]"
			 QuestName = "MarineQuest3"
 
			 LevelQuest = 1
			 NameMon = "Marine Lieutenant"
 
			 CFrameMon = CFrame.new(-2806, 73, -3038)
			 VectorMon = Vector3.new(-2806, 73, -3038)
 
			 CFrameQuest = CFrame.new(-2443, 73, -3219)
			 VectorQuest = Vector3.new(-2443, 73, -3219)
		 elseif MyLevel == 900 or MyLevel <= 949 then -- Marine Captain [Lv. 900]
			 LevelFarm = 6
 
			 Name = "Marine Captain [Lv. 900]"
			 QuestName = "MarineQuest3"
 
			 LevelQuest = 2
			 NameMon = "Marine Captain"
 
			 CFrameMon = CFrame.new(-1869, 73, -3320)
			 VectorMon = Vector3.new(-1869, 73, -3320)
 
			 CFrameQuest = CFrame.new(-2443, 73, -3219)
			 VectorQuest = Vector3.new(-2443, 73, -3219)
		 elseif MyLevel == 950 or MyLevel <= 974 then -- Zombie [Lv. 950]
			 LevelFarm = 7
 
			 Name = "Zombie [Lv. 950]"
			 QuestName = "ZombieQuest"
 
			 LevelQuest = 1
			 NameMon = "Zombie"
 
			 CFrameMon = CFrame.new(-5736, 126, -728)
			 VectorMon = Vector3.new(-5736, 126, -728)
 
			 CFrameQuest = CFrame.new(-5494, 49, -795)
			 VectorQuest = Vector3.new(-5494, 49, -794)
		 elseif MyLevel == 975 or MyLevel <= 999 then -- Vampire [Lv. 975]
			 LevelFarm = 8
 
			 Name = "Vampire [Lv. 975]"
			 QuestName = "ZombieQuest"
 
			 LevelQuest = 2
			 NameMon = "Vampire"
 
			 CFrameMon = CFrame.new(-6033, 7, -1317)
			 VectorMon = Vector3.new(-6033, 7, -1317)
 
			 CFrameQuest = CFrame.new(-5494, 49, -795)
			 VectorQuest = Vector3.new(-5494, 49, -795)
		 elseif MyLevel == 1000 or MyLevel <= 1049 then -- Snow Trooper [Lv. 1000] **
			 LevelFarm = 9
 
			 Name = "Snow Trooper [Lv. 1000]"
			 QuestName = "SnowMountainQuest"
 
			 LevelQuest = 1
			 NameMon = "Snow Trooper"
 
			 CFrameMon = CFrame.new(478, 402, -5362)
			 VectorMon = Vector3.new(478, 402, -5362)
 
			 CFrameQuest = CFrame.new(605, 402, -5371)
			 VectorQuest = Vector3.new(605, 402, -5371)
		 elseif MyLevel == 1050 or MyLevel <= 1099 then -- Winter Warrior [Lv. 1050]
			 LevelFarm = 10
 
			 Name = "Winter Warrior [Lv. 1050]"
			 QuestName = "SnowMountainQuest"
 
			 LevelQuest = 2
			 NameMon = "Winter Warrior"
 
			 CFrameMon = CFrame.new(1157, 430, -5188)
			 VectorMon = Vector3.new(1157, 430, -5188)
 
			 CFrameQuest = CFrame.new(605, 402, -5371)
			 VectorQuest = Vector3.new(605, 402, -5371)
		 elseif MyLevel == 1100 or MyLevel <= 1124 then -- Lab Subordinate [Lv. 1100]
			 LevelFarm = 11
 
			 Name = "Lab Subordinate [Lv. 1100]"
			 QuestName = "IceSideQuest"
 
			 LevelQuest = 1
			 NameMon = "Lab Subordinate"
 
			 CFrameMon = CFrame.new(-5782, 42, -4484)
			 VectorMon = Vector3.new(-5782, 42, -4484)
 
			 CFrameQuest = CFrame.new(-6060, 16, -4905)
			 VectorQuest = Vector3.new(-6060, 16, -4905)
		 elseif MyLevel == 1125 or MyLevel <= 1174 then -- Horned Warrior [Lv. 1125]
			 LevelFarm = 12
 
			 Name = "Horned Warrior [Lv. 1125]"
			 QuestName = "IceSideQuest"
 
			 LevelQuest = 2
			 NameMon = "Horned Warrior"
 
			 CFrameMon = CFrame.new(-6406, 24, -5805)
			 VectorMon = Vector3.new(-6406, 24, -5805)
 
			 CFrameQuest = CFrame.new(-6060, 16, -4905)
			 VectorQuest = Vector3.new(-6060, 16, -4905)
		 elseif MyLevel == 1175 or MyLevel <= 1199 then -- Magma Ninja [Lv. 1175]
			 LevelFarm = 13
 
			 Name = "Magma Ninja [Lv. 1175]"
			 QuestName = "FireSideQuest"
			 LevelQuest = 1
			 NameMon = "Magma Ninja"
 
			 CFrameMon = CFrame.new(-5428, 78, -5959)
			 VectorMon = Vector3.new(-5428, 78, -5959)
 
			 CFrameQuest = CFrame.new(-5430, 16, -5295)
			 VectorQuest = Vector3.new(-5430, 16, -5296)
		 elseif MyLevel == 1200 or MyLevel <= 1249 then -- Lava Pirate [Lv. 1200]
			 LevelFarm = 14
 
			 Name = "Lava Pirate [Lv. 1200]"
			 QuestName = "FireSideQuest"
 
			 LevelQuest = 2
			 NameMon = "Lava Pirate"
 
			 CFrameMon = CFrame.new(-5270, 42, -4800)
			 VectorMon = Vector3.new(-5270, 42, -4800)
 
			 CFrameQuest = CFrame.new(-5430, 16, -5295)
			 VectorQuest = Vector3.new(-5430, 16, -5296)
		 elseif MyLevel == 1250 or MyLevel <= 1274 then -- Ship Deckhand [Lv. 1250]
			 LevelFarm = 15
 
			 Name = "Ship Deckhand [Lv. 1250]"
			 QuestName = "ShipQuest1"
 
			 LevelQuest = 1
			 NameMon = "Ship Deckhand"
 
			 CFrameMon = CFrame.new(1198, 126, 33031)
			 VectorMon = Vector3.new(1198, 126, 33031)
 
			 CFrameQuest = CFrame.new(1038, 125, 32913)
			 VectorQuest = Vector3.new(1038, 125, 32913)
		 elseif MyLevel == 1275 or MyLevel <= 1299 then -- Ship Engineer [Lv. 1275]
			 LevelFarm = 16
 
			 Name = "Ship Engineer [Lv. 1275]"
			 QuestName = "ShipQuest1"
 
			 LevelQuest = 2
			 NameMon = "Ship Engineer"
 
			 CFrameMon = CFrame.new(918, 44, 32787)
			 VectorMon = Vector3.new(918, 44, 32787)
 
			 CFrameQuest = CFrame.new(1038, 125, 32913)
			 VectorQuest = Vector3.new(1038, 125, 32913)
		 elseif MyLevel == 1300 or MyLevel <= 1324 then -- Ship Steward [Lv. 1300]
			 LevelFarm = 17
 
			 Name = "Ship Steward [Lv. 1300]"
			 QuestName = "ShipQuest2"
 
			 LevelQuest = 1
			 NameMon = "Ship Steward"
 
			 CFrameMon = CFrame.new(915, 130, 33419)
			 VectorMon = Vector3.new(915, 130, 33419)
 
			 CFrameQuest = CFrame.new(969, 125, 33245)
			 VectorQuest = Vector3.new(969, 125, 33245)
		 elseif MyLevel == 1325 or MyLevel <= 1349 then -- Ship Officer [Lv. 1325]
			 LevelFarm = 18
 
			 Name = "Ship Officer [Lv. 1325]"
			 QuestName = "ShipQuest2"
 
			 LevelQuest = 2
			 NameMon = "Ship Officer"
 
			 CFrameMon = CFrame.new(916, 181, 33335)
			 VectorMon = Vector3.new(916, 181, 33335)
 
			 CFrameQuest = CFrame.new(969, 125, 33245)
			 VectorQuest = Vector3.new(969, 125, 33245)
		 elseif MyLevel == 1350 or MyLevel <= 1374 then -- Arctic Warrior [Lv. 1350]
			 LevelFarm = 19
 
			 Name = "Arctic Warrior [Lv. 1350]"
			 QuestName = "FrostQuest"
 
			 LevelQuest = 1
			 NameMon = "Arctic Warrior"
 
			 CFrameMon = CFrame.new(6038, 29, -6231)
			 VectorMon = Vector3.new(6038, 29, -6231)
 
			 VectorQuest = Vector3.new(5669, 28, -6482)
			 CFrameQuest = CFrame.new(5669, 28, -6482)
		 elseif MyLevel == 1375 or MyLevel <= 1424 then -- Snow Lurker [Lv. 1375]
			 LevelFarm = 20
 
			 Name = "Snow Lurker [Lv. 1375]"
			 QuestName = "FrostQuest"
 
			 LevelQuest = 2
			 NameMon = "Snow Lurker"
 
			 CFrameMon = CFrame.new(5560, 42, -6826)
			 VectorMon = Vector3.new(5560, 42, -6826)
 
			 VectorQuest = Vector3.new(5669, 28, -6482)
			 CFrameQuest = CFrame.new(5669, 28, -6482)
		 elseif MyLevel == 1425 or MyLevel <= 1449 then -- Sea Soldier [Lv. 1425]
			 LevelFarm = 21
			 Name = "Sea Soldier [Lv. 1425]"
			 QuestName = "ForgottenQuest"
 
			 LevelQuest = 1
			 NameMon = "Sea Soldier"
 
			 CFrameMon = CFrame.new(-3022, 16, -9722)
			 VectorMon = Vector3.new(-3022, 16, -9722)
 
			 CFrameQuest = CFrame.new(-3054, 237, -10148)
			 VectorQuest = Vector3.new(-3054, 237, -10148)
		 elseif MyLevel >= 1450 then -- Water Fighter [Lv. 1450]
			 LevelFarm = 22
			 Name = "Water Fighter [Lv. 1450]"
			 QuestName = "ForgottenQuest"
 
			 LevelQuest = 2
			 NameMon = "Water Fighter"
 
			 CFrameMon = CFrame.new(-3385, 239, -10542)
			 VectorMon = Vector3.new(-3385, 239, -10542)
 
			 CFrameQuest = CFrame.new(-3054, 237, -10148)
			 VectorQuest = Vector3.new(-3054, 237, -10148)
		 end
	 end
	 if Three_World then
		 if MyLevel == 1500 or MyLevel <= 1524 then
			 LevelFarm = 1
 
			 Name = "Pirate Millionaire [Lv. 1500]"
			 QuestName = "PiratePortQuest"
 
			 LevelQuest = 1
			 NameMon = "Pirate"
 
			 CFrameMon = CFrame.new(-373, 75, 5550)
			 VectorMon = Vector3.new(-373, 75, 5550)
 
			 CFrameQuest = CFrame.new(-288, 44, 5576)
			 VectorQuest = Vector3.new(-288, 44, 5576)
		 elseif MyLevel == 1525 or MyLevel <= 1574 then
			 LevelFarm = 2
 
			 Name = "Pistol Billionaire [Lv. 1525]"
			 QuestName = "PiratePortQuest"
 
			 LevelQuest = 2
			 NameMon = "Pistol"
 
			 CFrameMon = CFrame.new(-469, 74, 5904)
			 VectorMon = Vector3.new(-469, 74, 5904)
 
			 CFrameQuest = CFrame.new(-288, 44, 5576)
			 VectorQuest = Vector3.new(-288, 44, 5576)
		 elseif MyLevel == 1575 or MyLevel <= 1599 then
			 LevelFarm = 3
 
			 Name = "Dragon Crew Warrior [Lv. 1575]"
			 QuestName = "AmazonQuest"
 
			 LevelQuest = 1
			 NameMon = "Warrior"
 
			 CFrameMon = CFrame.new(6339, 52, -1213)
			 VectorMon = Vector3.new(6338, 52, -1213)
 
			 CFrameQuest = CFrame.new(5835, 52, -1105)
			 VectorQuest = Vector3.new(5835, 52, -1105)
		 elseif MyLevel == 1600 or MyLevel <= 1624 then
			 LevelFarm = 4
 
			 Name = "Dragon Crew Archer [Lv. 1600]"
			 QuestName = "AmazonQuest"
 
			 LevelQuest = 2
			 NameMon = "Archer"
 
			 CFrameMon = CFrame.new(6594, 383, 139)
			 VectorMon = Vector3.new(6594, 383, 139)
 
			 CFrameQuest = CFrame.new(5835, 52, -1105)
			 VectorQuest = Vector3.new(5835, 52, -1105)
		 elseif MyLevel == 1625 or MyLevel <= 1649 then
			 LevelFarm = 5
 
			 Name = "Female Islander [Lv. 1625]"
			 QuestName = "AmazonQuest2"
 
			 LevelQuest = 1
			 NameMon = "Female"
 
			 CFrameMon = CFrame.new(5308, 819, 1047)
			 VectorMon = Vector3.new(5308, 819, 1047)
 
			 CFrameQuest = CFrame.new(5443, 602, 751)
			 VectorQuest = Vector3.new(5443, 602, 751)
		 elseif MyLevel == 1650 or MyLevel <= 1699 then
			 LevelFarm = 6
 
			 Name = "Giant Islander [Lv. 1650]"
			 QuestName = "AmazonQuest2"
 
			 LevelQuest = 2
			 NameMon = "Giant Islanders"
 
			 CFrameMon = CFrame.new(4951, 602, -68)
			 VectorMon = Vector3.new(4951, 602, -68)
 
			 CFrameQuest = CFrame.new(5443, 602, 751)
			 VectorQuest = Vector3.new(5443, 602, 751)
		 elseif MyLevel == 1700 or MyLevel <= 1724 then
			 LevelFarm = 7
 
			 Name = "Marine Commodore [Lv. 1700]"
			 QuestName = "MarineTreeIsland"
 
			 LevelQuest = 1
			 NameMon = "Marine Commodore"
 
			 CFrameMon = CFrame.new(2447, 73, -7470)
			 VectorMon = Vector3.new(2447, 73, -7470)
 
			 CFrameQuest = CFrame.new(2180, 29, -6737)
			 VectorQuest = Vector3.new(2180, 29, -6737)
		 elseif MyLevel == 1725 or MyLevel <= 1774 then
			 LevelFarm = 8
 
			 Name = "Marine Rear Admiral [Lv. 1725]"
			 QuestName = "MarineTreeIsland"
 
			 LevelQuest = 2
			 NameMon = "Marine Rear Admiral"
 
			 CFrameMon = CFrame.new(3671, 161, -6932)
			 VectorMon = Vector3.new(3671, 161, -6932)
 
			 CFrameQuest = CFrame.new(2180, 29, -6737)
			 VectorQuest = Vector3.new(2180, 29, -6737)
		 elseif MyLevel == 1775 or MyLevel <= 1800 then
			 LevelFarm = 9
 
			 Name = "Fishman Raider [Lv. 1775]"
			 QuestName = "DeepForestIsland3"
 
			 LevelQuest = 1
			 NameMon = "Fishman Raider"
 
			 CFrameMon = CFrame.new(-10560, 332, -8466)
			 VectorMon = Vector3.new(-10560, 332, -8466)
 
			 CFrameQuest = CFrame.new(-10584, 332, -8758)
			 VectorQuest = Vector3.new(-10584, 332, -8758)
		 elseif MyLevel == 1800 or MyLevel <= 1824 then
			 LevelFarm = 10
 
			 Name = "Fishman Captain [Lv. 1800]"
			 QuestName = "DeepForestIsland3"
 
			 LevelQuest = 2
			 NameMon = "Fishman Captain"
 
			 CFrameMon = CFrame.new(-10993, 332, -8940)
			 VectorMon = Vector3.new(-10993, 332, -8940)
 
			 CFrameQuest = CFrame.new(-10584, 332, -8758)
			 VectorQuest = Vector3.new(-10584, 332, -8758)
		 elseif MyLevel == 1825 or MyLevel <= 1849 then
			 LevelFarm = 11
 
			 Name = "Forest Pirate [Lv. 1825]"
			 QuestName = "DeepForestIsland"
 
			 LevelQuest = 1
			 NameMon = "Forest Pirate"
 
			 CFrameMon = CFrame.new(-13479, 333, -7905)
			 VectorMon = Vector3.new(-13479, 333, -7905)
 
			 CFrameQuest = CFrame.new(-13232, 333, -7627)
			 VectorQuest = Vector3.new(-13232, 333, -7627)
		 elseif MyLevel == 1850 or MyLevel <= 1899 then
			 LevelFarm = 12
 
			 Name = "Mythological Pirate [Lv. 1850]"
			 QuestName = "DeepForestIsland"
 
			 LevelQuest = 2
			 NameMon = "Mythological Pirate"
 
			 CFrameMon = CFrame.new(-13545, 470, -6917)
			 VectorMon = Vector3.new(-13545, 470, -6917)
 
			 CFrameQuest = CFrame.new(-13232, 333, -7627)
			 VectorQuest = Vector3.new(-13232, 333, -7627)
		 elseif MyLevel == 1900 or MyLevel <= 1924 then
			 LevelFarm = 13
 
			 Name = "Jungle Pirate [Lv. 1900]"
			 QuestName = "DeepForestIsland2"
 
			 LevelQuest = 1
			 NameMon = "Jungle Pirate"
 
			 CFrameMon = CFrame.new(-12107, 332, -10549)
			 VectorMon = Vector3.new(-12106, 332, -10549)
 
			 CFrameQuest = CFrame.new(-12684, 391, -9902)
			 VectorQuest = Vector3.new(-12684, 391, -9902)
		 elseif MyLevel == 1925 or MyLevel <= 1974 then
			 LevelFarm = 14
 
			 Name = "Musketeer Pirate [Lv. 1925]"
			 QuestName = "DeepForestIsland2"
 
			 LevelQuest = 2
			 NameMon = "Musketeer Pirate"
 
			 CFrameMon = CFrame.new(-13286, 392, -9769)
			 VectorMon = Vector3.new(-13286, 392, -9768)
 
			 CFrameQuest = CFrame.new(-12684, 391, -9902)
			 VectorQuest = Vector3.new(-12684, 391, -9902)
		 elseif MyLevel == 1975 or MyLevel <= 1999 then
			 LevelFarm = 15
			 Name = "Reborn Skeleton [Lv. 1975]"
			 QuestName = "HauntedQuest1"
 
			 LevelQuest = 1
			 NameMon = "Reborn Skeleton"
 
			 CFrameMon = CFrame.new(-8760, 142, 6039)
			 VectorMon = Vector3.new(-8760, 142, 6039)
 
			 CFrameQuest = CFrame.new(-9482, 142, 5567)
			 VectorQuest = Vector3.new(-9482, 142, 5567)
		 elseif MyLevel == 2000 or MyLevel <= 2024 then
			 LevelFarm = 16
 
			 Name = "Living Zombie [Lv. 2000]"
			 QuestName = "HauntedQuest1"
 
			 LevelQuest = 2
			 NameMon = "Living Zombie"
 
			 CFrameMon = CFrame.new(-10144, 140, 5932)
			 VectorMon = Vector3.new(-10144, 140, 5932)
 
			 CFrameQuest = CFrame.new(-9482, 142, 5567)
			 VectorQuest = Vector3.new(-9482, 142, 5567)
		 elseif MyLevel == 2025 or MyLevel <= 2049 then
			 LevelFarm = 17
 
			 Name = "Demonic Soul [Lv. 2025]"
			 QuestName = "HauntedQuest2"
 
			 LevelQuest = 1
			 NameMon = "Demonic Soul"
 
			 CFrameMon = CFrame.new(-9507, 172, 6158)
			 VectorMon = Vector3.new(-9506, 172, 6158)
 
			 CFrameQuest = CFrame.new(-9513, 172, 6079)
			 VectorQuest = Vector3.new(-9513, 172, 6079)
		 elseif MyLevel == 2050 or MyLevel <= 2074 then
			 LevelFarm = 18
 
			 Name = "Posessed Mummy [Lv. 2050]"
			 QuestName = "HauntedQuest2"
 
			 LevelQuest = 2
			 NameMon = "Posessed Mummy"
 
			 CFrameMon = CFrame.new(-9577, 6, 6223)
			 VectorMon = Vector3.new(-9577, 6, 6223)
 
			 CFrameQuest = CFrame.new(-9513, 172, 6079)
			 VectorQuest = Vector3.new(-9513, 172, 6079)
 
		 elseif MyLevel == 2075 or MyLevel <= 2099 then
			 LevelFarm = 19
 
			 Name = "Peanut Scout [Lv. 2075]"
			 QuestName = "NutsIslandQuest"
 
			 LevelQuest = 1
			 NameMon = "Peanut Scout"
 
			 CFrameMon = CFrame.new(-2124, 123, -10435)
			 VectorMon = Vector3.new(-2124, 123, -10435)
 
			 CFrameQuest = CFrame.new(-2104, 38, -10192)
			 VectorQuest = Vector3.new(-2104, 38, -10192)
		 elseif MyLevel == 2100 or MyLevel <= 2124 then
			 LevelFarm = 20
 
			 Name = "Peanut President [Lv. 2100]"
			 QuestName = "NutsIslandQuest"
 
			 LevelQuest = 2
			 NameMon = "Peanut President"
 
			 CFrameMon = CFrame.new(-2124, 123, -10435)
			 VectorMon = Vector3.new(-2124, 123, -10435)
 
			 CFrameQuest = CFrame.new(-2104, 38, -10192)
			 VectorQuest = Vector3.new(-2104, 38, -10192)
		 elseif MyLevel == 2125 or MyLevel <= 2149 then
			 LevelFarm = 21
 
			 Name = "Ice Cream Chef [Lv. 2125]"
			 QuestName = "IceCreamIslandQuest"
 
			 LevelQuest = 1
			 NameMon = "Ice Cream Chef"
 
			 CFrameMon = CFrame.new(-641, 127, -11062)
			 VectorMon = Vector3.new(-641, 127, -11062)
 
			 CFrameQuest = CFrame.new(-822, 66, -10965)
			 VectorQuest = Vector3.new(-822, 66, -10965)
		 elseif MyLevel == 2150 or MyLevel <= 2199 then
			 LevelFarm = 22
 
			 Name = "Ice Cream Commander [Lv. 2150]"
			 QuestName = "IceCreamIslandQuest"
 
			 LevelQuest = 2
			 NameMon = "Ice Cream Commander"
 
			 CFrameMon = CFrame.new(-641, 127, -11062)
			 VectorMon = Vector3.new(-641, 127, -11062)
 
			 CFrameQuest = CFrame.new(-822, 66, -10965)
			 VectorQuest = Vector3.new(-822, 66, -10965)
			 ---------------------------------------------------------------
		 elseif MyLevel == 2200 or MyLevel <= 2224 then
			 LevelFarm = 23
 
			 Name = "Cookie Crafter [Lv. 2200]"
			 QuestName = "CakeQuest1"
 
			 LevelQuest = 1
			 NameMon = "Cookie Crafter"
 
			 CFrameMon = CFrame.new(-2365, 38, -12099)
			 VectorMon = Vector3.new(-2365, 38, -12099)
 
			 CFrameQuest = CFrame.new(-2020, 38, -12025)
			 VectorQuest = Vector3.new(-2020, 38, -12025)
		 elseif MyLevel == 2225 or MyLevel <= 2249 then
			 LevelFarm = 24
 
			 Name = "Cake Guard [Lv. 2225]"
			 QuestName = "CakeQuest1"
 
			 LevelQuest = 2
			 NameMon = "Cake Guard"
 
			 CFrameMon = CFrame.new(-1651, 38, -12308)
			 VectorMon = Vector3.new(-1651, 38, -12308)
 
			 CFrameQuest = CFrame.new(-2020, 38, -12025)
			 VectorQuest = Vector3.new(-2020, 38, -12025)
		 elseif MyLevel == 2250 or MyLevel <= 2274 then
			 LevelFarm = 25
 
			 Name = "Baking Staff [Lv. 2250]"
			 QuestName = "CakeQuest2"
 
			 LevelQuest = 1
			 NameMon = "Baking Staff"
 
			 CFrameMon = CFrame.new(-1870, 38, -12938)
			 VectorMon = Vector3.new(-1870, 38, -12938)
 
			 CFrameQuest = CFrame.new(-1926, 38, -12850)
			 VectorQuest = Vector3.new(-1926, 38, -12850)
		 elseif MyLevel == 2275 or MyLevel <= 2299 then
			 LevelFarm = 26
 
			 Name = "Head Baker [Lv. 2275]"
			 QuestName = "CakeQuest2"
 
			 LevelQuest = 2
			 NameMon = "Head Baker"
 
			 CFrameMon = CFrame.new(-1926, 88, -12850)
			 VectorMon = CFrame.new(-1870, 38, -12938)
 
			 CFrameQuest = CFrame.new(-1926, 38, -12850)
			 VectorQuest = Vector3.new(-1926, 38, -12850)
			 ---------------------------------------------------------------
		 elseif MyLevel == 2300 or MyLevel <= 2324 then
			 LevelFarm = 27
 
			 Name = "Cocoa Warrior [Lv. 2300]"
			 QuestName = "ChocQuest1"
 
			 LevelQuest = 1
			 NameMon = "Cocoa Warrior"
 
			 CFrameMon = CFrame.new(231, 23, -12194)
			 VectorMon = CFrame.new(231, 23, -12194)
 
			 CFrameQuest = CFrame.new(231, 23, -12194)
			 VectorQuest = Vector3.new(231, 23, -12194)
		 elseif MyLevel == 2325 or MyLevel <= 2349 then
			 LevelFarm = 28
 
			 Name = "Chocolate Bar Battler [Lv. 2325]"
			 QuestName = "ChocQuest1"
 
			 LevelQuest = 2
			 NameMon = "Chocolate Bar Battler"
 
			 CFrameMon = CFrame.new(231, 23, -12194)
			 VectorMon = CFrame.new(231, 23, -12194)
 
			 CFrameQuest = CFrame.new(231, 23, -12194)
			 VectorQuest = Vector3.new(231, 23, -12194)
		 elseif MyLevel == 2350 or MyLevel <= 2374 then
			 LevelFarm = 29
 
			 Name = "Sweet Thief [Lv. 2350]"
			 QuestName = "ChocQuest2"
 
			 LevelQuest = 1
			 NameMon = "Sweet Thief"
 
			 CFrameMon = CFrame.new(71, 77, -12632)
			 VectorMon = CFrame.new(71, 77, -12632)
 
			 CFrameQuest = CFrame.new(151, 23, -12774)
			 VectorQuest = Vector3.new(151, 23, -12774)
		 elseif MyLevel == 2375 or MyLevel <= 2400 then
			 LevelFarm = 30
 
			 Name = "Candy Rebel [Lv. 2375]"
			 QuestName = "ChocQuest2"
 
			 LevelQuest = 2
			 NameMon = "Candy Rebel"
 
			 CFrameMon = CFrame.new(134, 77, -12882)
			 VectorMon = CFrame.new(134, 77, -12882)
 
			 CFrameQuest = CFrame.new(151, 23, -12774)
			 VectorQuest = Vector3.new(151, 23, -12774)
		 elseif MyLevel == 2400 or MyLevel <= 2425 then
			 LevelFarm = 31
			 
			 Name = "Candy Pirate [Lv. 2400]"
			 QuestName = "CandyQuest1"
			 
			 LevelQuest = 1
			 NameMon = "Candy Pirate"
			 
			 CFrameMon = CFrame.new(-1408.46521, 16.1423531, -14552.2041, 0.90175873, -8.17216943e-08, -0.432239741, 7.81264475e-08, 1, -2.60746162e-08, 0.432239741, -1.02563433e-08, 0.90175873)
			 VectorQuest = Vector3.new(-1408.46521, 16.1423531, -14552.2041, 0.90175873, -8.17216943e-08, -0.432239741, 7.81264475e-08, 1, -2.60746162e-08, 0.432239741, -1.02563433e-08, 0.90175873)
			 
			 CFrameQuest = CFrame.new(-1151.48987, 16.1422901, -14445.6904, -0.316594511, -6.85698254e-08, -0.948560953, -2.05343067e-08, 1, -6.54346692e-08, 0.948560953, -1.23821675e-09, -0.316594511)
			 VectorQuest = Vector3.new(-1151.48987, 16.1422901, -14445.6904, -0.316594511, -6.85698254e-08, -0.948560953, -2.05343067e-08, 1, -6.54346692e-08, 0.948560953, -1.23821675e-09, -0.316594511)
		elseif MyLevel >= 2425 then
			 LevelFarm = 32
			 
			 Name = "Snow Demon [Lv. 2425]"
			 QuestName = "CandyQuest1"
			 
			 LevelQuest = 2
			 NameMon = "Snow Demon"
			 
			 CFrameMon = CFrame.new(-777.070862, 23.5809536, -14453.0078, 0.33384338, 0, -0.942628562, 0, 1, 0, 0.942628562, 0, 0.33384338)
			 VectorQuest = Vector3.new(-777.070862, 23.5809536, -14453.0078, 0.33384338, 0, -0.942628562, 0, 1, 0, 0.942628562, 0, 0.33384338)
			 
			 CFrameQuest = CFrame.new(-1151.48987, 16.1422901, -14445.6904, -0.316594511, -6.85698254e-08, -0.948560953, -2.05343067e-08, 1, -6.54346692e-08, 0.948560953, -1.23821675e-09, -0.316594511)
			 VectorQuest = Vector3.new(-1151.48987, 16.1422901, -14445.6904, -0.316594511, -6.85698254e-08, -0.948560953, -2.05343067e-08, 1, -6.54346692e-08, 0.948560953, -1.23821675e-09, -0.316594511)
		 end
	 end
 end
 
 
 function TP(P)
 local Distance = (P.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude -- จุดที่จะไป Position Only
 local Speed = 300 -- ความเร็วของมึง
 tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
 tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = P})
 tween:Play()
 end
 function TPER(P)
 local Distance = (P.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude -- จุดที่จะไป Position Only
 local Speed = 400-- ความเร็วของมึง
 tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
 tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = P})
 tween:Play()
 end
 function TP2(P)
 local Distance = (P.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude -- จุดที่จะไป Position Only
 local Speed = 999999999999999999 -- ความเร็วของมึง
 tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
 tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = P})
 tween:Play()
 end
 function TP3(P)
 CheckQuest()
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
 wait(0.1)
 tween:cancel()
 game.Players.LocalPlayer.Character.Humanoid:ChangeState(15)
 wait(0)
 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
 tween:cancel()
 end
 --------------------------------------------
 Library:SetWatermarkVisibility(true)
 
 function setwatermarktime()
	 local dgt = math.floor(workspace.DistributedGameTime+0.27322)
	 local hr = math.floor(dgt/(60^2))%24
	 local min = math.floor(dgt/(60^1))%60
	 local sec = math.floor(dgt/(60^0))%60
	 Library:SetWatermark("Demon Hub Premium Scripts | "..hr.." Hour(hr) "..min.." Minute(m) "..sec.." Second(s)")
  end
  
  spawn(function()
	  while task.wait(0) do 
		  pcall(function() setwatermarktime() 
		  end) 
	  end 
 end)
 
 local Window = Library:CreateWindow({
	 Title = 'Demon Hub Community Premium Scripts',
	 Center = true, 
	 AutoShow = true,
 })
 task.spawn(function()
	 while task.wait() do
		 Library:AttemptSave()
		 Window:SetWindowTitle("Demon Hub Premium Scripts - "..os.date('%A, %B %d %Y at %H:%M:%S'))
	 end
 end)
 local Tabs = {
	 -- Creates a new tab titled Main
	 ['General'] = Window:AddTab('General'), 
	 ['Meterials'] = Window:AddTab('Automatics'),
	 ['Combat'] = Window:AddTab('Combat'),
	 ['Teleport'] = Window:AddTab('Visuals'),
	 ['Other'] = Window:AddTab('Notify'),
	 ['UI Settings'] = Window:AddTab('Settings'),
 }
 local GeneralBox = Tabs['General']:AddLeftTabbox()
 local MasteryBox = Tabs['General']:AddLeftTabbox()
 local SettingBox = Tabs['General']:AddRightTabbox()
 local AutoSword = Tabs['General']:AddLeftTabbox()
 local Events = Tabs['General']:AddRightTabbox()
 local Mix = Tabs['General']:AddRightTabbox()
 local MeterialsBox = Tabs['Meterials']:AddLeftTabbox()
 local Sea1 = Tabs['Meterials']:AddLeftTabbox()
 local Sea2 = Tabs['Meterials']:AddLeftTabbox()
 local Sea3 = Tabs['Meterials']:AddLeftTabbox()
 local Ass = Tabs['Meterials']:AddRightTabbox()
 local Gun = Tabs['Meterials']:AddRightTabbox()
 local Statis = Tabs['Meterials']:AddRightTabbox()
 local UserInterface = Tabs['Meterials']:AddRightTabbox()
 local TeleportBox = Tabs['Teleport']:AddLeftTabbox()
 local TeleportBoxNpc = Tabs['Teleport']:AddLeftTabbox()
 local RaidBox = Tabs['Teleport']:AddRightTabbox()
 local TeleportBox1 = Tabs['Teleport']:AddRightTabbox()
 local Webhook = Tabs['Other']:AddLeftTabbox()
 local SettingTab = Tabs['UI Settings']:AddRightTabbox()
 
 local AutoFarm = GeneralBox:AddTab('Main')
 local AutoFarm1 = GeneralBox:AddTab('Fighting')
 local AutoFarm2 = GeneralBox:AddTab('Bosses')
 local SettingGeneral = SettingBox:AddTab('Settings')
 local SettingGeneral2 = SettingBox:AddTab('Stats')
 
 
 local Event = Events:AddTab[[\\ Events //]]
 
 spawn(function()
   while task.wait() do
	   pcall(function()
		 if AutoFarm or _G.SaveSetting.AutoFarm == true then
			 FarmInfo:SetText("Now Farming : Level")
		 elseif AutoFarmMaterial or _G.SaveSetting.AutoFarmMaterial == true then
			 FarmInfo:SetText("Now Farming : "..SelectModeMaterial)
		 elseif FarmMasterySword or _G.SaveSetting.FarmMasterySword == true then
			 FarmInfo:SetText("Now Farming : "..SelectSword)
		 elseif AutoStartRaid then
			 FarmInfo:SetText("Now Farming : Raid | "..SelectRaid)
		 elseif AutoRengoku or _G.SaveSetting.AutoRengoku == true then
			 FarmInfo:SetText("Now Farming : Rengoku")
		 elseif _G.SaveSetting.AutoFactory == true or AutoFactory then
			 FarmInfo:SetText("Now Farming : Factory")
		 elseif AutoBuddySowrd  then
			 FarmInfo:SetText("Now Farming : Buddy Sword")
		 elseif AutoTorch then
			 FarmInfo:SetText("Now Farming : Place All torch")
		 elseif AutoSaber or _G.SaveSetting.Autosaber then
			 FarmInfo:SetText("Now Farming : AutoSaber")
		 elseif _G.SaveSetting.AutoEliteHunter == true then
			 FarmInfo:SetText("Now Farming : Auto Elite Hunter")
		 elseif _G.SaveSetting.AutoKillBoss == true or AutoKillBoss then
			 FarmInfo:SetText("Now Farming : Bosses")
		 elseif _G.SaveSetting.FarmAura == true or FarmAura then
			 FarmInfo:SetText("Now Farming : Mob Aura")
		 elseif _G.SaveSetting.AutoCdk == true or Auto_Cursed_Dual_Katana then 
			 FarmInfo:SetText("Now Farming : CDK")
		 else 
			 FarmInfo:SetText("Now Farming : N/A")
			 tween:cancel()
			 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
			 end
		 end)
	 end
 end)
 AutoFarm:AddLabel[[      \\ Auto Farm Level //]]
 QuestStatus = AutoFarm:AddLabel("Quest:")
 Level_Status = AutoFarm:AddLabel("Hello")
 spawn(function()
	 while task.wait() do
		 CheckQuest()
		 Level_Status:SetText("Mon : "..Name)
		 wait(0)
		 QuestStatus:SetText("Quest : "..QuestName.." | Level "..LevelQuest)
		 wait(0)
		 if AutoFarm then
		 if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,NameMon) then
		 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
		 end
		 end
		 
 end
 end)
 function GetMaterial(matname)
	 for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
		 if type(v) == "table" then
			 if v.Type == "Material" then
				 if v.Name == matname then
					 return v.Count
				 end
			 end
		 end
	 end
	 return 0
 end
 
 -- AutoFarmToggle
 -- [Isnetwork Owner]
 
 function InMyNetWork(object)
	 if isnetworkowner then
		 return isnetworkowner(object)
	 else
		 if (object.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 200 then 
			 return true
		 end
		 return false
	 end
 end
 
 -- [Function (Abandoned Quest , Others)]
 
 function Com(com,...)
	 local Remote = game:GetService('ReplicatedStorage').Remotes:FindFirstChild("Comm"..com)
	 if Remote:IsA("RemoteEvent") then
		 Remote:FireServer(...)
	 elseif Remote:IsA("RemoteFunction") then
		 Remote:InvokeServer(...)
	 end
 end
 
 -- [Tween Functions]
 
 local function GetIsLand(...)
	 local RealtargetPos = {...}
	 local targetPos = RealtargetPos[1]
	 local RealTarget
	 if type(targetPos) == "vector" then
		 RealTarget = targetPos
	 elseif type(targetPos) == "userdata" then
		 RealTarget = targetPos.Position
	 elseif type(targetPos) == "number" then
		 RealTarget = CFrame.new(unpack(RealtargetPos))
		 RealTarget = RealTarget.p
	 end
 
	 local ReturnValue
	 local CheckInOut = math.huge;
	 if game.Players.LocalPlayer.Team then
		 for i,v in pairs(game.Workspace._WorldOrigin.PlayerSpawns:FindFirstChild(tostring(game.Players.LocalPlayer.Team)):GetChildren()) do 
			 local ReMagnitude = (RealTarget - v:GetModelCFrame().p).Magnitude;
			 if ReMagnitude < CheckInOut then
				 CheckInOut = ReMagnitude;
				 ReturnValue = v.Name
			 end
		 end
		 if ReturnValue then
			 return ReturnValue
		 end 
	 end
 end
 
 --BTP
 
 function BTP(Position)
	 game.Players.LocalPlayer.Character.Head:Destroy()
	 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
	 wait(1)
	 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
	 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
 end
 
 
 -- [Tween Functions (toTarget)]
local function toTarget(...)
	local RealtargetPos = {...}
	local targetPos = RealtargetPos[1]
	local RealTarget
	if type(targetPos) == "vector" then
		RealTarget = CFrame.new(targetPos)
	elseif type(targetPos) == "userdata" then
		RealTarget = targetPos
	elseif type(targetPos) == "number" then
		RealTarget = CFrame.new(unpack(RealtargetPos))
	end
	if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health == 0 then if tween then tween:Cancel() end repeat wait() until game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health > 0; wait(0.2) end
	local tweenfunc = {}
	local Distance = (RealTarget.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude
	if FastTween then
    if Distance < 400 then
		Speed = 575
	else 
	    Speed = 350
    end
    else 
	    Speed = 350
end
	local tween_s = game:service"TweenService"
	local info = TweenInfo.new((RealTarget.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude/Speed, Enum.EasingStyle.Linear)
	local tweenw, err = pcall(function()
		tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = RealTarget})
		tween:Play()
	end)
	if BypassTp then
		if Distance > 2000 then
			pcall(function()
				fkwarp = false
				if game:GetService("Players")["LocalPlayer"].Data:FindFirstChild("LastSpawnPoint").Value == tostring(GetIsLand(RealTarget)) then
					game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
					wait(0.1)
					repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0
				else
					if game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 then
						if fkwarp == false then
							--[[if Three_World then
								if (Vector3.new(-5079.44677734375, 313.7293395996094, -3151.065185546875) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 2000 then
									tween:cancel()
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer('requestEntrance',Vector3.new(-5079.44677734375, 313.7293395996094, -3151.065185546875))
								else
									task.wait(6.5)
									tween:cancel()
									repeat task.wait()
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = RealTarget
										game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
									until game.Players.LocalPlayer.Character.Humanoid.Health > 0 or fkwarp == true
								end
							else]]
								if Three_World then
									tween:cancel()
									if (Vector3.new(-5079.44677734375, 313.7293395996094, -3151.065185546875) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 2000 then
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer('requestEntrance',Vector3.new(-5079.44677734375, 313.7293395996094, -3151.065185546875))
									end
									task.wait(.4)
									tween:play()
								end
								task.wait(6.5)
								tween:cancel()
								a=0
								repeat task.wait()
									a=a+1
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = RealTarget
									game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
									game.Players.LocalPlayer.Character.Humanoid.Health = -math.huge
								until a>=27 or fkwarp == true
							--end
						end
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = RealTarget
						game.Players.LocalPlayer.Character.Humanoid.Health = -math.huge
						fkwarp = true
					end
					--wait(.08)
					game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
					repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0
					tween:cancel()
					wait(.1)
					Com("F_","SetSpawnPoint")
					wait(0.2)
					tween:cancel()
					end
				return
			end)
		end
	end

	function tweenfunc:Stop()
		tween:Cancel()
	end 

	function tweenfunc:Wait()
		tween.Completed:Wait()
	end 

	return tweenfunc
end

function toTargetP(CFgo)
	if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health <= 0 or not game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") then tween:Cancel() repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") and game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 wait(7) return end
	if (game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - CFgo.Position).Magnitude <= 150 then
		pcall(function()
			tween:Cancel()

			game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.CFrame = CFgo

			return
		end)
	end
	local tween_s = game:service"TweenService"
	local info = TweenInfo.new((game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - CFgo.Position).Magnitude/325, Enum.EasingStyle.Linear)
	tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = CFgo})
	tween:Play()

	local tweenfunc = {}

	function tweenfunc:Stop()
		tween:Cancel()
	end

	return tweenfunc
end
 
 
 
 AutoFarm:AddToggle('AutoFarmLevel', {
	 Text = 'Auto Farm [Level]',
	 Default = _G.SaveSetting.AutoFarm,
 })
 AutoFarm:AddToggle('NewWorld', {
	 Text = 'Auto New World',
	 Default = _G.SaveSetting.AutoNewWorld,
 }):OnChanged(function(t)
	 _G.SaveSetting.AutoNewWorld = t
	 savesettings()
	 AutoNewWorld = t
	 task.spawn(function()
		 while wait() do
			 pcall(function()
				 if AutoNewWorld then
					 if game.Players.LocalPlayer.Data.Level.Value >= 700 then
						 if AutoFarm then
							 AutoFarm = false
						 end
						 if game.Workspace.Map.Ice.Door.CanCollide == true and game.Workspace.Map.Ice.Door.Transparency == 0 then
							 repeat wait() 
								 toTarget(CFrame.new(1347.7124, 37.3751602, -1325.6488)) 
							 until (CFrame.new(1347.7124, 37.3751602, -1325.6488).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or notAutoNewWorld
							 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress","Detective")
							 Equip("Key")
						 elseif game.Workspace.Map.Ice.Door.CanCollide == false and game.Workspace.Map.Ice.Door.Transparency == 1 then
							 if game:GetService("Workspace").Enemies:FindFirstChild("Ice Admiral [Lv. 700] [Boss]") then
								 for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									 if v.Name == "Ice Admiral [Lv. 700] [Boss]" and v.Humanoid.Health > 0 then
										 repeat task.wait()
											  AutoHaki()
											 Equip(WeaponName)
											 toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
											 FastAttackSpeed = true
											 v.HumanoidRootPart.Size = Vector3.new(60,60,60)
											 v.Humanoid.JumpPower = 0
											 v.Humanoid.WalkSpeed = 0
											 v.HumanoidRootPart.CanCollide = false
											 v.Humanoid:ChangeState(11)
											 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
										 until v.Humanoid.Health <= 0 or not v.Parent
										 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
									 end
								 end
							 else
								 toTarget(CFrame.new(1347.7124, 37.3751602, -1325.6488))
							 end
						 else
							 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
						 end
					 end
				 end
			 end)
		 end
	 end)
 end)
 function TPWorld1()
 game:GetService("ReplicatedStorage").Remotes.CommF:InvokeServer("TravelMain")
 
 end
 function TPWorld2()
 game:GetService("ReplicatedStorage").Remotes.CommF:InvokeServer("TravelDressrosa")
 
 end
 function TPWorld3()
 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
 
 end
 AutoFarm:AddToggle('AutoThirdWorld', {
	 Text = 'Auto Thrid Sea',
	 Default = _G.SaveSetting.AutoThirdWorld,
 }):OnChanged(function(value)
 _G.SaveSetting.AutoThirdWorld = value
 savesettings()
 AutoThirdWorld = value
 if value == false then
				 wait()
				 toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
				 wait()
			 end
			 task.spawn(function()
				 while wait() do
					 pcall(function()
						 if AutoThirdWorld then
							 if game.Players.LocalPlayer.Data.Level.Value >= 1500 then
								 if AutoFarm then
								 AutoFarm = false
								 end
								 if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 3 then
									 if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables").FlamingoAccess ~= nil then
										 Com("F_","TravelZou")
										 if game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("ZQuestProgress", "Check") == 0 then
											 if game.Workspace.Enemies:FindFirstChild("rip_indra [Lv. 1500] [Boss]") then 	
												 for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
													 if v.Name == "rip_indra [Lv. 1500] [Boss]" and v:FindFirstChild("Humanoid")and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
														 repeat wait()
															 if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
																 Farmtween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
															 elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
																 if Farmtween then Farmtween:Stop() end
																 FastAttackSpeed = true
																  AutoHaki()
																  Equip(WeaponName)
																 end
																 _G.PosMon = v.HumanoidRootPart.CFrame
																 v.HumanoidRootPart.Size = Vector3.new(60,60,60)
																 v.Humanoid.JumpPower = 0
																 v.Humanoid.WalkSpeed = 0
																 v.HumanoidRootPart.CanCollide = false
																 v.Humanoid:ChangeState(11)
																 toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
														 until not AutoThirdWorld or not v.Parent or v.Humanoid.Health <= 0 
														 wait(.5)
														 Check = 2
														 repeat wait() Com("F_","TravelZou") until Check == 1
														 FastAttackSpeed = false
													 end
												 end
											 else
												 Com("F_","ZQuestProgress","Check")
												 Com("F_","ZQuestProgress","Begin")
											 end
										 elseif game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("ZQuestProgress", "Check") == 1 then
											 Com("F_","TravelZou")
										 else
											 if game.Workspace.Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]") then
												 for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
													 if v.Name == "Don Swan [Lv. 1000] [Boss]" and v:FindFirstChild("Humanoid")and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
														 repeat wait()
															 if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
																 Farmtween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
															 elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
																 if Farmtween then Farmtween:Stop() end
																 FastAttackSpeed = true
																 AutoHaki()
																 Equip(WeaponName)
																 _G.PosMon = v.HumanoidRootPart.CFrame
																 v.Humanoid.JumpPower = 0
																 v.Humanoid.WalkSpeed = 0
																 v.HumanoidRootPart.CanCollide = false
																 v.Humanoid:ChangeState(11)
																 toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
															 end
														 until not AutoThirdWorld or not v.Parent or v.Humanoid.Health <= 0 
														 FastAttackSpeed = false
													 end
												 end
											 else
												 TweenDonSwanthireworld = toTarget(CFrame.new(2288.802, 15.1870775, 863.034607).Position,CFrame.new(2288.802, 15.1870775, 863.034607))
												 if (CFrame.new(2288.802, 15.1870775, 863.034607).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
													 if TweenDonSwanthireworld then
														 TweenDonSwanthireworld:Stop()
														 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2288.802, 15.1870775, 863.034607)
													 end
												 end
											 end
										 end
									 else
										 if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables").FlamingoAccess == nil then
											 TabelDevilFruitStore = {}
											 TabelDevilFruitOpen = {}
 
											 for i,v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventoryFruits")) do
												 for i1,v1 in pairs(v) do
													 if i1 == "Name" then 
														 table.insert(TabelDevilFruitStore,v1)
													 end
												 end
											 end
 
											 for i,v in next,game.ReplicatedStorage:WaitForChild("Remotes").CommF_:InvokeServer("GetFruits") do
												 if v.Price >= 1000000 then  
													 table.insert(TabelDevilFruitOpen,v.Name)
												 end
											 end
 
											 for i,DevilFruitOpenDoor in pairs(TabelDevilFruitOpen) do
												 for i1,DevilFruitStore in pairs(TabelDevilFruitStore) do
													 if DevilFruitOpenDoor == DevilFruitStore and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables").FlamingoAccess == nil then    
														 if not game.Players.LocalPlayer.Backpack:FindFirstChild(DevilFruitStore) then   
															 Com("F_","LoadFruit",DevilFruitStore)
														 else
															 Com("F_","TalkTrevor","1")
															 Com("F_","TalkTrevor","2")
															 Com("F_","TalkTrevor","3")
														 end
													 end
												 end
											 end
 
											 Com("F_","TalkTrevor","1")
											 Com("F_","TalkTrevor","2")
											 Com("F_","TalkTrevor","3")	
										 end
									 end
								 else
									 if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 0 then
										 if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates") and string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
											 if game.Workspace.Enemies:FindFirstChild("Swan Pirate [Lv. 775]") then
												 for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
													 if v.Name == "Swan Pirate [Lv. 775]" then
														 pcall(function()
															 repeat wait()
																 if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
																	 Farmtween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
																 elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
																	 if Farmtween then Farmtween:Stop() end
																	 FastAttackSpeed = true
																	 Bringmob = true
																	 AutoHaki()
																	 Equip(WeaponName)
																	 PosMon = v.HumanoidRootPart.CFrame
																	 v.Humanoid.JumpPower = 0
																	 v.Humanoid.WalkSpeed = 0
																	 v.HumanoidRootPart.CanCollide = false
																	 v.Humanoid:ChangeState(11)
																	 toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
																 end
															 until not v.Parent or v.Humanoid.Health <= 0 orAutoThirdWorld = false or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
															 Bringmob = false
															 FastAttackSpeed = false
														 end)
													 end
												 end
											 else
												 Questtween = toTarget(CFrame.new(1057.92761, 137.614319, 1242.08069).Position,CFrame.new(1057.92761, 137.614319, 1242.08069))
												 if (CFrame.new(1057.92761, 137.614319, 1242.08069).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
													 if Bartilotween then Bartilotween:Stop() end
													 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1057.92761, 137.614319, 1242.08069)
												 end
											 end
										 else
											 Bartilotween = toTarget(CFrame.new(-456.28952, 73.0200958, 299.895966).Position,CFrame.new(-456.28952, 73.0200958, 299.895966))
											 if ( CFrame.new(-456.28952, 73.0200958, 299.895966).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
												 if Bartilotween then Bartilotween:Stop() end
												 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =  CFrame.new(-456.28952, 73.0200958, 299.895966)
												 Com("F_","StartQuest","BartiloQuest",1)
											 end
										 end
									 elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 1 then
										 if game.Workspace.Enemies:FindFirstChild("Jeremy [Lv. 850] [Boss]") then
											 for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
												 if v.Name == "Jeremy [Lv. 850] [Boss]" then
													 repeat wait()
														 if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
															 Farmtween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
														 elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
															 if Farmtween then Farmtween:Stop() end
															 FastAttackSpeed = true
															 AutoHaki()
															 Equip(WeaponName)
															 PosMon = v.HumanoidRootPart.CFrame
															 v.Humanoid.JumpPower = 0
															 v.Humanoid.WalkSpeed = 0
															 v.HumanoidRootPart.CanCollide = false
															 v.Humanoid:ChangeState(11)															
															 toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
														 end
													 until not v.Parent or v.Humanoid.Health <= 0 or AutoThirdWorld == false
													 FastAttackSpeed = false
												 end
											 end
										 else
											 Bartilotween = toTarget(CFrame.new(2099.88159, 448.931, 648.997375).Position,CFrame.new(2099.88159, 448.931, 648.997375))
											 if (CFrame.new(2099.88159, 448.931, 648.997375).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
												 if Bartilotween then Bartilotween:Stop() end
												 game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2099.88159, 448.931, 648.997375)
											 end
										 end
									 elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 2 then
										 if (CFrame.new(-1836, 11, 1714).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
											 Bartilotween = toTarget(CFrame.new(-1836, 11, 1714).Position,CFrame.new(-1836, 11, 1714))
										 elseif (CFrame.new(-1836, 11, 1714).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
											 if Bartilotween then Bartilotween:Stop() end
											 game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1836, 11, 1714)
											 wait(.5)
											 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1850.49329, 13.1789551, 1750.89685)
											 wait(.1)
											 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1858.87305, 19.3777466, 1712.01807)
											 wait(.1)
											 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1803.94324, 16.5789185, 1750.89685)
											 wait(.1)
											 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1858.55835, 16.8604317, 1724.79541)
											 wait(.1)
											 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1869.54224, 15.987854, 1681.00659)
											 wait(.1)
											 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1800.0979, 16.4978027, 1684.52368)
											 wait(.1)
											 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1819.26343, 14.795166, 1717.90625)
											 wait(.1)
											 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1813.51843, 14.8604736, 1724.79541)
										 end
									 end
								 end
							 end
						 end
					 end)
				 end
			 end)
 
 end)
 local Meterials = MeterialsBox:AddTab[[\\ Materials //]]
 -- [CustomFindFirstChild]
 
 local function CustomFindFirstChild(tablename)
	 for i,v in pairs(tablename) do
		 if game:GetService("Workspace").Enemies:FindFirstChild(v) then
			 return true
		 end
	 end
	 return false
 end
 
 -- [IsNumber]
 
 function isNumber(str)
	 if tonumber(str) ~= nil or str == 'inf' then
		 return true
	 end
 end
 local AllMaterial
 if Old_World then
	 AllMaterial = {
		 "Leather",
		 "Angel Wings",
		 "Magma Ore",
		 "Fish Tail"
	 }
 elseif New_World then
	 AllMaterial = {
		 "Radioactive Material",
		 "Scrap Metal",
		 "Mystic Droplet",
		 "Magma Ore",
		 "Vampire Fang",
	 }
 elseif Three_World then
	 AllMaterial = {
		"Candy [Event]",
		"Bone & Demonic Wisp",
		 "Dragon Scale",
		 "Fish Tail",
		 "Gunpowder",
		 "Scrap Metal",
		 "Mini Tusk",
		 "Conjured Cocoa",
 
	 }
 end
 Meterials:AddDropdown('SelectMaterails', {
	 Values = AllMaterial,
	 Default = _G.SaveSetting.SelectModeMaterial,
	 Multi = false,
	 Text = 'Select Materials',
 }):OnChanged(function(t)
	 SelectModeMaterial = t
	 _G.SaveSetting.SelectModeMaterial = t
	 savesettings()
 end)
 Meterials:AddToggle('FarmMeterials', {
	 Text = 'Farm Material',
	 Default = _G.SaveSetting.Material,
 }):OnChanged(function(x)
	 _G.SaveSetting.Material = x
	 savesettings()
	 AutoFarmMaterial = x
	 if x == false then
		 wait()
		 toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
		 wait()
	 end
	 if x == false then
		 toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.Position,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	 end
	 spawn(function()
		 while wait() do 
			 if AutoFarmMaterial then    
				 xpcall(function()
					 if (SelectModeMaterial~="") then 
						 CheckMaterial(SelectModeMaterial);
						 if CustomFindFirstChild(MaterialMob) then
							 for v0,v1 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do 
								 if (AutoFarmMaterial and table.find(MaterialMob,v1.Name) and v1:FindFirstChild("HumanoidRootPart") and v1:FindFirstChild("Humanoid") and (v1.Humanoid.Health>0)) then 
									 repeat wait();
                                    FastAttackSpeed = true
                                    Bringmob = true
                                    Equip(WeaponName)
                                    AutoHaki()
                                    _G.PosMon = v1.HumanoidRootPart.CFrame
                                    toTarget(v1.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
									 until not CustomFindFirstChild(MaterialMob) or not AutoFarmMaterial or (v1.Humanoid.Health<=0) or not v1.Parent FastAttackSpeed=false Bringmob = false;
								 end 
							 end 
						 else 
							 FastAttackSpeed=false
							 Modstween = toTarget(CFrameMon);
							 if (Old_World and (table.find(MaterialMob,"Fishman Commando [Lv. 400]")) and ((CFrameMon.Position-game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude>50000)) then 
								 if Modstween then Modstween:Stop(); end wait(0.5);game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625,11.6796875,1819.7841796875));
							 elseif (Old_World and not (table.find(MaterialMob,"Fishman Commando [Lv. 400]")) and ((CFrameMon.Position-game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude>50000)) then 
								 if Modstween then Modstween:Stop();end wait(0.5);game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.8515625,6.6796875, -1926.7841796875));
							 elseif (Old_World and (table.find(MaterialMob,"God's Guard [Lv. 450]")) and ((CFrameMon.Position-game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude>3000)) then 
								 if Modstween then Modstween:Stop();end wait(0.5);game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new( -4607.8227539063,872.54248046875, -1667.5568847656));
							 elseif ((CFrameMon.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude<=150) then 
								 if Modstween then Modstween:Stop();end 
								 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon;
							 end 
						 end 
					 end
				 end,function(x)
					 print("Auto Farm Material Error : "..x)
				 end)
			 else
				 break;
			 end
		 end
	 end)
 end)
 Meterials:AddDivider()
 Meterials:AddLabel[[       \\ Auto Mob Aura //]]
 Meterials:AddSlider('DistanceFarm', {
	 Text = 'Distance Farm',
	 Default = _G.SaveSetting.DistanceFarm,
	 Min = 1,
	 Max = 5000,
	 Rounding = 0,
 
	 Compact = false,
 }):OnChanged(function(t)
 _G.SaveSetting.DistanceFarm = t
 DistanceFarm = t
 savesettings()
 end)
 Meterials:AddToggle('FarmAura', {
	 Text = 'Mob Aura',
	 Default = _G.SaveSetting.FarmAura,
 }):OnChanged(function(t)
 _G.SaveSetting.FarmAura = t
 FarmAura = t
 savesettings()
 task.spawn(function()
			 while wait() do
				 pcall(function()
					 if FarmAura then
						 for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
							 if FarmAura and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= DistanceFarm then
								 repeat wait()
									 Bringmob = true
									 FastAttackSpeed = true
									 AutoHaki()
									 Equip(WeaponName)
									 _G.PosMon = v.HumanoidRootPart.CFrame
									 v.Humanoid.JumpPower = 0
									 v.Humanoid.WalkSpeed = 0
									 v.HumanoidRootPart.CanCollide = false
									 v.Humanoid:ChangeState(11)
									 toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
								 until not FarmAura or not v.Parent or v.Humanoid.Health <= 0
								 Bringmob = false
								 FastAttackSpeed = false
							 end
						 end
					 end
				 end)
			 end
		 end)
 end)
 
 -- กันรั่วง
 spawn(function()
 game:GetService("RunService").Heartbeat:Connect(function()
	 if AutoFarmMaterial or FarmAura then
	 if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") then
		 setfflag("HumanoidParallelRemoveNoPhysics", "False")
		 setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
		 game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
		 end
	 end
 end)
 end)
 
 local Teleport = TeleportBox:AddTab[[\\ Island Teleport //]]
 
 Locations = {}
 for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
	 table.insert(Locations,v.Name)
	 task.spawn(function()
	 while wait() do
		 pcall(function()
			  if GoIsland then
		 if v.Name == SelectLocation then
			 toTarget(v.CFrame*CFrame.new(0,50,0))
		 end
		 end
		 end)
	 end
 end)
 end
 Teleport:AddDropdown('SelectLocation', {
	 Values = Locations,
	 Default = nil,
	 Multi = false,
	 Text = 'Select Island',
 }):OnChanged(function(t)
  SelectLocation = t
 end)
 Teleport:AddToggle('TeleportIsland', {
	 Text = 'Teleport',
	 Default = false,
 }):OnChanged(function(t)
  GoIsland = t
  task.spawn(function()
	 while wait() do
		 pcall(function()
			  if GoIsland then
				 toTarget(CframeIsland)
			  end
		  end)
		 end
	 end)
 end)
 spawn(function()
 game:GetService("RunService").Heartbeat:Connect(function()
	 if GoIsland or GoToNpc then
	 if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") then
		 setfflag("HumanoidParallelRemoveNoPhysics", "False")
		 setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
		 game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
		 end
	 end
 end)
 end)
 local NPCs = {}
	 for i,v in pairs(game.Workspace.NPCs:GetChildren()) do
		  table.insert(NPCs,v.Name)
		 task.spawn(function()
	 while wait() do
		 pcall(function()
			  if GoToNpc then
		 if v.Name == SelectNPC then
			 toTarget(v.HumanoidRootPart.CFrame)
		 end
		 end
		 end)
	 end
 end)
	 end
 local Teleport2 = TeleportBoxNpc:AddTab[[\\ Npc's Teleport //]]
 local NpcTP = Teleport2:AddDropdown('SelectNPC', {
	 Values = NPCs,
	 Default = nil,
	 Multi = false,
	 Text = 'Select Npc Name',
 }):OnChanged(function(t)
  SelectNPC = t
 end)
 Teleport2:AddToggle('TeleportNPC', {
	 Text = 'Teleport',
	 Default = false,
 }):OnChanged(function(t)
  GoToNpc = t
 end)
 
 
 
 local PlaceID = game.PlaceId
 local z = {}
 local o = ""
 local n = os.date("!*t").hour
 local Deleted = false
 local File = pcall(function()
	 z = game:GetService('HttpService'):JSONDecode(readfile("NotSameServers.json"))
 end)
 if not File then
	 table.insert(z, n)
	 writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(z))
 end
 local function q()
	 local l;
	 if o == "" then
		 l = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
	 else
		 l = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. o))
	 end
	 local ID = ""
	 if l.nextPageCursor and l.nextPageCursor ~= "null" and l.nextPageCursor ~= nil then
		 o = l.nextPageCursor
	 end
	 local num = 0;
	 for i,v in pairs(l.data) do
		 local g = true
		 ID = tostring(v.id)
		 if tonumber(v.maxPlayers) > tonumber(v.playing) then
			 for _,a in pairs(z) do
				 if num ~= 0 then
					 if ID == tostring(a) then
						 g = false
					 end
				 else
					 if tonumber(n) ~= tonumber(a) then
						 local delFile = pcall(function()
							 delfile("NotSameServers.json")
							 z = {}
							 table.insert(z, n)
						 end)
					 end
				 end
				 num = num + 1
			 end
			 if g == true then
				 table.insert(z, ID)
				 task.wait()
				 pcall(function()
					 writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(z))
					 task.wait()
					 game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
				 end)
			 end
		 end
	 end
 end
 
 function ServerHop()
	 while task.wait() do
			 pcall(function()
				 q()
				 if o ~= "" then
					 q()
				 end
			 end)
	 end
 end
 local ServerTp = TeleportBox1:AddTab[[\\ World Teleport //]]
 ServerTp:AddButton('Teleport East Blue [World 1]', function()
 game:GetService("ReplicatedStorage").Remotes.CommF:InvokeServer("TravelMain")
 end)
 ServerTp:AddButton('Teleport Dressrosa [World 2]', function()
 game:GetService("ReplicatedStorage").Remotes.CommF:InvokeServer("TravelDressrosa")
 end)
 ServerTp:AddButton('Teleport Zou [World 3]', function()
 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
 end)
 ServerTp:AddLabel[[       \\ Teleport Server //]]
 ServerTp:AddButton('Rejoin Server', function()
 game:GetService("TeleportService"):Teleport(game.PlaceId)
 end)
 ServerTp:AddButton('Hop Server', function()
	 ServerHop()
 end)
 function GetAllMeleeFarm()
	 if SupComplete == false then
		 local args = {
			 [1] = "BuySuperhuman"
		 }
		 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		 if CheckMasteryWeapon("Superhuman",400) == "true UpTo" then
			 SupComplete = true
		 end
	 end
	 wait(.5)
	 if EClawComplete == false then
		 local string_1 = "BuyElectricClaw";
		 local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
		 Target:InvokeServer(string_1);
 
		 if CheckMasteryWeapon("Electric Claw",400) == "true UpTo" then
			 EClawComplete = true
		 end
	 end
	 wait(.5)
	 if TalComplete == false then
		 game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon")
 
		 if CheckMasteryWeapon("Dragon Talon",400) == "true UpTo" then
			 TalComplete = true
		 end
	 end
	 wait(.5)
	 if SharkComplete == false then
		 local args = {
			 [1] = "BuySharkmanKarate"
		 }
		 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
 
		 if CheckMasteryWeapon("Sharkman Karate",400) == "true UpTo" then
			 SharkComplete = true
		 end
	 end
	 wait(.5)
	 if DeathComplete == false then
		 local args = {
			 [1] = "BuyDeathStep"
		 }
		 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
 
		 if CheckMasteryWeapon("Death Step",400) == "true UpTo" then
			 DeathComplete = true
		 end
	 end
	 if GodComplete == false then
		 local args = {
			 [1] = "BuyGodhuman"
		 }
		 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
 
		 if CheckMasteryWeapon("Godhuman",350) == "true UpTo" then
			 GodComplete = true
		 end
	 end
 end
 AutoFarm1:AddLabel[[       \\ Fighting Style //]]
 AutoFarm1:AddToggle('Superhuman', {
	 Text = 'Auto Superhuman',
	 Default = _G.SaveSetting.Superhuman,
 }):OnChanged(function(t)
	 _G.SaveSetting.Superhuman = t
	 savesettings()
	 Superhuman = t
 end)
		 task.spawn(function()
			 while wait() do
				 pcall(function()
					 if Superhuman then
						 if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
							 if not game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") and not game.Players.LocalPlayer.Character:FindFirstChild("Combat") then
								 if not game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and not game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") then
									 if not game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and not game.Players.LocalPlayer.Character:FindFirstChild("Electro") then
										 if not game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and not game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") then
											 if not game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and not game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") then
												 if not game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") and not game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") then
													 local args = {
														 [1] = "BuyElectro"
													 }
													 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
												 end
											 end
										 end
									 end
								 end
							 end
 
							 Equip(WeaponName)
 
							 if game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") or game.Players.LocalPlayer.Character:FindFirstChild("Combat") then
								 local args = {
									 [1] = "BuyElectro"
								 }
								 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							 end
							 if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 300 then
								 local args = {
									 [1] = "BuyBlackLeg"
								 }
								 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							 end
							 if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 300 then
								 local args = {
									 [1] = "BuyBlackLeg"
								 }
								 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							 end
							 if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 300 then
								 local args = {
									 [1] = "BuyFishmanKarate"
								 }
								 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							 end
							 if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 300 then
								 local args = {
									 [1] = "BuyFishmanKarate"
								 }
								 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							 end
							 if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 300  then
								 local args = {
									 [1] = "BlackbeardReward",
									 [2] = "DragonClaw",
									 [3] = "2"
								 }
								 HaveDragonClaw = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								 if Superhuman and game.Players.LocalPlayer.Data.Fragments.Value <= 1500 and HaveDragonClaw == 0 then
									 if game.Players.LocalPlayer.Data.Level.Value > 1100 then
										 SelectRaid = "Flame"
										 AutoStartRaid = true
										  NextIsland = true
										 KillAura = true
										 if AutoFarm then Autofarm = false end
									 end
								 else
									 AutoStartRaid = false
									 NextIsland = false
									 KillAura = false
									 if AutoFarm then AutoFarm = true end
									 local args = {
										 [1] = "BlackbeardReward",
										 [2] = "DragonClaw",
										 [3] = "2"
									 }
									 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
									 AutoStartRaid = false
									 NextIsland = false
									 KillAura = false
									 if AutoFarm then AutoFarm = true end
								 end
							 end
							 if game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 300  then
								 local args = {
									 [1] = "BlackbeardReward",
									 [2] = "DragonClaw",
									 [3] = "2"
								 }
								 HaveDragonClaw = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								 if Superhuman and game.Players.LocalPlayer.Data.Fragments.Value <= 1500 and HaveDragonClaw == 0 then
									 if game.Players.LocalPlayer.Data.Level.Value > 1100 then
										 SelectRaid = "Flame"
										 AutoStartRaid = true
										  NextIsland = true
										 KillAura = true
										 if AutoFarm then AutoFarm = false end
									 end
								 else
									 _G.Settings.Raids["Auto Raids"] = false
									 if AutoFarm then AutoFarm = true end
									 local args = {
										 [1] = "BlackbeardReward",
										 [2] = "DragonClaw",
										 [3] = "2"
									 }
									 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
									 AutoStartRaid = false
									 NextIsland = false
									KillAura = false
									 if AutoFarm then AutoFarm = true end
								 end
							 end
 
							 if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 300 then
								 AutoFarm = AutoFarm
								 local args = {
									 [1] = "BuySuperhuman"
								 }
								 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							 end
							 if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 300 then
								 AutoFarm = AutoFarm
								 local args = {
									 [1] = "BuySuperhuman"
								 }
								 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							 end 
						 end
					 end
				 end)
			 end
		 end)
 AutoFarm1:AddToggle('Godhuman', {
	 Text = 'Auto Godhuman',
	 Default = _G.SaveSetting.Godhuman,
 }):OnChanged(function(t)
	 Godhuman = t
	 _G.SaveSetting.Godhuman = t
	 savesettings()
	 task.spawn(function()
		 while wait() do
			 pcall(function()
				 if Godhuman then
					 BuyGodhuman = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman",true))
					 if BuyGodhuman then
						 if BuyGodhuman == 1 then
							 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
							 Godhuman = false
						 end
					 end
					 if not HasTalon then
						 BuyDragonTalon = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon",true))
 
						 if BuyDragonTalon then
							 if BuyDragonTalon == 1 then
								 HasTalon = true
							 end
						 end
					 end
					 if not HasSuperhuman then
						 BuySuperhuman = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman",true))
 
						 if BuySuperhuman then
							 if BuySuperhuman == 1 then
								 HasSuperhuman = true
							 end
						 end
					 end
					 if not HasKarate then
						 BuySharkmanKarate = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true))
 
						 if BuySharkmanKarate then
							 if BuySharkmanKarate == 1 then
								 HasKarate = true
							 end
						 end
					 end
					 if not HasDeathStep then
						 BuyDeathStep = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer( "BuyDeathStep",true))
 
						 if BuyDeathStep then
							 if BuyDeathStep == 1 then
								 HasDeathStep = true
							 end
						 end
					 end
					 if not HasElectricClaw then
						 BuyElectricClaw = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw",true))
						 if BuyElectricClaw then
							 if BuyElectricClaw == 1 then
								 HasElectricClaw = true
							 end
						 end
					 end
 
					 if not HasSuperhuman then
						 if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
							 if not game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") and not game.Players.LocalPlayer.Character:FindFirstChild("Combat") then
								 if not game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and not game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") then
									 if not game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and not game.Players.LocalPlayer.Character:FindFirstChild("Electro") then
										 if not game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and not game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") then
											 if not game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and not game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") then
												 if not game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") and not game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") then
													 local args = {
														 [1] = "BuyElectro"
													 }
													 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
												 end
											 end
										 end
									 end
								 end
							 end
							 Equip(WeaponName)
 
							 if game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") or game.Players.LocalPlayer.Character:FindFirstChild("Combat") then
								 local args = {
									 [1] = "BuyElectro"
								 }
								 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							 end
							 if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 300 then
								 local args = {
									 [1] = "BuyBlackLeg"
								 }
								 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							 end
							 if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 300 then
								 local args = {
									 [1] = "BuyBlackLeg"
								 }
								 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							 end
							 if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 300 then
								 local args = {
									 [1] = "BuyFishmanKarate"
								 }
								 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							 end
							 if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 300 then
								 local args = {
									 [1] = "BuyFishmanKarate"
								 }
								 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							 end
							 if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 300  then
								 local args = {
									 [1] = "BlackbeardReward",
									 [2] = "DragonClaw",
									 [3] = "2"
								 }
								 HaveDragonClaw = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								 if Godhuman and game.Players.LocalPlayer.Data.Fragments.Value <= 1500 and HaveDragonClaw == 0 then
									 if game.Players.LocalPlayer.Data.Level.Value > 1100 then
										 if AutoFarm then _G.SaveSetting.AutoFarm = false end
									 end
								 else
									 if AutoFarm then _G.SaveSetting.AutoFarm = true end
									 local args = {
										 [1] = "BlackbeardReward",
										 [2] = "DragonClaw",
										 [3] = "2"
									 }
									 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								 end
							 end
							 if game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 300  then
								 local args = {
									 [1] = "BlackbeardReward",
									 [2] = "DragonClaw",
									 [3] = "2"
								 }
								 HaveDragonClaw = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								 if Godhuman and game.Players.LocalPlayer.Data.Fragments.Value <= 1500 and HaveDragonClaw == 0 then
									 if game.Players.LocalPlayer.Data.Level.Value > 1100 then
										 if AutoFarm then _G.SaveSetting.AutoFarm = false end
									 end
								 else
									 if AutoFarm then _G.SaveSetting.AutoFarm = true end
									 local args = {
										 [1] = "BlackbeardReward",
										 [2] = "DragonClaw",
										 [3] = "2"
									 }
									 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
									 if AutoFarm then _G.SaveSetting.AutoFarm = true end
								 end
							 end
 
							 if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 300 then
								 if AutoFarm then _G.SaveSetting.AutoFarm = true end
								 local args = {
									 [1] = "BuySuperhuman"
								 }
								 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							 end
							 if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 300 then
								 if AutoFarm then _G.SaveSetting.AutoFarm = true end
								 local args = {
									 [1] = "BuySuperhuman"
								 }
								 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							 end 
						 end
					 elseif not HasKarate then
						 if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
							 if not game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and not game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") then
								 if not game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") and not game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate") then
									 local args = {
										 [1] = "BuyFishmanKarate"
									 }
									 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								 end
							 end
 
							 if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 400 then
								 if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true) == "I lost my house keys, could you help me find them? Thanks." and not game.Players.LocalPlayer.Character:FindFirstChild("Water Key") and not game.Players.LocalPlayer.Backpack:FindFirstChild("Water Key") then
									 if New_World then
										 KillSharkMan = true
										 if AutoFarm then _G.SaveSetting.AutoFarm = false end
									 else
										 KillSharkMan = false
										 if AutoFarm then _G.SaveSetting.AutoFarm =  true end
									 end
								 elseif tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)) == 1 then
									 KillSharkMan = false
									 if Auto_Farm_Level then _G.Settings.Main["Auto Farm Level"] = true end
									 local args = {
										 [1] = "BuySharkmanKarate"
									 }
									 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								 elseif game.Players.LocalPlayer.Character:FindFirstChild("Water Key") or game.Players.LocalPlayer.Backpack:FindFirstChild("Water Key") then
									 KillSharkMan = false
									 if Auto_Farm_Level then _G.Settings.Main["Auto Farm Level"] = true end
									 local args = {
										 [1] = "BuySharkmanKarate"
									 }
									 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								 end
							 end
 
							 if game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 400 then
								 if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true) == "I lost my house keys, could you help me find them? Thanks." and not game.Players.LocalPlayer.Character:FindFirstChild("Water Key") and not game.Players.LocalPlayer.Backpack:FindFirstChild("Water Key") then
									 if New_World then
										 KillSharkMan = true
										 if AutoFarm then _G.SaveSetting.AutoFarm = false end
									 else
										 if AutoFarm then _G.SaveSetting.AutoFarm = true end
										 KillSharkMan = false
									 end
								 elseif tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)) == 1 then
									 KillSharkMan = false
									 if AutoFarm then _G.SaveSetting.AutoFarm = true end
									 local args = {
										 [1] = "BuySharkmanKarate"
									 }
									 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								 elseif game.Players.LocalPlayer.Character:FindFirstChild("Water Key") or game.Players.LocalPlayer.Backpack:FindFirstChild("Water Key") then
									 KillSharkMan = false
									 if AutoFarm then _G.SaveSetting.AutoFarm = true end
									 local args = {
										 [1] = "BuySharkmanKarate"
									 }
									 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								 end
							 end
							 Equip(WeaponName)
						 end
					 elseif not HasDeathStep then
						 if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
							 if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 400 then
								 local args = {
									 [1] = "BuyDeathStep"
								 }
								 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
 
							 end  
							 if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 400 then
								 local args = {
									 [1] = "BuyDeathStep"
								 }
								 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
 
							 end  
							 Equip(WeaponName)
						 end
					 elseif not HasTalon then
						 if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
							 Equip(WeaponName)
 
							 if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 400 and game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 then
								 if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 3 then
									 local string_1 = "Bones";
									 local string_2 = "Buy";
									 local number_1 = 1;
									 local number_2 = 1;
									 local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
									 Target:InvokeServer(string_1, string_2, number_1, number_2);
 
									 local string_1 = "BuyDragonTalon";
									 local bool_1 = true;
									 local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
									 Target:InvokeServer(string_1, bool_1);
								 elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 1 then
									 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
								 else
									 local string_1 = "Bones";
									 local string_2 = "Buy";
									 local number_1 = 1;
									 local number_2 = 1;
									 local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
									 Target:InvokeServer(string_1, string_2, number_1, number_2);
								 end 
							 end
 
							 if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 400 and game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 then
								 if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 3 then
									 local string_1 = "Bones";
									 local string_2 = "Buy";
									 local number_1 = 1;
									 local number_2 = 1;
									 local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
									 Target:InvokeServer(string_1, string_2, number_1, number_2);
 
									 local string_1 = "BuyDragonTalon";
									 local bool_1 = true;
									 local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
									 Target:InvokeServer(string_1, bool_1);
								 elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 1 then
									 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
								 else
									 local string_1 = "Bones";
									 local string_2 = "Buy";
									 local number_1 = 1;
									 local number_2 = 1;
									 local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
									 Target:InvokeServer(string_1, string_2, number_1, number_2);
								 end 
							 end
						 end
					 elseif not HasElectricClaw then
						 if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
							 Equip(WeaponName)
							 if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 400 then
								 local v175 = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw", true);
								 if v175 == 4 then
									 local v176 = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw", "Start");
									 if v176 == nil then
										 game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12548, 337, -7481)
									 end
								 else
									 local string_1 = "BuyElectricClaw";
									 local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
									 Target:InvokeServer(string_1);
								 end
							 end
 
							 if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 400 then
								 local v175 = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw", true);
								 if v175 == 4 then
									 local v176 = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw", "Start");
									 if v176 == nil then
										 game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12548, 337, -7481)
									 end
								 else
									 local string_1 = "BuyElectricClaw";
									 local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
									 Target:InvokeServer(string_1);
								 end
							 end
						 end
					 end
					 if BuyGodhuman ~= 1 and HasSuperhuman and HasTalon and HasKarate and HasDeathStep and HasElectricClaw then
						 if HasSuperhuman and not SupComplete then
							 local args = {
								 [1] = "BuySuperhuman"
							 }
							 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							 wait(0.2)
							 if CheckMasteryWeapon("Superhuman",400) == "true UpTo" or CheckMasteryWeapon("Superhuman",400) == "true" and SupComplete == false then
								 SupComplete = true
							 end
						 elseif HasTalon and not TalComplete then
							 local args = {
								 [1] = "BuyDragonTalon"
							 }
							 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							 wait(0.2)
							 if CheckMasteryWeapon("Dragon Talon",400) == "true UpTo" or CheckMasteryWeapon("Superhuman",400) == "true" and TalComplete == false then
								 TalComplete = true
							 end
						 elseif HasKarate and not SharkComplete then
							 local args = {
								 [1] = "BuySharkmanKarate"
							 }
							 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							 wait(0.2)
							 if CheckMasteryWeapon("Sharkman Karate",400) == "true UpTo" or CheckMasteryWeapon("Superhuman",400) == "true" and SharkComplete == false then
								 SharkComplete = true
							 end
						 elseif HasDeathStep and not DeathComplete then
							 local args = {
								 [1] = "BuyDeathStep"
							 }
							 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							 wait(0.2)
							 if CheckMasteryWeapon("Death Step",400) == "true UpTo" or CheckMasteryWeapon("Superhuman",400) == "true" and DeathComplete == false then
								 DeathComplete = true
							 end
						 elseif HasElectricClaw and not EClawComplete then
							 local args = {
								 [1] = "BuyElectricClaw"
							 }
							 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							 wait(0.2)
							 if CheckMasteryWeapon("Electric Claw",400) == "true UpTo" or CheckMasteryWeapon("Superhuman",400) == "true" and EClawComplete == false then
								 EClawComplete = true
							 end
						 end
					 end
 
					 if BuyGodhuman ~= 1 and SupComplete and EClawComplete and TalComplete and SharkComplete and DeathComplete and (not game.Players.LocalPlayer.Character:FindFirstChild("Godhuman") or not game.Players.LocalPlayer.Backpack:FindFirstChild("Godhuman")) then
						 if GetMaterial("Fish Tail") >= 20 then
							 if GetMaterial("Magma Ore") >= 20 then
								 if GetMaterial("Dragon Scale") >= 10 then
									 if GetMaterial("Mystic Droplet") >= 10 then
										 Com("F_","BuyGodhuman")
										 BuyGodhuman = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman",true))
 
										 if BuyGodhuman then
											 if BuyGodhuman == 1 then
												 Godhuman = false
											 end
										 end
										 if AutoFarm then _G.SaveSetting.AutoFarm = true end
									 elseif not New_World then
										 Com("F_","TravelDressrosa")
									 elseif New_World then
										 if AutoFarm then _G.SaveSetting.AutoFarm = false end
										 CheckMaterial("Mystic Droplet")
										 if CustomFindFirstChild(MaterialMob) then
											 for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
												 if Godhuman and table.find(MaterialMob,v.Name) and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
													 repeat wait()
														 FarmtoTarget = toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,1))
														 if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
															 if FarmtoTarget then FarmtoTarget:Stop() end
															 FastAttack = true
															 Equip(WeaponName)
															 spawn(function()
																 for i,v2 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
																	 if v2.Name == v.Name then
																		 spawn(function()
																			 if InMyNetWork(v2.HumanoidRootPart) then
																				 v2.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
																				 v2.Humanoid.JumpPower = 0
																				 v2.Humanoid.WalkSpeed = 0
																				 v2.HumanoidRootPart.CanCollide = false
																				 v2.Humanoid:ChangeState(11)
																				 v2.HumanoidRootPart.Size = Vector3.new(80,80,80)
																			 end
																		 end)
																	 end
																 end
															 end)
															 if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
																 game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
																 game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
															 end
															 toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
														 end
													 until not CustomFindFirstChild(MaterialMob) or not _Godhuman or v.Humanoid.Health <= 0 or not v.Parent
													 FastAttackSpeed = false
												 end
											 end
										 else
											 FastAttackSpeed = false
											 Modstween = toTarget(CFrameMon.Position,CFrameMon)
											 if World1 and (table.find(MaterialMob,"Fishman Commando [Lv. 400]")) and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
												 if Modstween then Modstween:Stop() end wait(.5)
												 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
											 elseif World1 and not (table.find(MaterialMob,"Fishman Commando [Lv. 400]")) and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
												 if Modstween then Modstween:Stop() end wait(.5)
												 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
											 elseif World1 and (table.find(MaterialMob,"God's Guard [Lv. 450]")) and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 3000 then
												 if Modstween then Modstween:Stop() end wait(.5)
												 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-4607.8227539063, 872.54248046875, -1667.5568847656))
											 elseif (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
												 if Modstween then Modstween:Stop() end
												 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
											 end 
										 end
									 end
								 elseif not Three_World then
									 Com("F_","TravelZou")
								 elseif Three_World then
									 if AutoFarm then _G.SaveSetting.AutoFarm = false end
									 CheckMaterial("Dragon Scale")
									 if CustomFindFirstChild(MaterialMob) then
										 for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
											 if Godhuman and table.find(MaterialMob,v.Name) and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
												 repeat wait()
													 FarmtoTarget = toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
													 if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
														 if FarmtoTarget then FarmtoTarget:Stop() end
														 FastAttackSpeed = true
														 Equip(WeaponName)
														 spawn(function()
															 for i,v2 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
																 if v2.Name == v.Name then
																	 spawn(function()
																		 if InMyNetWork(v2.HumanoidRootPart) then
																			 v2.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
																			 v2.Humanoid.JumpPower = 0
																			 v2.Humanoid.WalkSpeed = 0
																			 v2.HumanoidRootPart.CanCollide = false
																			 v2.Humanoid:ChangeState(11)
																			 v2.HumanoidRootPart.Size = Vector3.new(80,80,80)
																		 end
																	 end)
																 end
															 end
														 end)
														 if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
															 game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
															 game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
														 end
														 toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
													 end
												 until not CustomFindFirstChild(MaterialMob) or not Godhuman or v.Humanoid.Health <= 0 or not v.Parent
												 FastAttackSpeed = false
											 end
										 end
									 else
										 FastAttackSpeed = false
										 Modstween = toTarget(CFrameMon.Position,CFrameMon)
										 if Old_World and (table.find(MaterialMob,"Fishman Commando [Lv. 400]")) and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
											 if Modstween then Modstween:Stop() end wait(.5)
											 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
										 elseif Old_World and not (table.find(MaterialMob,"Fishman Commando [Lv. 400]")) and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
											 if Modstween then Modstween:Stop() end wait(.5)
											 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
										 elseif Old_World and (table.find(MaterialMob,"God's Guard [Lv. 450]")) and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 3000 then
											 if Modstween then Modstween:Stop() end wait(.5)
											 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-4607.8227539063, 872.54248046875, -1667.5568847656))
										 elseif (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
											 if Modstween then Modstween:Stop() end
											 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
										 end 
									 end
								 end
							 elseif not Old_World then
								 Com("F_","TravelMain")
							 elseif Old_World then
								 if AutoFarm then _G.SaveSetting.AutoFarm = false end
								 CheckMaterial("Magma Ore")
								 if CustomFindFirstChild(MaterialMob) then
									 for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										 if Godhuman and table.find(MaterialMob,v.Name) and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
											 repeat wait()
												 FarmtoTarget = toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
												 if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
													 if FarmtoTarget then FarmtoTarget:Stop() end
													 FastAttackSpeed = true
													 Equip(WeaponName)
													 spawn(function()
														 for i,v2 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
															 if v2.Name == v.Name then
																 spawn(function()
																	 if InMyNetWork(v2.HumanoidRootPart) then
																		 v2.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
																		 v2.Humanoid.JumpPower = 0
																		 v2.Humanoid.WalkSpeed = 0
																		 v2.HumanoidRootPart.CanCollide = false
																		 v2.Humanoid:ChangeState(11)
																		 v2.HumanoidRootPart.Size = Vector3.new(80,80,80)
																	 end
																 end)
															 end
														 end
													 end)
													 if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
														 game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
														 game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
													 end
													 toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
												 end
											 until not CustomFindFirstChild(MaterialMob) or not Godhuman or v.Humanoid.Health <= 0 or not v.Parent
											 FastAttackSpeed = false
										 end
									 end
								 else
									 FastAttackSpeed = false
									 Modstween = toTarget(CFrameMon.Position,CFrameMon)
									 if Old_World and (table.find(MaterialMob,"Fishman Commando [Lv. 400]")) and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
										 if Modstween then Modstween:Stop() end wait(.5)
										 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
									 elseif Old_World and not (table.find(MaterialMob,"Fishman Commando [Lv. 400]")) and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
										 if Modstween then Modstween:Stop() end wait(.5)
										 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
									 elseif Old_World and (table.find(MaterialMob,"God's Guard [Lv. 450]")) and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 3000 then
										 if Modstween then Modstween:Stop() end wait(.5)
										 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-4607.8227539063, 872.54248046875, -1667.5568847656))
									 elseif (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
										 if Modstween then Modstween:Stop() end
										 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
									 end 
								 end
							 end
						 elseif not Old_World then
							 Com("F_","TravelMain")
						 elseif Old_World then
							 if AutoFarm then _G.SaveSetting.AutoFarm = false end
							 CheckMaterial("Fish Tail")
							 if CustomFindFirstChild(MaterialMob) then
								 for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									 if Godhuman and table.find(MaterialMob,v.Name) and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
										 repeat wait()
											 FarmtoTarget = toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
											 if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
												 if FarmtoTarget then FarmtoTarget:Stop() end
												 FastAttackSpeed = true
												 Equip(WeaponName)
												 spawn(function()
													 for i,v2 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
														 if v2.Name == v.Name then
															 spawn(function()
																 if InMyNetWork(v2.HumanoidRootPart) then
																	 v2.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
																	 v2.Humanoid.JumpPower = 0
																	 v2.Humanoid.WalkSpeed = 0
																	 v2.HumanoidRootPart.CanCollide = false
																	 v2.Humanoid:ChangeState(11)
																	 v2.HumanoidRootPart.Size = Vector3.new(80,80,80)
																 end
															 end)
														 end
													 end
												 end)
												 if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
													 game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
													 game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
												 end
												 toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
											 end
										 until not CustomFindFirstChild(MaterialMob) or not Godhuman or v.Humanoid.Health <= 0 or not v.Parent
										 FastAttackSpeed = false
									 end
								 end
							 else
								 FastAttackSpeed = false
								 Modstween = toTarget(CFrameMon.Position,CFrameMon)
								 if Old_World and (table.find(MaterialMob,"Fishman Commando [Lv. 400]")) and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
									 if Modstween then Modstween:Stop() end wait(.5)
									 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
								 elseif Old_World and not (table.find(MaterialMob,"Fishman Commando [Lv. 400]")) and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
									 if Modstween then Modstween:Stop() end wait(.5)
									 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
								 elseif Old_World and (table.find(MaterialMob,"God's Guard [Lv. 450]")) and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 3000 then
									 if Modstween then Modstween:Stop() end wait(.5)
									 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-4607.8227539063, 872.54248046875, -1667.5568847656))
								 elseif (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
									 if Modstween then Modstween:Stop() end
									 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
								 end 
							 end
						 end
					 end
				 end
			 end)
		 end
	 end)
 
 task.spawn(function()
 while wait() do
	 pcall(function()
		 if Godhuman and New_World then
			 if game.Workspace.Enemies:FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") or game.ReplicatedStorage:FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") then
				 if (KillSharkMan == true and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true) == "I lost my house keys, could you help me find them? Thanks.") then
					 if KillFish then KillFish:Stop() end
					 Com("F_","SetSpawnPoint")
					 for i,v in pairs(game.Workspace.Enemies:GetChildren()) do 
						 if v.Name == "Tide Keeper [Lv. 1475] [Boss]" then
							 repeat wait()
								 if game.Workspace.Enemies:FindFirstChild(v.Name) then
									 if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 200 then
										 Farmtween = toTarget(v.HumanoidRootPart.CFrame)
									 elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 200 then
										 if Farmtween then Farmtween:Stop() end
										 FastAttackSpeed = true
										 AutoHaki()
										 if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
											 wait()
											 Equip(WeaponName)
										 end
										 if not _G.Settings.Configs["Fast Attack"] then
											 game:GetService'VirtualUser':CaptureController()
											 game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
										 end
										 v.HumanoidRootPart.Size = Vector3.new(60,60,60)
										 v.Humanoid.JumpPower = 0
										 v.Humanoid.WalkSpeed = 0
										 v.HumanoidRootPart.CanCollide = false
										 v.Humanoid:ChangeState(11)
										 toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
										 if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
											 game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
											 game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
										 end
									 end
								 end
							 until not v.Parent or not Godhuman or KillSharkMan == false or v.Humanoid.Health == 0 or game.Players.LocalPlayer.Character:FindFirstChild("Water Key") or game.Players.LocalPlayer.Backpack:FindFirstChild("Water Key")
							 FastAttackSpeed = false
						 end
					 end
				 end
			 else
				 if game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") then
					 KillFish = toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper [Lv. 1475] [Boss]").HumanoidRootPart.CFrame)
				 else
					 if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true) == "I lost my house keys, could you help me find them? Thanks." then
						 ServerHop()
					 end
				 end
			 end
		 end
	 end)
 end
 end)
 end)
 AutoFarm1:AddToggle('ElectricClaw', {
	 Text = 'Auto Electric Claw',
	 Default = _G.SaveSetting.ElectricClaw,
 }):OnChanged(function(value)
 _G.SaveSetting.ElectricClaw = value
 savesettings()
 ElectricClaw = value
 if ElectricClaw then
			 Com("F_","BuyElectro")
		 end
		 task.spawn(function()
			 while wait() do
				 pcall(function()
					 if ElectricClaw then
						 if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
							 if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value < 400 then
								 Equip(WeaponName)
							 end  
							 if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value < 400 then
								 Equip(WeaponName)
							 end  
							 if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 400 then
								 local v175 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyElectricClaw", true);
								 if v175 == 4 then
									 local v176 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyElectricClaw", "Start");
									 if v176 == nil then
										 game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12548, 337, -7481)
									 end
								 else
									 local string_1 = "BuyElectricClaw";
									 local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
									 Target:InvokeServer(string_1);
								 end
							 end
							 if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 400 then
								 local v175 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyElectricClaw", true);
								 if v175 == 4 then
									 local v176 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyElectricClaw", "Start");
									 if v176 == nil then
										 game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12548, 337, -7481)
									 end
								 else
									 local string_1 = "BuyElectricClaw";
									 local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
									 Target:InvokeServer(string_1);
								 end
							 end
						 end
					 end
				 end)
			 end
		 end)
 end)
 AutoFarm1:AddToggle('DeathStep', {
	 Text = 'Auto DeathStep',
	 Default = _G.SaveSetting.DeathStep,
 }):OnChanged(function(value)
 DeathStep = value
 _G.SaveSetting.DeathStep = value
 savesettings()
 if DeathStep then
			 Com("F_","BuyBlackLeg")
		 end
		 task.spawn(function()
			 while wait() do
				 pcall(function()
					 if DeathStep then
						 if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
							 if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 400 then
								 local args = {
									 [1] = "BuyDeathStep"
								 }
								 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								 WeaponName =  "Death Step"
							 end  
							 if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 400 then
								 local args = {
									 [1] = "BuyDeathStep"
								 }
								 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
 
								 WeaponName = "Death Step"
							 end  
							 if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value < 400 then
								 WeaponName =  "Black Leg"
							 end 
						 end
					 elseif DeathStep then
						 if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 400 or game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 400 then
							 if game:GetService("Workspace").Map.IceCastle.Hall.LibraryDoor.PhoeyuDoor.Transparency == 0 then  
								 if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Library Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Library Key") then
									 Equip("Library Key")
									 repeat wait() toTarget(CFrame.new(6371.2001953125, 296.63433837890625, -6841.18115234375)) until (CFrame.new(6371.2001953125, 296.63433837890625, -6841.18115234375).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.Settings.FightingStyle["Auto Death Step"]
									 if (CFrame.new(6371.2001953125, 296.63433837890625, -6841.18115234375).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
										 wait(1.2)
										 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep",true)
										 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
										 wait(0.5)
									 end
								 elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 450 or game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 450 then   
									 if game:GetService("ReplicatedStorage"):FindFirstChild("Awakened Ice Admiral [Lv. 1400] [Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Awakened Ice Admiral [Lv. 1400] [Boss]") then
										 if game:GetService("Workspace").Enemies:FindFirstChild("Awakened Ice Admiral [Lv. 1400] [Boss]") then 	
											 for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
												 if v.Name == "Awakened Ice Admiral [Lv. 1400] [Boss]" then    
													 repeat wait()
														 if game.Workspace.Enemies:FindFirstChild(v.Name) then
															 if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 200 then
																 Farmtween = toTarget(v.HumanoidRootPart.CFrame)
															 elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 200 then
																 if Farmtween then Farmtween:Stop() end
																 FastAttackSpeed = true
																 AutoHaki()
																 Equip(WeaponName)
																 v.HumanoidRootPart.Size = Vector3.new(60,60,60)
																 v.Humanoid.JumpPower = 0
																 v.Humanoid.WalkSpeed = 0
																 v.HumanoidRootPart.CanCollide = false
																 v.Humanoid:ChangeState(11)
																 toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
																 if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
																	 game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
																	 game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
																 end
															 end
														 end
													 until not v.Parent or v.Humanoid.Health <= 0 or _G.Settings.FightingStyle["Auto Death Step"] == false or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Library Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Library Key")
													 FastAttackSpeed = false
												 end
											 end
										 else
											 toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Awakened Ice Admiral [Lv. 1400] [Boss]").HumanoidRootPart.CFrame)
										 end
									 end
								 end
							 end
						 else
							 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
						 end
					 end
				 end)
			 end
		 end)
 end)
 AutoFarm1:AddToggle('SharkmanKarate', {
	 Text = 'Auto SharkmanKarate',
	 Default = _G.SaveSetting.SharkmanKarate,
 }):OnChanged(function(value)
 SharkmanKarate = value
 _G.SaveSetting.SharkmanKarate = value
 savesettings()
		 if SharkmanKarate then
			 Com("F_","BuySharkmanKarate")
		 end
		 task.spawn(function()
			 while wait() do
				 pcall(function()
					 if SharkmanKarate then
						 if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
							 if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sharkman Karate") then
								 if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 400 then
									 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
									 WeaponName = "Sharkman Karate"
								 end  
								 if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 400 then
									 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
									 WeaponName = "Sharkman Karate"
								 end  
								 if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value <= 400 then
									 WeaponName = "Fishman Karate"
								 end 
							 else 
								 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
							 end
						 end
					 elseif SharkmanKarate then
						 if game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 400 or game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 400 then
							 if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate"), "keys") then  
								 if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Water Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Water Key") then
									 repeat wait() toTarget(-2604.6958, 239.432526, -10315.1982, 0.0425701365, 0, -0.999093413, 0, 1, 0, 0.999093413, 0, 0.0425701365) until (CFrame.new(-2604.6958, 239.432526, -10315.1982, 0.0425701365, 0, -0.999093413, 0, 1, 0, 0.999093413, 0, 0.0425701365).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.Auto_Fully_SharkMan_Karate
									 if (CFrame.new(-2604.6958, 239.432526, -10315.1982, 0.0425701365, 0, -0.999093413, 0, 1, 0, 0.999093413, 0, 0.0425701365).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
										 wait(1.2)
										 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)
										 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
										 wait(0.5)
									 end
								 elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 400 or game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 400 then   
									 if game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") then
										 if game:GetService("Workspace").Enemies:FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") then 	
											 for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
												 if v.Name == "Tide Keeper [Lv. 1475] [Boss]" then    
													 repeat wait()
														 if game.Workspace.Enemies:FindFirstChild(v.Name) then
															 if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 200 then
																 Farmtween = toTarget(v.HumanoidRootPart.CFrame)
															 elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 200 then
																 if Farmtween then Farmtween:Stop() end
																 FastAttackSpeed = true
																 AutoHaki()
																 Equip(WeaponName)
																 v.HumanoidRootPart.Size = Vector3.new(60,60,60)
																 v.Humanoid.JumpPower = 0
																 v.Humanoid.WalkSpeed = 0
																 v.HumanoidRootPart.CanCollide = false
																 v.Humanoid:ChangeState(11)
																 toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
																 if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
																	 game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
																	 game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
																 end
															 end
														 end
													 until not v.Parent or v.Humanoid.Health <= 0 or SharkmanKarate == false or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Library Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Library Key")
													 FastAttackSpeed = false													end
											 end
										 else
											 toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper [Lv. 1475] [Boss]").HumanoidRootPart.CFrame)
										 end
									 end
								 end
							 else 
								 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
							 end
						 else
							 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
						 end
					 end
				 end)
			 end
		 end)
 end)
 AutoFarm1:AddToggle('DragonTalon', {
	 Text = 'Auto DragonTalon',
	 Default = _G.SaveSetting.DragonTalon,
 }):OnChanged(function(value)
 DragonTalon = value
 _G.SaveSetting.DragonTalon = value
 savesettings()
 if DragonTalon then
			 Com("F_","BlackbeardReward","DragonClaw","2")
		 end
		 task.spawn(function()
			 while wait() do
				 pcall(function()
					 if DragonTalon then
						 if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
							 if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 399 and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
								 WeaponName = "Dragon Claw"
							 end
							 if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value <= 399 and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
								 WeaponName = "Dragon Claw"
							 end
 
							 if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 400 and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
								 WeaponName = "Dragon Claw"
								 if game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 3 then
									 local string_1 = "Bones";
									 local string_2 = "Buy";
									 local number_1 = 1;
									 local number_2 = 1;
									 local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
									 Target:InvokeServer(string_1, string_2, number_1, number_2);
 
									 local string_1 = "BuyDragonTalon";
									 local bool_1 = true;
									 local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
									 Target:InvokeServer(string_1, bool_1);
								 elseif game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 1 then
									 game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon")
								 else
									 local string_1 = "BuyDragonTalon";
									 local bool_1 = true;
									 local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
									 Target:InvokeServer(string_1, bool_1);
									 local string_1 = "BuyDragonTalon";
									 local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
									 Target:InvokeServer(string_1);
								 end 
							 end
 
							 if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 400 and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
								 WeaponName = "Dragon Claw"
								 if game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 3 then
									 local string_1 = "Bones";
									 local string_2 = "Buy";
									 local number_1 = 1;
									 local number_2 = 1;
									 local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
									 Target:InvokeServer(string_1, string_2, number_1, number_2);
 
									 local string_1 = "BuyDragonTalon";
									 local bool_1 = true;
									 local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
									 Target:InvokeServer(string_1, bool_1);
								 elseif game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 1 then
									 game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon")
								 else
									 local string_1 = "BuyDragonTalon";
									 local bool_1 = true;
									 local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
									 Target:InvokeServer(string_1, bool_1);
									 local string_1 = "BuyDragonTalon";
									 local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
									 Target:InvokeServer(string_1);
								 end 
							 end
						 end
					 end
				 end)
			 end
		 end)
 end)
 spawn(function()
	 game:GetService("RunService").Heartbeat:Connect(function()
		 if DragonTalon or SharkmanKarate or DeathStep or Superhuman or Godhuman or ElectricClaw then
		 if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") then
			 setfflag("HumanoidParallelRemoveNoPhysics", "False")
			 setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
			 game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
			 end
		 end
	 end)
 end)							
 Toggles.AutoFarmLevel:OnChanged(function(t)
	 _G.SaveSetting.AutoFarm = t
	 AutoFarm = t
	 Bringmob = t
	 FastAttackSpeed = t
	 savesettings()
	 if t == false then
		 toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
		 farmskywhen30 = t
	 end
 spawn(function()
 while wait() do
	 if AutoFarm then
		pcall(function()
		 CheckQuest()
 if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
 toTarget(CFrameMon)
 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",QuestName,LevelQuest)
 elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
	 if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,NameMon) then
		 for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
			 if v.Name == Name and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") then
				 if v.Humanoid.Health > 0 then
				   repeat wait()
					 _G.PosMon = v.HumanoidRootPart.CFrame
					 Equip(WeaponName)
					 AutoHaki()
					 toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
					 v.HumanoidRootPart.Size = Vector3.new(0,60,0)
					 v.HumanoidRootPart.CanCaillde = false
					 until AutoFarm == false or v.Humanoid.Health <= 0
				 end
			 end
		 end
	 end
 end
		end)
 
 end
 
 end
 end)
 end)
 spawn(function()
	 game:GetService("RunService").Heartbeat:Connect(function()
		 if AutoFarm then
		 if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") then
			 setfflag("HumanoidParallelRemoveNoPhysics", "False")
			 setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
			 game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
			 end
		 end
	 end)
 end)
 Weapon = {
	 "Melee",
	 "Sword",
	 "Devil Fruit"
 }
 FastAttack = {
	 "Slow",
	 "Fast",
	 "Extreme",
 }
 
 SettingGeneral:AddDropdown('SelectWeaponDropdown', {
	 Values = Weapon,
	 Default = "Melee",
	 Multi = false,
	 Text = 'Select Weapon / Weapons',
	 Tooltip = 'Select your weapon',
 })
 SettingGeneral:AddDropdown('FastAttackMode', {
	 Values = FastAttack,
	 Default = _G.SaveSetting.FastAttack,
	 Multi = false,
	 Text = 'Attacks Modes',
 })
 if _G.SaveSetting.FastAttack == nil then
     _G.SaveSetting.FastAttack = "Fast"
 end
 
 Options.FastAttackMode:OnChanged(function(a)
	 SelectSpeedFast = a
	 _G.SaveSetting.FastAttack = a
	 savesettings()
	 if SelectSpeedFast == "Slow" then
		 _G.Fast_Delay = 0.055
	 elseif SelectSpeedFast == "Fast" then
		 _G.Fast_Delay = 0.025
	 elseif SelectSpeedFast == "Extreme" then
		 _G.Fast_Delay = 0
	 end
 end)
 
 SettingGeneral:AddToggle('BypassTp', {
	 Text = 'Bypass Teleport',
	 Default = _G.SaveSetting.BypassTp,
	 Tooltip = 'เร็วเเรง',
 }):OnChanged(function(t)
	 BypassTp = t
	 _G.SaveSetting.BypassTp = t
	 savesettings()
 end)
 SettingGeneral:AddToggle('HideDmg', {
	 Text = 'Hide Damages',
	 Default = _G.SaveSetting.HideDmg,
	 Tooltip = 'โง่',
 }):OnChanged(function(t)
	 _G.SaveSetting.HideDmg = t
	 savesettings()
	 HideDmg = t
 end)
 
 local CombatFramework = require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("CombatFramework"))
 local CombatFrameworkR = getupvalues(CombatFramework)[2]
 local RigController = require(game:GetService("Players")["LocalPlayer"].PlayerScripts.CombatFramework.RigController)
 local RigControllerR = getupvalues(RigController)[2]
 
 function CurrentWeapon()
	 local ac = CombatFrameworkR.activeController
	 local ret = ac.blades[1]
	 if not ret then return game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name end
	 pcall(function()
		 while ret.Parent~=game.Players.LocalPlayer.Character do ret=ret.Parent end
	 end)
	 if not ret then return game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name end
	 return ret
 end
 
 function getAllBladeHitsPlayers(Sizes)
	 local Hits = {}
	 local Client = game.Players.LocalPlayer
	 local Characters = game:GetService("Workspace").Characters:GetChildren()
	 for i=1,#Characters do local v = Characters[i]
		 local Human = v:FindFirstChildOfClass("Humanoid")
		 if v.Name ~= game.Players.LocalPlayer.Name and Human and Human.RootPart and Human.Health > 0 and Client:DistanceFromCharacter(Human.RootPart.Position) < Sizes+5 then
			 table.insert(Hits,Human.RootPart)
		 end
	 end
	 return Hits
 end
 
 function getAllBladeHits(Sizes)
	 local Hits = {}
	 local Client = game.Players.LocalPlayer
	 local Enemies = game:GetService("Workspace").Enemies:GetChildren()
	 for i=1,#Enemies do local v = Enemies[i]
		 local Human = v:FindFirstChildOfClass("Humanoid")
		 if Human and Human.RootPart and Human.Health > 0 and Client:DistanceFromCharacter(Human.RootPart.Position) < Sizes+5 then
			 table.insert(Hits,Human.RootPart)
		 end
	 end
	 return Hits
 end
 
 function DamageAura()
	 local ac = CombatFrameworkR.activeController
	 if ac and ac.equipped then
		 for indexincrement = 1, 1 do
			 local bladehit = getAllBladeHits(150) local a = getAllBladeHitsPlayers(150)
			 if #bladehit or #a > 0 then
				 local AcAttack8 = debug.getupvalue(ac.attack, 5)
				 local AcAttack9 = debug.getupvalue(ac.attack, 6)
				 local AcAttack7 = debug.getupvalue(ac.attack, 4)
				 local AcAttack10 = debug.getupvalue(ac.attack, 7)
				 local NumberAc12 = (AcAttack8 * 798405 + AcAttack7 * 727595) % AcAttack9
				 local NumberAc13 = AcAttack7 * 798405
				 (function()
					 NumberAc12 = (NumberAc12 * AcAttack9 + NumberAc13) % 1099511627776
					 AcAttack8 = math.floor(NumberAc12 / AcAttack9)
					 AcAttack7 = NumberAc12 - AcAttack8 * AcAttack9
				 end)()
				 AcAttack10 = AcAttack10 + 1
				 debug.setupvalue(ac.attack, 5, AcAttack8)
				 debug.setupvalue(ac.attack, 6, AcAttack9)
				 debug.setupvalue(ac.attack, 4, AcAttack7)
				 debug.setupvalue(ac.attack, 7, AcAttack10)
				 for k, v in pairs(ac.animator.anims.basic) do
					 v:Play(0.01,0.01,0.01)
				 end                 
				 if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and ac.blades and ac.blades[1] then 
					 game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(CurrentWeapon()))
					 game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(NumberAc12 / 1099511627776 * 16777215), AcAttack10)
					 game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, indexincrement, "") 
				 end
			 end
		 end
	 end
 end
 
 function AttackFunction()
	 local ac = CombatFrameworkR.activeController
	 if ac and ac.equipped then
		 for indexincrement = 1, 1 do
			 local bladehit = getAllBladeHits(60)
			 if #bladehit > 0 then
				 local AcAttack8 = debug.getupvalue(ac.attack, 5)
				 local AcAttack9 = debug.getupvalue(ac.attack, 6)
				 local AcAttack7 = debug.getupvalue(ac.attack, 4)
				 local AcAttack10 = debug.getupvalue(ac.attack, 7)
				 local NumberAc12 = (AcAttack8 * 798405 + AcAttack7 * 727595) % AcAttack9
				 local NumberAc13 = AcAttack7 * 798405
				 (function()
					 NumberAc12 = (NumberAc12 * AcAttack9 + NumberAc13) % 1099511627776
					 AcAttack8 = math.floor(NumberAc12 / AcAttack9)
					 AcAttack7 = NumberAc12 - AcAttack8 * AcAttack9
				 end)()
				 AcAttack10 = AcAttack10 + 1 
				 debug.setupvalue(ac.attack, 5, AcAttack8)
				 debug.setupvalue(ac.attack, 6, AcAttack9)
				 debug.setupvalue(ac.attack, 4, AcAttack7)
				 debug.setupvalue(ac.attack, 7, AcAttack10)
				 for k, v in pairs(ac.animator.anims.basic) do
					 v:Play(0.01,0.01,0.01)
				 end                 
				 if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and ac.blades and ac.blades[1] then 
					 game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(CurrentWeapon()))
					 game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(NumberAc12 / 1099511627776 * 16777215), AcAttack10)
					 game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, indexincrement, "")
				 end
			 end
		 end
	 end
 end
 
 task.spawn(function()
	 pcall(function()
	 while task.wait(_G.Fast_Delay) do
		 if FastAttackSpeed then
			 AttackFunction()
			end
		 end
	 end)
 end)
 
 Options.SelectWeaponDropdown:OnChanged(function(a)
	 SelectWeapon = a
 end)
 -- Auto Use Weapon
 task.spawn(function()
	 while wait() do
		 pcall(function()
			 if SelectWeapon == "Melee" then
				 for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					 if v.ToolTip == "Melee" then
						 if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							 WeaponName = v.Name
						 end
					 end
				 end
			 elseif SelectWeapon == "Sword" then
				 for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					 if v.ToolTip == "Sword" then
						 if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							 WeaponName = v.Name
						 end
					 end
				 end
			 elseif SelectWeapon == "Devil Fruit" then
				 for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					 if v.ToolTip == "Blox Fruit" then
						 if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							 WeaponName = v.Name
						 end
					 end
				 end
			 else
				 for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					 if v.ToolTip == "Melee" then
						 if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							 WeaponName = v.Name
						 end
					 end
				 end
			 end
		 end)
	 end
 end)
 
 
 
 Stats = {
	 "Melee",
	 "Defense",
	 "Sword",
	 "Gun",
	 "Devil Fruit"
 }
 
 
 SettingGeneral2:AddDropdown('DropdownAutoStats', {
	 Values = Stats,
	 Default = "Melee",
	 Multi = false,
	 Text = 'Select Stats',
 }):OnChanged(function(a)
	 AutoStats = a
	 task.spawn(function()
	 while wait() do
		 pcall(function()
 if AutoStats == "Melee" then
 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Melee",1)
 elseif AutoStats == "Defense" then
 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Defense",1)
 elseif AutoStats == "Sword" then
 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Sword",Point)
 elseif AutoStats == "Gun" then
 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Gun",Point)
 elseif AutoStats == "Devil Fruit" then
 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Demon Fruit",Point)
 end
 end)
 end
 end)
 end)
 SettingGeneral2:AddButton('Redeem All code', function()
	 function UseCode(Text)
		 game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(Text)
	 end
	 UseCode("GAMERROBOT_YT")
	 UseCode("Enyu_is_Pro")
	 UseCode("Magicbus")
	 UseCode("JCWK")
	 UseCode("Starcodeheo")
	 UseCode("Bluxxy")
	 UseCode("THEGREATACE")
	 UseCode("SUB2GAMERROBOT_EXP1")
	 UseCode("StrawHatMaine")
	 UseCode("Sub2OfficialNoobie")
	 UseCode("SUB2NOOBMASTER123")
	 UseCode("Sub2Daigrock")
	 UseCode("Axiore")
	 UseCode("TantaiGaming")
	 UseCode("STRAWHATMAINE")
	 UseCode("EXP_5B")
	 UseCode("kittgaming")
	 UseCode("GAMER_ROBOT_1M")
	 UseCode("ADMINGIVEAWAY")
 end)
 local BossTable = {}   
 for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
	 if string.find(v.Name, "Boss") then
		 if v.Name == "Ice Admiral [Lv. 700] [Boss]" then
		 else
			 table.insert(BossTable, v.Name)
		 end
	 end
 end
 
 local Boss = AutoFarm2:AddDropdown('SelectBoss', {
	 Values = BossTable,
	 Default = nil,
	 Multi = false,
	 Text = 'Select Bosses',
 }):OnChanged(function(a)
	 SelectBoss = a
 end)
 AutoFarm2:AddToggle('AutoKillBoss', {
	 Text = 'Auto Boss Select',
	 Default = _G.SaveSetting.AutoKillBoss,
 }):OnChanged(function(t)
 _G.SaveSetting.AutoKillBoss = t
 AutoKillBoss = t
 savesettings()
 end)
 AutoFarm2:AddToggle('AutoKillBossQuest', {
	 Text = 'Auto Boss Select + Quest',
	 Default = _G.SaveSetting.SelectBossAndQuest,
 }):OnChanged(function(t)
 _G.SaveSetting.SelectBossAndQuest = t
 SelectBossAndQuest = t
 savesettings()
 end)
 task.spawn(function()
	 while wait() do
		 if AutoKillBoss then
			 pcall(function()
				 CheckBossQuest()
				 if MsBoss == "Soul Reaper [Lv. 2100] [Raid Boss]" or MsBoss == "Longma [Lv. 2000] [Boss]" or MsBoss == "Don Swan [Lv. 1000] [Boss]" or MsBoss == "Cursed Captain [Lv. 1325] [Raid Boss]" or MsBoss == "Order [Lv. 1250] [Raid Boss]" or MsBoss == "rip_indra True Form [Lv. 5000] [Raid Boss]" then
					 if game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
						 for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							 if v.Name == MsBoss then
								 repeat wait()
									 AutoHaki()
									 Equip(WeaponName)
									 Bringmob = true
									 FastAttackSpeed = true
									 toTarget(v.HumanoidRootPart.CFrame * CFrame.new(1,30,0))
									 _G.PosMon = v.HumanoidRootPart.CFrame
									 v.HumanoidRootPart.Size = Vector3.new(60,60,60)
									 v.Humanoid.JumpPower = 0
									 v.Humanoid.WalkSpeed = 0
									 v.HumanoidRootPart.CanCollide = false
									 v.Humanoid:ChangeState(11)
								 until AutoKillBoss == false or not v.Parent or v.Humanoid.Health <= 0
							 end
						 end
					 else
						 toTarget(CFrameBoss)
					 end
				 else
					 if SelectBossAndQuest then
						 CheckBossQuest()
						 if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameBoss) then
							 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
						 end
						 if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
							 repeat wait() toTarget(CFrameQuestBoss) until (CFrameQuestBoss.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.Settings.Boss["Auto Boss Select"]
							 if (CFrameQuestBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
								 wait(1.1)
								 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuestBoss, LevelQuestBoss)
							 end
						 elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
							 if game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
								 for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									 if v.Name == MsBoss then
										 repeat wait()
											 if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameBoss) then
												 AutoHaki()
												 Equip(WeaponName)
												 Bringmob = true
												 FastAttackSpeed = true
												 toTarget(v.HumanoidRootPart.CFrame * CFrame.new(1,30,0))
												 _G.PosMon = v.HumanoidRootPart.CFrame
												 v.HumanoidRootPart.Size = Vector3.new(60,60,60)
												 v.Humanoid.JumpPower = 0
												 v.Humanoid.WalkSpeed = 0
												 v.HumanoidRootPart.CanCollide = false
												 v.Humanoid:ChangeState(11)								
											 else
												 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
											 end
										 until AutoKillBoss == false or not v.Parent or v.Humanoid.Health <= 0
									 end
								 end
							 else
								 toTarget(CFrameBoss)
							 end
						 end
					 else
						 if game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
							 for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								 if v.Name == MsBoss then
									 repeat wait()
										 AutoHaki()
										Equip(WeaponName)
										 Bringmob = true
										FastAttackSpeed = true
										 toTarget(v.HumanoidRootPart.CFrame * CFrame.new(1,30,0))
										 _G.PosMon = v.HumanoidRootPart.CFrame
										 v.HumanoidRootPart.Size = Vector3.new(60,60,60)
										 v.Humanoid.JumpPower = 0
										 v.Humanoid.WalkSpeed = 0
										 v.HumanoidRootPart.CanCollide = false
										 v.Humanoid:ChangeState(11)								
									 until AutoKillBoss == false or not v.Parent or v.Humanoid.Health <= 0
								 end
							 end
						 else
							 toTarget(CFrameBoss)
						 end
					 end
				 end
			 end)
		 end
	 end
 end)
 
 spawn(function()
 game:GetService("RunService").Heartbeat:Connect(function()
	 if AutoThirdWorld or AutoNewWorld or AutoKillAllBoss then
	 if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") then
		 setfflag("HumanoidParallelRemoveNoPhysics", "False")
		 setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
		 game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
		 end
	 end
 end)
 end)
 
 
 
 
 -- [Bring Mob]
 
 task.spawn(function()
	 while true do wait()
		 if setscriptable then
			 setscriptable(game.Players.LocalPlayer, "SimulationRadius", true)
		 end
		 if sethiddenproperty then
			 sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
		 end
	 end
 end)
 
 function InMyNetWork(object)
	 if isnetworkowner then
		 return isnetworkowner(object)
	 else
		 if (object.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 450 then 
			 return true
		 end
		 return false
	 end
 end
 
 task.spawn(function()
	 while task.wait() do
		 pcall(function()
			 if Bringmob then
				 for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
					 if not string.find(v.Name,"Boss") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 650 then
						 if InMyNetWork(v.HumanoidRootPart) then
							 v.HumanoidRootPart.CFrame = _G.PosMon
							 v.Humanoid.JumpPower = 0
							 v.Humanoid.WalkSpeed = 0
							 v.HumanoidRootPart.Size = Vector3.new(60,60,60)
							 v.HumanoidRootPart.Transparency = 1
							 v.HumanoidRootPart.CanCollide = false
							 v.Head.CanCollide = false
							 if v.Humanoid:FindFirstChild("Animator") then
								 v.Humanoid.Animator:Destroy()
							 end
							 v.Humanoid:ChangeState(11)
							 v.Humanoid:ChangeState(14)
						 end
					 end
				 end
			 end
		 end)
	 end
 end)
 
 -- [No Stun]
 task.spawn(function()
	 if game.Players.LocalPlayer.Character:FindFirstChild("Stun") then
		 game.Players.LocalPlayer.Character.Stun.Changed:connect(function()
			 pcall(function()
				 if game.Players.LocalPlayer.Character:FindFirstChild("Stun") then
					 game.Players.LocalPlayer.Character.Stun.Value = 0
				 end
			 end)
		 end)
	 end
 end)
 local WebHookLog = {}
 
 local AllRequest = http_request or request or HttpPost or syn.request
 function WebHookLog:WebHookKaiTanSend(WebHookUrl)
 
	 function GetFightingStyle(Style)
		 ReturnText = ""
		 for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			 if v:IsA("Tool") then
				 if v.ToolTip == Style then
					 ReturnText = v.Name
				 end
			 end
		 end
		 for i ,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
			 if v:IsA("Tool") then
				 if v.ToolTip == Style then
					 ReturnText = v.Name
				 end
			 end
		 end
		 if ReturnText ~= "" then
			 return ReturnText
		 else
			 return "Not Have"
		 end
	 end
 
	 function GetAwaken()
		 ReturnText = ""
		 Awakened_Z = ":x:"
		 Awakened_X = ":x:"
		 Awakened_C = ":x:"
		 Awakened_V = ":x:"
		 Awakened_F = ":x:"
		 for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			 if v:IsA("Tool") then
				 if v.ToolTip == "Blox Fruit" then
					 if v:FindFirstChild("AwakenedMoves") then
						 if v.AwakenedMoves:FindFirstChild("Z") then
							 Awakened_Z = ":white_check_mark:"
						 end
						 if v.AwakenedMoves:FindFirstChild("X") then
							 Awakened_X = ":white_check_mark:"
						 end
						 if v.AwakenedMoves:FindFirstChild("C") then
							 Awakened_C = ":white_check_mark:"
						 end
						 if v.AwakenedMoves:FindFirstChild("V") then
							 Awakened_V = ":white_check_mark:"
						 end
						 if v.AwakenedMoves:FindFirstChild("F") then
							 Awakened_F = ":white_check_mark:"
						 end
						 ReturnText = ":regional_indicator_z:"..Awakened_Z..
							 "\n"..":regional_indicator_x:"..Awakened_X..
							 "\n"..":regional_indicator_c:"..Awakened_C..
							 "\n"..":regional_indicator_v:"..Awakened_V..
							 "\n"..":regional_indicator_f:"..Awakened_F
					 else
						 ReturnText = "This Fruit Can't Awakened"
					 end
				 end
			 end
		 end
		 for i ,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
			 if v:IsA("Tool") then
				 if v.ToolTip == "Blox Fruit" then
					 if v:FindFirstChild("AwakenedMoves") then
						 if v.AwakenedMoves:FindFirstChild("Z") then
							 Awakened_Z = ":white_check_mark:"
						 end
						 if v.AwakenedMoves:FindFirstChild("X") then
							 Awakened_X = ":white_check_mark:"
						 end
						 if v.AwakenedMoves:FindFirstChild("C") then
							 Awakened_C = ":white_check_mark:"
						 end
						 if v.AwakenedMoves:FindFirstChild("V") then
							 Awakened_V = ":white_check_mark:"
						 end
						 if v.AwakenedMoves:FindFirstChild("F") then
							 Awakened_F = ":white_check_mark:"
						 end
						 ReturnText = ":regional_indicator_z:"..Awakened_Z..
							 "\n"..":regional_indicator_x:"..Awakened_X..
							 "\n"..":regional_indicator_c:"..Awakened_C..
							 "\n"..":regional_indicator_v:"..Awakened_V..
							 "\n"..":regional_indicator_f:"..Awakened_F
					 else
						 ReturnText = "This Fruit Can't Awakened"
					 end
				 end
			 end
		 end
		 if ReturnText ~= "" then
			 return ReturnText
		 else
			 return "Not Have"
		 end
	 end
 
	 function GetWeapon(Rare)
		 if Rare == "Common" then
			 RareNumber = 0
		 elseif Rare == "Uncommon" then
			 RareNumber = 1
		 elseif Rare == "Rare" then
			 RareNumber = 2
		 elseif Rare == "Legendary" then
			 RareNumber = 3
		 elseif Rare == "Mythical" then
			 RareNumber = 4
		 else
			 return "Worng InPut"
		 end
		 local ReturnText = ""
		 for i,v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventoryWeapons")) do
			 if type(v) == "table" then
				 if v.Rarity then
					 if tonumber(v.Rarity) == RareNumber then
						 ReturnText = ReturnText .. v.Name .. "\n"
					 end
				 end
			 end
		 end
		 if ReturnText ~= "" then
			 return ReturnText
		 else
			 return "Not Have"
		 end
	 end
 
	 function GetFruitInU()
		 local ReturnText = ""
		 for i,v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventoryFruits")) do
			 if type(v) == "table" then
				 if v ~= nil then
					 ReturnText = ReturnText .. v.Name .. "\n"
				 end
			 end
		 end
 
		 if ReturnText ~= "" then
			 return ReturnText
		 else
			 return "Not Have"
		 end
	 end
 
	 function GetAllMelee()
		 BuyDragonTalon = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon",true))
		 if BuyDragonTalon then
			 if BuyDragonTalon == 1 then
				 TalComplete = true
			 end
		 end
		 BuySuperhuman = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman",true))
		 if BuySuperhuman then
			 if BuySuperhuman == 1 then
				 SupComplete = true
			 end
		 end
		 BuySharkmanKarate = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true))
		 if BuySharkmanKarate then
			 if BuySharkmanKarate == 1 then
				 SharkComplete = true
			 end
		 end
		 BuyDeathStep = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep",true))
		 if BuyDeathStep then
			 if BuyDeathStep == 1 then
				 DeathComplete = true
			 end
		 end
		 BuyElectricClaw = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw",true))
		 if BuyElectricClaw then
			 if BuyElectricClaw == 1 then
				 EClawComplete = true
			 end
		 end
		 BuyGod = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman",true))
		 if BuyGod then
			 if BuyGod == 1 then
				 GodComplete = true
			 end
		 end
		 ReturnText = {}
		 if SupComplete == true then
			 table.insert(ReturnText,"Superhuman")
		 end
		 if EClawComplete == true then
			 table.insert(ReturnText,"Electric Claw")
		 end
		 if TalComplete == true then
			 table.insert(ReturnText,"Dragon Talon")
		 end
		 if SharkComplete == true then
			 table.insert(ReturnText,"Sharkman Karate")
		 end
		 if DeathComplete == true then
			 table.insert(ReturnText,"Death Step")
		 end
		 if GodComplete == true then
			 table.insert(ReturnText,"Godhuman")
		 end
 
		 if #ReturnText ~= 0 then
			 return table.concat(ReturnText,"\n")
		 else
			 return "your are not have all melees"
		 end
	 end
 
	 local Embeds = {{
		 ["title"] = "**Demon Hub Webhooks💐**",
		 ["color"] = tonumber(0xD936FF),
		 ["fields"] = {
			 {
				 ["name"] = "User Info",
				 ["value"] = "||"..tostring(game.Players.LocalPlayer.Name).."||",
				 ["inline"] = true
			 },
			 {
				 ["name"] = "Level",
				 ["value"] = tostring(game:GetService("Players").LocalPlayer.Data:FindFirstChild("Level").Value),
				 ["inline"] = true
			 },
			 {
				 ["name"] = "Fragments",
				 ["value"] = tostring(game:GetService("Players").LocalPlayer.Data:FindFirstChild("Fragments").Value),
				 ["inline"] = true
			 },
			 {
				 ["name"] = "Beli",
				 ["value"] = tostring(game:GetService("Players").LocalPlayer.Data:FindFirstChild("Beli").Value),
				 ["inline"] = true
			 },
			 {
				 ["name"] = "Using Fighting Style",
				 ["value"] = GetFightingStyle("Melee"),
				 ["inline"] = true
			 },
			 {
				 ["name"] = "Using Sword",
				 ["value"] = GetFightingStyle("Sword"),
				 ["inline"] = true
			 },
			 {
				 ["name"] = "Devil Fruit",
				 ["value"] = GetFightingStyle("Blox Fruit"),
				 ["inline"] = true
			 },
			 {
				 ["name"] = "Gun",
				 ["value"] = GetFightingStyle("Gun"),
				 ["inline"] = true
			 },
			 {
				 ["name"] = "Accessory",
				 ["value"] = GetFightingStyle("Wear"),
				 ["inline"] = true
			 },
			 {
				 ["name"] = "Race",
				 ["value"] = tostring(game:GetService("Players").LocalPlayer.Data:FindFirstChild("Race").Value),
				 ["inline"] = true
			 },
			 {
				 ["name"] = "Awakened",
				 ["value"] = tostring(GetAwaken()),
				 ["inline"] = true
			 },
			 {
				 ["name"] = ":signal_strength: Status",
				 ["value"] = "```sml\n"..tostring("Melee : "..game:GetService("Players").LocalPlayer.Data.Stats.Melee:WaitForChild("Level").Value .. 
					 "\nDefense : "..game:GetService("Players").LocalPlayer.Data.Stats.Defense:WaitForChild("Level").Value .. 
					 "\nSword : "..game:GetService("Players").LocalPlayer.Data.Stats.Sword:WaitForChild("Level").Value.. 
					 "\nGun : "..game:GetService("Players").LocalPlayer.Data.Stats.Gun:WaitForChild("Level").Value .. 
					 "\nDevil Fruit : "..game:GetService("Players").LocalPlayer.Data.Stats["Demon Fruit"]:WaitForChild("Level").Value).."```",
				 ["inline"] = true
			 },
			 {
				 ["name"] = "Rare :yellow_circle:",
				 ["value"] = "```sml\n"..tostring(GetWeapon("Rare")).."```",
				 ["inline"] = true
			 },
			 {
				 ["name"] = "Legendary :orange_circle: ",
				 ["value"] = "```sml\n"..tostring(GetWeapon("Legendary")).."```",
				 ["inline"] = true
			 },
			 {
				 ["name"] = "Mythical :red_circle:",
				 ["value"] = "```sml\n"..tostring(GetWeapon("Mythical")).."```",
				 ["inline"] = true
			 },
			 {
				 ["name"] = ":apple: Fruit In Inventory",
				 ["value"] = "```sml\n"..tostring(GetFruitInU()).."```",
				 ["inline"] = true
			 },
			 {
				 ["name"] = ":punch: All Melee",
				 ["value"] = "```sml\n"..tostring(GetAllMelee()).."```",
				 ["inline"] = true
			 },
			 {
				 ["name"] = "ㅤ",
				 ["value"] = tostring("ㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤ"),
				 ["inline"] = false
			 }},
		 ["footer"] = {
			 ["text"] = "Made by ! Piwwy#0909".."\nTime".." : "..os.date("%c").." ("..os.date("%X")..")",
			 ["icon_url"] = "https://cdn.discordapp.com/icons/1031918709608022036/efafaf2e6ede6d29df489dacf157dcb4.webp?size=240"
		 },
	 }}
 
	 local Message
 
 if _G.SendWebHookPing then
		 Message = {
			 ['username'] = "Demon Hub | Webhook",
			 ["avatar_url"] = "https://cdn.discordapp.com/icons/1031918709608022036/efafaf2e6ede6d29df489dacf157dcb4.webp?size=240",
			 ["content"] = "@everyone",
			 ["embeds"] = Embeds,
		 }
	 else
		 Message = {
			 ['username'] = "Demon Hub | Webhook",
			 ["avatar_url"] = "https://cdn.discordapp.com/icons/1031918709608022036/efafaf2e6ede6d29df489dacf157dcb4.webp?size=240",
			 ["embeds"] = Embeds,
		 }
	 end
 
	 local DataCallBack = AllRequest({
		 Url = WebHookUrl,
		 Method = 'POST',
		 Headers = {
			 ["Content-Type"] = "application/json"
		 },
		 Body = game:GetService("HttpService"):JSONEncode(Message)
	 })
	 return DataCallBack
 end
 
 local WebhookSend = Webhook:AddTab('Webhook')
 WebhookSend:AddInput('',{
	 Text = "Url Webhook here"
 }):OnChanged(function(x)
	Webhooklink = x
 end)
 WebhookSend:AddButton('Sent Webhook', function()
	 WebHookLog:WebHookKaiTanSend(Webhooklink)
 end)
 WebhookSend:AddToggle('Hello',{
	Text = "Ping Every One"
 }):OnChanged(function(x)
	_G.SendWebHookPing = x
 end)
 
 
 function CheckMasteryWeapon(NameWe,MasNum)
	 if game.Players.LocalPlayer.Backpack:FindFirstChild(NameWe) then
		 if tonumber(game.Players.LocalPlayer.Backpack:FindFirstChild(NameWe).Level.Value) < tonumber(MasNum) then
			 return "true DownTo"
		 elseif tonumber(game.Players.LocalPlayer.Backpack:FindFirstChild(NameWe).Level.Value) >= tonumber(MasNum) then
			 return "true UpTo"
		 end
	 end
	 if game.Players.LocalPlayer.Character:FindFirstChild(NameWe) then
		 if tonumber(game.Players.LocalPlayer.Character:FindFirstChild(NameWe).Level.Value) < tonumber(MasNum) then
			 return "true DownTo"
		 elseif tonumber(game.Players.LocalPlayer.Character:FindFirstChild(NameWe).Level.Value) >= tonumber(MasNum) then
			 return "true UpTo"
		 end
	 end
	 return "else"
 end
 local AutoRaid = RaidBox:AddTab[[\\ Dungeons //]]
 
 RaidMap = {"Flame","Ice","Quake","Light","Dark","String","Rumble","Magma","Human: Buddha","Sand","Bird: Phoenix","Dough"}
 
 AutoRaid:AddDropdown('SelectRaidMap', {
	 Values = RaidMap,
	 Default = nil,
	 Multi = false,
	 Text = 'Select Dungeon',
 })
 Options.SelectRaidMap:OnChanged(function(t)
  SelectRaid = t
 end)
 AutoRaid:AddToggle('AutoRaids1', {
	 Text = 'Auto Dungeon',
	 Default = false,
 }):OnChanged(function(value)
	 AutoStartRaid = value
	 NextIsland = value
	 KillAura = value
	 
			 if value == false then
			 wait()
			 toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
			 wait()
		 end
 end)
 AutoRaid:AddToggle('AutoRaids3', {
	 Text = 'Auto Awake Fruit',
	 Default = false,
 }):OnChanged(function(value)
 AutoAwake = value
 end)
 task.spawn(function()
	 while wait() do
		 if AutoStartRaid and not AutoFarm then
			 BuypassTP = false
			 if game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") or game.Players.LocalPlayer.Character:FindFirstChild("Special Microchip") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
				 if game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") or game.Players.LocalPlayer.Character:FindFirstChild("Special Microchip") and game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false then
					 if New_World then
						 fireclickdetector(Workspace.Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
					 elseif Three_World then
						 fireclickdetector(Workspace.Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
					 end
					 wait(17)
				 elseif game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == true then				
					 pcall(function()
						 repeat wait()
							 if game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false then
 
							 elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
								 game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame = CFrame.new(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame.x,60,game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame.z)
								 if (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 350 then
									 Farmtween = toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame)
								 elseif (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350 then
									 if Farmtween then
										 Farmtween:Stop()
									 end
									 toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 5"].CFrame*CFrame.new(4,65,10))
								 end
							 elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
								 game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame = CFrame.new(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame.x,60,game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame.z)
								 if (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 350 then
									 Farmtween = toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame)
								 elseif (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350 then
									 if Farmtween then
										 Farmtween:Stop()
									 end
									 toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 4"].CFrame*CFrame.new(4,65,10))
								 end
							 elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
								 game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame = CFrame.new(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame.x,60,game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame.z)
								 if (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 350 then
									 Farmtween = toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame)
								 elseif (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350 then
									 if Farmtween then
										 Farmtween:Stop()
									 end
									 toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 3"].CFrame*CFrame.new(4,65,10))
								 end
							 elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
								 game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame = CFrame.new(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame.x,60,game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame.z)
								 if (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 350 then
									 Farmtween = toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame)
								 elseif (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350 then
									 if Farmtween then
										 Farmtween:Stop()
									 end
									 toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 2"].CFrame*CFrame.new(4,65,10))
								 end
							 elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
								 game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame = CFrame.new(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame.x,60,game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame.z)
								 if (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 350 then
									 Farmtween = toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame)
								 elseif (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350 then
									 if Farmtween then
										 Farmtween:Stop()
									 end
									 toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 1"].CFrame*CFrame.new(4,65,10))
								 end
							 end
							 for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
								 if AutoStartRaid and game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == true and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 400 then
									 repeat wait()
										 v.Humanoid.Health = 0
										 v:BreakJoints()
									 until not AutoStartRaid or v.Humanoid.Health <= 0 or not v.Parent
								 end
							 end
							 if AutoAwake then	
								 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Awaken")
							 end
						 until not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") or not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") or not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") or not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") or not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") or game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false
						 if AutoAwake then	
							 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Awaken")
						 end
					 end)
				 end           
			 else
				 if AutoAwake then	
					 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Awaken")
				 end
				 local args = {
					 [1] = "RaidsNpc",
					 [2] = "Select",
					 [3] = tostring(SelectRaid)
				 }
				 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			 end
			 else
			   BuypassTP = true
		 end
	 end
 end)
 
 spawn(function()
	 while wait() do
		 if KillAura then
			 for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
				 if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
					 pcall(function()
						 repeat wait()
							 v.Humanoid.Health = 0
							 v.HumanoidRootPart.CanCollide = false
							 v.HumanoidRootPart.Size = Vector3.new(50,50,50)
							 v.HumanoidRootPart.Transparency = 0.8
						 until not KillAura or not AutoStartRaid or not v.Parent or v.Humanoid.Health <= 0
					 end)
				 end
			 end
		 end
	 end
 end)
 
 spawn(function()
	 pcall(function()
		 while wait() do
			 if NextIsland then
				 wait(10)
				 if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true and game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
					 if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
						 toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 5"].CFrame*CFrame.new(4,65,10))
					 elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
						 toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 4"].CFrame*CFrame.new(4,65,10))
					 elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
						 toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 3"].CFrame*CFrame.new(4,65,10))
					 elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
						 toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 2"].CFrame*CFrame.new(4,65,10))
					 elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
						 toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 1"].CFrame*CFrame.new(4,65,10))
					 end
				 elseif New_World then
					 toTarget(CFrame.new(-6438.73535, 250.645355, -4501.50684))
				 elseif Three_World then
					 toTarget(CFrame.new(-5057.146484375, 314.54132080078, -2934.7995605469))
				 end
			 end
		 end
	 end)
 end)
 spawn(function()
 game:GetService("RunService").Heartbeat:Connect(function()
	 if NextIsland or AutoStartRaid then
	 if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") then
		 setfflag("HumanoidParallelRemoveNoPhysics", "False")
		 setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
		 game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
		 end
	 end
 end)
 end)
 
 local Misc = AutoSword:AddTab[[  \\ Essentials //]]
 --------------------------------
 Misc:AddToggle('AutoBuyHaki', {
	 Text = 'Auto Buy Armament Color',
	 Default = _G.SaveSetting.AutoBuyHaki,
 }):OnChanged(function(t)
	 AutoBuyHaki = t
	 _G.SaveSetting.AutoBuyHaki = t
	 savesettings()
 task.spawn(function()
	 while wait() do
		 pcall(function()
			 if AutoBuyHaki then
				 local args = {
					 [1] = "ColorsDealer",
					 [2] = "2"
				 }
				 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			 end
		 end)
	 end
 end)
 end)
 Misc:AddToggle('TradeDeathKing', {
	 Text = 'Auto Trade Death King',
	 Default = _G.SaveSetting.TradeDeathKing,
 }):OnChanged(function(value)
 TradeDeathKing = value
  _G.SaveSetting.TradeDeathKing = value
 savesettings()
 end)
 task.spawn(function()
	while wait() do 
		if TradeDeathKing then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
		end
	end
end)
 Misc:AddToggle('FarmChest', {
	 Text = 'Auto Farm Chests',
	 Default = _G.SaveSetting.FarmChest,
 }):OnChanged(function(value)
	AutoFarmChest = value
  _G.SaveSetting.FarmChest = value
 savesettings()
 end)
 _G.MagnitudeAdd = 0
task.spawn(function()
	while wait() do 
		if AutoFarmChest then
		    BypassTp = false
			for i,v in pairs(game:GetService("Workspace"):GetChildren()) do 
				if v.Name:find("Chest") then
					if game:GetService("Workspace"):FindFirstChild(v.Name) then
						if (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5000+_G.MagnitudeAdd then
							repeat wait()
								if game:GetService("Workspace"):FindFirstChild(v.Name) then
									toTargetP(v.CFrame)
								end
							until AutoFarmChest == false or not v.Parent
							toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
							_G.MagnitudeAdd = _G.MagnitudeAdd+1500
							break
						end
					end
				end
			end
			else 
			    BypassTp = true
		end
	end
end)
 ThemeManager:SetLibrary(Library)
 SaveManager:SetLibrary(Library)
 SaveManager:IgnoreThemeSettings() 
 SaveManager:SetIgnoreIndexes({ 'MenuKeybind' }) 
 ThemeManager:SetFolder('Demon Hub')
 SaveManager:SetFolder('Demon Hub/Blox Fruit')
 ThemeManager:ApplyToTab(Tabs['UI Settings'])
 
 spawn(function()
	 game:GetService("RunService").Heartbeat:Connect(function()
		 if Musketeer or Auto_Serpent_Bow or  AutoRengoku or AutoFactory or AutoTorch or AutoBuddySowrd or _G.SaveSetting.AutoEliteHunter or AutoKillBoss  or  FarmFruit or FarmGun or Auto_Cursed_Dual_Katana or Autofarm or AutoSoulGuitar or AutoCakePrince or AutoNewWorld or AutoHollow or RipIndra or FarmMasDF or FarmMasGun or AutoFarmChest or FarmMasGun or PaleScarf or Bandann or AcidumRifle then
		 if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") then
			 setfflag("HumanoidParallelRemoveNoPhysics", "False")
			 setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
			 game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
			 end
		 end
	 end)
 end)
 local Sea1Auto = Sea1:AddTab[[\\ First Sea //]]
 Sea1Auto:AddToggle('AutoSaber', {
	 Text = 'Auto Saber',
	 Default = _G.SaveSetting.AutoSaber,
 }):OnChanged(function(value)
	 AutoSaber = value
	 task.spawn(function()
		 while wait() do
			 pcall(function()
				 if AutoSaber and game.Players.LocalPlayer.Data.Level.Value >= 200 and not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Saber") and not game.Players.LocalPlayer.Character:FindFirstChild("Saber") then
					BypassTP = false
					if AutoFarm then
						 AutoFarm = false
					 end
					 if game:GetService("Workspace").Map.Jungle.Final.Part.Transparency == 0 then
						 if game:GetService("Workspace").Map.Jungle.QuestPlates.Door.Transparency == 0 then
							 if (CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279, 3.0717151e-09, -0.928667724, 3.97099491e-08, 1, 1.91679348e-08, 0.928667724, -4.39869794e-08, 0.37091279).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
								 toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
								 wait(1)
								 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate1.Button.CFrame
								 wait(1)
								 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate2.Button.CFrame
								 wait(1)
								 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate3.Button.CFrame
								 wait(1)
								 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate4.Button.CFrame
								 wait(1)
								 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate5.Button.CFrame
								 wait(1) 
							 else
								 toTarget(CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279, 3.0717151e-09, -0.928667724, 3.97099491e-08, 1, 1.91679348e-08, 0.928667724, -4.39869794e-08, 0.37091279))
							 end
						 else
							 if game:GetService("Workspace").Map.Desert.Burn.Part.Transparency == 0 then
								 if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Torch") then
									 Equip("Torch")
									 toTarget(CFrame.new(1114.61475, 5.04679728, 4350.22803, -0.648466587, -1.28799094e-09, 0.761243105, -5.70652914e-10, 1, 1.20584542e-09, -0.761243105, 3.47544882e-10, -0.648466587))
								 else
									 toTarget(CFrame.new(-1610.00757, 11.5049858, 164.001587, 0.984807551, -0.167722285, -0.0449818149, 0.17364943, 0.951244235, 0.254912198, 3.42372805e-05, -0.258850515, 0.965917408))                 
								 end
							 else
								 if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan") ~= 0 then
									 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","GetCup")
									 wait(0.5)
									 Equip("Cup")
									 wait(0.5)
									 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","FillCup",game:GetService("Players").LocalPlayer.Character.Cup)
									 wait(0)
									 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan") 
								 else
									 if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == nil then
										 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
									 elseif  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 0 then
										 if game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader [Lv. 120] [Boss]") or game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader [Lv. 120] [Boss]") then
											 toTarget(CFrame.new(-2967.59521, -4.91089821, 5328.70703, 0.342208564, -0.0227849055, 0.939347804, 0.0251603816, 0.999569714, 0.0150796166, -0.939287126, 0.0184739735, 0.342634559))
											 for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
												 if v.Name == "Mob Leader [Lv. 120] [Boss]" then
													 repeat wait()
														 Bringmob = true
														 FastAttackSpeed = true
														 AutoHaki()
														 Equip(WeaponName)
														 toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
														 _G.PosMon = v.HumanoidRootPart.CFrame
														 v.HumanoidRootPart.Size = Vector3.new(60,60,60)
														 v.Humanoid.JumpPower = 0
														 v.Humanoid.WalkSpeed = 0
														 v.HumanoidRootPart.CanCollide = false
														 v.Humanoid:ChangeState(11)
													 until v.Humanoid.Health <= 0 or AutoSaber == false
												 end
											 end
										 end
									 elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 1 then
										 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
										 Equip("Relic")
										 toTarget(CFrame.new(-1404.91504, 29.9773273, 3.80598116, 0.876514494, 5.66906877e-09, 0.481375456, 2.53851997e-08, 1, -5.79995607e-08, -0.481375456, 6.30572643e-08, 0.876514494))
									 end
								 end
							 end
						 end
					 else
						 if game:GetService("Workspace").Enemies:FindFirstChild("Saber Expert [Lv. 200] [Boss]") or game:GetService("ReplicatedStorage"):FindFirstChild("Saber Expert [Lv. 200] [Boss]") then
							 toTarget(CFrame.new(-1401.85046, 29.9773273, 8.81916237, 0.85820812, 8.76083845e-08, 0.513301849, -8.55007443e-08, 1, -2.77243419e-08, -0.513301849, -2.00944328e-08, 0.85820812))
							 for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								 if v.Name == "Saber Expert [Lv. 200] [Boss]" then
									 repeat wait()
										 Bringmob = true
										 FastAttackSpeed = true
										 AutoHaki()
										 Equip(WeaponName)
										 toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
										 _G.PosMon = v.HumanoidRootPart.CFrame
										 v.HumanoidRootPart.Size = Vector3.new(60,60,60)
										 v.Humanoid.JumpPower = 0
										 v.Humanoid.WalkSpeed = 0
										 v.HumanoidRootPart.CanCollide = false
										 v.Humanoid:ChangeState(11)
										 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
									 until v.Humanoid.Health <= 0 or AutoSaber == false
									 if v.Humanoid.Health <= 0 then
										 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","PlaceRelic")
									 end
									 Autofarm = true
								 end
							 end
						 end
					 end
				 end
			 end)
		 end
	 end)
 end)
 Sea1Auto:AddLabel[[       \\ Coming Soon.. //]]
 local Sea2Auto = Sea2:AddTab[[\\ Second Sea //]]
 Sea2Auto:AddToggle('Factory', {
	 Text = 'Auto Factory',
	 Default = _G.SaveSetting.AutoFactory,
 }):OnChanged(function(value)
	 AutoFactory = value
	 _G.SaveSetting.AutoFactory = value
	 savesettings()
	 task.spawn(function()
		 while wait() do
			 pcall(function()
				 if AutoFactory or AcidumRifle then
					 if game.Workspace.Enemies:FindFirstChild("Core") then
						 _G.FactoryCore = true
						 if AutoFarm then
							 AutoFarm = false
						 end
						 for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
							 if _G.FactoryCore and v.Name == "Core" and v.Humanoid.Health > 0 then
								 repeat wait()
									 FastAttack = true
									 AutoHaki()
									 Equip(WeaponName)
									 click()
									 v.HumanoidRootPart.Size = Vector3.new(60,60,60)
									 v.Humanoid.JumpPower = 0
									 v.Humanoid.WalkSpeed = 0
									 v.HumanoidRootPart.CanCollide = false
									 v.Humanoid:ChangeState(11)
									 toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,10,10))
								 until not _G.FactoryCore or v.Humanoid.Health <= 0 or AutoFactory == false
							 end
						 end
					 elseif game.ReplicatedStorage:FindFirstChild("Core") and game.ReplicatedStorage:FindFirstChild("Core"):FindFirstChild("Humanoid") then
						 _G.FactoryCore = true
						 if AutoFarm then
							 AutoFarm = false
						 end
						 toTarget(CFrame.new(502.7349853515625, 143.0749053955078, -379.078125))
					 end
				 end
			 end)
		 end
	 end)
 end)
 Sea2Auto:AddToggle('TTK', {
	 Text = 'Auto True Triple Katana',
	 Default = _G.SaveSetting.AutoTTK,
 }):OnChanged(function(value)
	 AutoTTK = value
	 savesettings()
	 task.spawn(function()
		 while wait() do
			 pcall(function()
				 if AutoTTK then
					 local string_1 = "MysteriousMan";
					 local string_2 = "2";
					 local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
					 Target:InvokeServer(string_1, string_2);  
				 end
			 end)
		 end
	 end)
 end)
 Sea2Auto:AddToggle('AutoRengoku', {
	 Text = 'Auto Rengoku',
	 Default = _G.SaveSetting.AutoRengoku,
 }):OnChanged(function(t)
	 if t == false then
		 toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	 end
	 _G.SaveSetting.AutoRengoku = t
	 AutoRengoku = t
	 savesettings()
	 task.spawn(function()
		 while wait() do
			 pcall(function()
				 if AutoRengoku then
					 if game.Players.LocalPlayer.Backpack:FindFirstChild("Hidden Key") or game.Players.LocalPlayer.Character:FindFirstChild("Hidden Key") then
						 Equip("Hidden Key")
						 toTarget(CFrame.new(6571.1201171875, 299.23028564453, -6967.841796875))
					 elseif game.Workspace.Enemies:FindFirstChild("Snow Lurker [Lv. 1375]") or game:GetService("Workspace").Enemies:FindFirstChild("Arctic Warrior [Lv. 1350]") then
						 for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
							 if (v.Name == "Snow Lurker [Lv. 1375]" or v.Name == "Arctic Warrior [Lv. 1350]") and v.Humanoid.Health > 0 then
								 repeat wait()
									 Bringmob = true
									 FastAttackSpeed = true
									 AutoHaki()
									 Equip(WeaponName)
									 _G.PosMon = v.HumanoidRootPart.CFrame
									 v.HumanoidRootPart.Size = Vector3.new(60,60,60)
									 v.Humanoid.JumpPower = 0
									 v.Humanoid.WalkSpeed = 0
									 v.HumanoidRootPart.CanCollide = false
									 v.Humanoid:ChangeState(11)
									 toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
								 until game.Players.LocalPlayer.Backpack:FindFirstChild("Hidden Key") or not AutoRengoku or not v.Parent or v.Humanoid.Health <= 0
								 Bringmob = false
								 FastAttackSpeed = false
							 end
						 end
					 else
						 Bringmob = false
						 FastAttackSpeed = false
						 toTarget(CFrame.new(5525.7045898438, 262.90060424805, -6755.1186523438))
					 end
				 end
			 end)
		 end
	 end)
 end)
 Sea2Auto:AddToggle('AutoBuysZoro', {
	 Text = 'Auto Legendary Sword',
	 Default = _G.SaveSetting.AutoBuySword,
 }):OnChanged(function(t)
 AutoBuySword = t
 _G.SaveSetting.AutoBuySword = t
 task.spawn(function()
	 while wait() do
		 pcall(function()
			 if AutoBuySword then
				 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer","1")
				 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer","2")
				 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer","3")
			 end
		 end)
	 end
 end)
 end)
 Sea2Auto:AddLabel[[       \\ Coming Soon.. //]]
 local Sea3Auto = Sea3:AddTab[[\\ Third Sea //]]
 function GetWeaponInventory(Sword)
	 for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
		 if type(v) == "table" then
			 if v.Type == "Sword" then
				 if v.Name == Sword then
					 return true
				 end
			 end
		 end
	 end
	 return false
 end
 
 Sea3Auto:AddToggle('AutoCDK', {
	 Text = 'Auto Cursed Dual Katana',
	 Default = _G.SaveSetting.AutoCDK,
 }):OnChanged(function(value)
 _G.SaveSetting.AutoCDK = value
 Auto_Cursed_Dual_Katana = value
 savesettings()
 end)
 spawn(function()
	 while wait() do
		 pcall(function()
			 if Auto_Cursed_Dual_Katana then
					 if game.Players.LocalPlayer.Character:FindFirstChild("Tushita") or game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") or game.Players.LocalPlayer.Character:FindFirstChild("Yama") or game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") then
						 if game.Players.LocalPlayer.Character:FindFirstChild("Tushita") or game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") then
							 if game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") then
								 Equip("Tushita")
								 
							 end
						 elseif game.Players.LocalPlayer.Character:FindFirstChild("Yama") or game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") then
							 if game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") then
								 Equip("Yama")
								 
							 end
						 end
					 else
						 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem","Tushita")
					 end      
			 end
		 end)
	 end
 end)
 
 spawn(function()
	 while wait() do
		 pcall(function()
			 if Auto_CDK_Quest then
				 if GetMaterial("Alucard Fragment") == 0 then
					 Auto_Quest_Yama_1 = true
					 Auto_Quest_Yama_2 = false
					 Auto_Quest_Yama_3 = false
					 Auto_Quest_Tushita_1 = false
					 Auto_Quest_Tushita_2 = false
					 Auto_Quest_Tushita_3 = false
					 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
					 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
				 elseif GetMaterial("Alucard Fragment") == 1 then
					 Auto_Quest_Yama_1 = false
					 Auto_Quest_Yama_2 = true
					 Auto_Quest_Yama_3 = false
					 Auto_Quest_Tushita_1 = false
					 Auto_Quest_Tushita_2 = false
					 Auto_Quest_Tushita_3 = false
					 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
					 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
				 elseif GetMaterial("Alucard Fragment") == 2 then
					 Auto_Quest_Yama_1 = false
					 Auto_Quest_Yama_2 = false
					 Auto_Quest_Yama_3 = true
					 Auto_Quest_Tushita_1 = false
					 Auto_Quest_Tushita_2 = false
					 Auto_Quest_Tushita_3 = false
					 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
					 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
				 elseif GetMaterial("Alucard Fragment") == 3 then
					 Auto_Quest_Yama_1 = false
					 Auto_Quest_Yama_2 = false
					 Auto_Quest_Yama_3 = false
					 Auto_Quest_Tushita_1 = true
					 Auto_Quest_Tushita_2 = false
					 Auto_Quest_Tushita_3 = false
					 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
					 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Good")
				 elseif GetMaterial("Alucard Fragment") == 4 then
					 Auto_Quest_Yama_1 = false
					 Auto_Quest_Yama_2 = false
					 Auto_Quest_Yama_3 = false
					 Auto_Quest_Tushita_1 = false
					 Auto_Quest_Tushita_2 = true
					 Auto_Quest_Tushita_3 = false
					 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
					 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Good")
				 elseif GetMaterial("Alucard Fragment") == 5 then
					 Auto_Quest_Yama_1 = false
					 Auto_Quest_Yama_2 = false
					 Auto_Quest_Yama_3 = false
					 Auto_Quest_Tushita_1 = false
					 Auto_Quest_Tushita_2 = false
					 Auto_Quest_Tushita_3 = true
					 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
					 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Good")
				 elseif GetMaterial("Alucard Fragment") == 6 then
					 if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton Boss [Lv. 2025] [Boss]") or game:GetService("Workspace").ReplicatedStorage:FindFirstChild("Cursed Skeleton Boss [Lv. 2025] [Boss]") then
						 Auto_Quest_Yama_1 = false
						 Auto_Quest_Yama_2 = false
						 Auto_Quest_Yama_3 = false
						 Auto_Quest_Tushita_1 = false
						 Auto_Quest_Tushita_2 = false
						 Auto_Quest_Tushita_3 = false
						 if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton Boss [Lv. 2025] [Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200]") then
							 for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								 if v.Name == "Cursed Skeleton Boss [Lv. 2025] [Boss]" or v.Name == "Cursed Skeleton [Lv. 2200]" then
									 if v.Humanoid.Health > 0 then
										 v.HumanoidRootPart.CanCollide = false
										 v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
										 toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,50,0))
										 game:GetService'VirtualUser':CaptureController()
										 game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
									 end
								 end
							 end
						 end
					 else
						 if (CFrame.new(-12361.7060546875, 603.3547973632812, -6550.5341796875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
							 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
							 wait(1)
							 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
							 wait(1)
							 toTarget(CFrame.new(-12361.7060546875, 603.3547973632812, -6550.5341796875))
							 wait(1.5)
							 game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
							 wait(1.5)
							 toTarget(CFrame.new(-12253.5419921875, 598.8999633789062, -6546.8388671875))
						 else
							 toTarget(CFrame.new(-12361.7060546875, 603.3547973632812, -6550.5341796875))
						 end   
					 end
				 end
			 end
		 end)
	 end
 end)
 
 spawn(function()
	 while wait() do
		 if Auto_Quest_Yama_1 then
			 pcall(function()
				 if game:GetService("Workspace").Enemies:FindFirstChild("Mythological Pirate [Lv. 1850]") then
					 for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						 if v.Name == "Mythological Pirate [Lv. 1850]" then
							 repeat wait()
								 toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,0,-2))
							 until Auto_CDK_Quest == false or Auto_Cursed_Dual_Katana == false or Auto_Quest_Yama_1 == false
							 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
						 end
					 end
				 else
					 toTarget(CFrame.new(-13451.46484375, 543.712890625, -6961.0029296875))
				 end
			 end)
		 end
	 end
 end)
 
 spawn(function()
	 while wait() do
		 pcall(function()
			 if Auto_Quest_Yama_2 then
				 for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					 if v:FindFirstChild("HazeESP") then
						 v.HazeESP.Size = UDim2.new(50,50,50,50)
						 v.HazeESP.MaxDistance = "inf"
					 end
				 end
				 for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
					 if v:FindFirstChild("HazeESP") then
						 v.HazeESP.Size = UDim2.new(50,50,50,50)
						 v.HazeESP.MaxDistance = "inf"
					 end
				 end
			 end
		 end)
	 end
 end)
 
 spawn(function()
	 while wait() do
		 pcall(function()
			 for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				 if Auto_Quest_Yama_2 and v:FindFirstChild("HazeESP") and (v.HumanoidRootPart.Position - PosMonsEsp.Position).magnitude <= 300 then
					 v.HumanoidRootPart.CFrame = PosMonsEsp
					 v.HumanoidRootPart.CanCollide = false
					 v.HumanoidRootPart.Size = Vector3.new(50,50,50)
					 if not v.HumanoidRootPart:FindFirstChild("BodyVelocity") then
						 local vc = Instance.new("BodyVelocity", v.HumanoidRootPart)
						 vc.MaxForce = Vector3.new(1, 1, 1) * math.huge
						 vc.Velocity = Vector3.new(0, 0, 0)
					 end
				 end
			 end
		 end)
	 end
 end)
 
 spawn(function()
	 while wait() do
		 if Auto_Quest_Yama_2 then 
			 pcall(function() 
				 for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					 if v:FindFirstChild("HazeESP") then
						 repeat wait()
							 if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000 then
								 BTP(y.HumanoidRootPart.CFrameMon * CFrame.new(0,20,0))
							 else
								 Bringmob = true
								 FastAttackSpeed = true
								 Equip(Sword)
								 AutoHaki()
								 PosMonsEsp = v.HumanoidRootPart.CFrame
								 v.HumanoidRootPart.Size = Vector3.new(60,60,60)
								 v.Humanoid.JumpPower = 0
								 v.Humanoid.WalkSpeed = 0
								 v.HumanoidRootPart.CanCollide = false
								 v.Humanoid:ChangeState(11)
								 toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,20,0))								
							 end      
						 until Auto_Cursed_Dual_Katana == false or Auto_Quest_Yama_2 == false or not v.Parent or v.Humanoid.Health <= 0 or not v:FindFirstChild("HazeESP")
					 else
						 for x,y in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
							 if y:FindFirstChild("HazeESP") then
								 if (y.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000 then
									 BTP(y.HumanoidRootPart.CFrameMon* CFrame.new(0,20,0))
								 else
									 toTarget(y.HumanoidRootPart.CFrame * CFrame.new(0,20,0))
								 end
							 end
						 end
					 end
				 end
			 end)
		 end
	 end
 end)
 
 spawn(function()
	 while wait() do
		 if Auto_Quest_Yama_3 then
			 pcall(function()
				 if game.Players.LocalPlayer.Backpack:FindFirstChild("Hallow Essence") then         
					 toTarget(game:GetService("Workspace").Map["Haunted Castle"].Summoner.Detection.CFrame)
				 elseif game:GetService("Workspace").Map:FindFirstChild("HellDimension") then
					 repeat wait()
						 if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200]") or game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200] [Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Hell's Messenger [Lv. 2200] [Boss]") then
							 for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								 if v.Name == "Cursed Skeleton [Lv. 2200]" or v.Name == "Cursed Skeleton [Lv. 2200] [Boss]" or v.Name == "Hell's Messenger [Lv. 2200] [Boss]" then
									 if v.Humanoid.Health > 0 then
										 repeat wait()
											 Bringmob = true
											 FastAttackSpeed = true
											 AutoHaki()
											 Equip(Sword)
											 PosMonsEsp = v.HumanoidRootPart.CFrame
											 v.HumanoidRootPart.Size = Vector3.new(60,60,60)
											 v.Humanoid.JumpPower = 0
											 v.Humanoid.WalkSpeed = 0
											 v.HumanoidRootPart.CanCollide = false
											 v.Humanoid:ChangeState(11)
											 toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,50,0))
										 until v.Humanoid.Health <= 0 or not v.Parent or Auto_Quest_Yama_3 == false
									 end
								 end
							 end
						 else
							 wait(5)
							 toTarget(game:GetService("Workspace").Map.HellDimension.Torch1.CFrame)
							 wait(1.5)
							 game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
							 wait(1.5)        
							 toTarget(game:GetService("Workspace").Map.HellDimension.Torch2.CFrame)
							 wait(1.5)
							 game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
							 wait(1.5)     
							 toTarget(game:GetService("Workspace").Map.HellDimension.Torch3.CFrame)
							 wait(1.5)
							 game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
							 wait(1.5)     
							 toTarget(game:GetService("Workspace").Map.HellDimension.Exit.CFrame)
						 end
					 until Auto_Cursed_Dual_Katana == false or Auto_Quest_Yama_3 == false or GetMaterial("Alucard Fragment") == 3
				 else
					 if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") or game.ReplicatedStorage:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
						 if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
							 for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								 if v.Name == "Soul Reaper [Lv. 2100] [Raid Boss]" then
									 if v.Humanoid.Health > 0 then
										 repeat wait()
											 toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,0,-2))
										 until Auto_Cursed_Dual_Katana == false or Auto_Quest_Yama_3 == false or game:GetService("Workspace").Map:FindFirstChild("HellDimension")
									 end
								 end
							 end
						 else
							 toTarget(CFrame.new(-9570.033203125, 315.9346923828125, 6726.89306640625))
						 end
					 else
						 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
					 end
				 end
			 end)
		 end
	 end
 end)
 
 spawn(function() 
	 while wait() do
		 if Auto_Quest_Tushita_1 then
			 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","BoatQuest",workspace.NPCs:FindFirstChild("Luxury Boat Dealer"))
		 end
	 end
 end)
 
 spawn(function()
	 while wait() do
		 if Auto_Quest_Tushita_1 then
			 BTP(CFrame.new(-9546.990234375, 21.139892578125, 4686.1142578125))
			 wait(5)
			 BTP(CFrame.new(-6120.0576171875, 16.455780029296875, -2250.697265625))
			 wait(5)
			 BTP(CFrame.new(-9533.2392578125, 7.254445552825928, -8372.69921875))    
		 end
	 end
 end)
 
 spawn(function()
	 while wait() do
		 if Auto_Quest_Tushita_2 then
			 pcall(function()
				 if (CFrame.new(-5539.3115234375, 313.800537109375, -2972.372314453125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
					 for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						 if Auto_Quest_Tushita_2 and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
							 if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2000 then
								 repeat wait()
									 v.HumanoidRootPart.CanCollide = false
									 v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
									 toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,50,0))
									 game:GetService'VirtualUser':CaptureController()
									 game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
								 until v.Humanoid.Health <= 0 or not v.Parent or Auto_Quest_Tushita_2 == false
							 end
						 end
					 end
				 else
					 toTarget(CFrame.new(-5545.1240234375, 313.800537109375, -2976.616455078125))
				 end
			 end)
		 end
	 end
 end)
 
 spawn(function()
	 while wait() do
		 if Auto_Quest_Tushita_3 then
			 pcall(function()
				 if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") or game.ReplicatedStorage:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
					 if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
						 for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							 if v.Name == "Cake Queen [Lv. 2175] [Boss]" then
								 if v.Humanoid.Health > 0 then
									 repeat wait()
										 AutoHaki()
										 Equip(Sword)
										 FastAttackSpeed = true
										 v.HumanoidRootPart.Size = Vector3.new(60,60,60)
										 v.Humanoid.JumpPower = 0
										 v.Humanoid.WalkSpeed = 0
										 v.HumanoidRootPart.CanCollide = false
										 v.Humanoid:ChangeState(11)
										 toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,50,0))
									 until Auto_Cursed_Dual_Katana == false or Auto_Quest_Tushita_3 == false or game:GetService("Workspace").Map:FindFirstChild("HeavenlyDimension")
								 end
							 end
						 end
					 else
						 toTarget(CFrame.new(-709.3132934570312, 381.6005859375, -11011.396484375))
					 end
				 elseif game:GetService("Workspace").Map:FindFirstChild("HeavenlyDimension") then
					 repeat wait()
						 if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200]") or game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200] [Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Heaven's Guardian [Lv. 2200] [Boss]") then
							 for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								 if v.Name == "Cursed Skeleton [Lv. 2200]" or v.Name == "Cursed Skeleton [Lv. 2200] [Boss]" or v.Name == "Heaven's Guardian [Lv. 2200] [Boss]" then
									 if v.Humanoid.Health > 0 then
										 repeat wait()
											 AutoHaki()
											  Equip(Sword)
											 FastAttackSpeed = true
											 v.HumanoidRootPart.Size = Vector3.new(60,60,60)
											 v.Humanoid.JumpPower = 0
											 v.Humanoid.WalkSpeed = 0
											 v.HumanoidRootPart.CanCollide = false
											 v.Humanoid:ChangeState(11)
										 until v.Humanoid.Health <= 0 or not v.Parent or Auto_Quest_Tushita_3 == false
									 end
								 end
							 end
						 else
							 wait(5)
							 toTarget(game:GetService("Workspace").Map.HeavenlyDimension.Torch1.CFrame)
							 wait(1.5)
							 game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
							 wait(1.5)        
							 toTarget(game:GetService("Workspace").Map.HeavenlyDimension.Torch2.CFrame)
							 wait(1.5)
							 game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
							 wait(1.5)     
							 toTarget(game:GetService("Workspace").Map.HeavenlyDimension.Torch3.CFrame)
							 wait(1.5)
							 game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
							 wait(1.5)     
							 toTarget(game:GetService("Workspace").Map.HeavenlyDimension.Exit.CFrame)
						 end
					 until Auto_Cursed_Dual_Katana == false or Auto_Quest_Tushita_3 == false or GetMaterial("Alucard Fragment") == 6
				 end
			 end)
		 end
	 end
 end)
 
 Sea3Auto:AddToggle('AutoSoulGuitar', {
	 Text = 'Auto Soul Guitar ( Bug Quest 3)',
	 Default = _G.SaveSetting.AutoSoulGuitar,
 }):OnChanged(function(value)
 _G.SaveSetting.AutoSoulGuitar = value
 AutoSoulGuitar = value
 savesettings()
 if value == false then
 wait()
 toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
 wait()
 end
 end)
 task.spawn(function()
	 while wait() do
		 pcall(function()
			 if AutoSoulGuitar then
				 if GetWeaponInventory("Soul Guitar") == false then
					 if (CFrame.new(-9681.458984375, 6.139880657196045, 6341.3720703125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5000 then
						 if game:GetService("Workspace").NPCs:FindFirstChild("Skeleton Machine") then
							 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("soulGuitarBuy",true)
						 else
							 if game:GetService("Workspace").Map["Haunted Castle"].Candle1.Transparency == 0 then
								 if game:GetService("Workspace").Map["Haunted Castle"].Placard1.Left.Part.Transparency == 0 then
									 Quest2 = true
									 repeat wait() toTarget(CFrame.new(-8762.69140625, 176.84783935546875, 6171.3076171875)) until (CFrame.new(-8762.69140625, 176.84783935546875, 6171.3076171875).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not AutoSoulGuitar
									 wait(1)
									 fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard7.Left.ClickDetector)
									 wait(1)
									 fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard6.Left.ClickDetector)
									 wait(1)
									 fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard5.Left.ClickDetector)
									 wait(1)
									 fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard4.Right.ClickDetector)
									 wait(1)
									 fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard3.Left.ClickDetector)
									 wait(1)
									 fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard2.Right.ClickDetector)
									 wait(1)
									 fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard1.Right.ClickDetector)
									 wait(1)
								 elseif game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment1:FindFirstChild("ClickDetector") then
									 if game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part1:FindFirstChild("ClickDetector") then
										 Quest4 = true
										 repeat wait() toTarget(CFrame.new(-9553.5986328125, 65.62338256835938, 6041.58837890625)) until (CFrame.new(-9553.5986328125, 65.62338256835938, 6041.58837890625).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not AutoSoulGuitar
										 wait(1)
										 toTarget(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part3.CFrame)
										 wait(1)
										 fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part3.ClickDetector)
										 wait(1)
										 toTarget(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.CFrame)
										 wait(1)
										 fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.ClickDetector)
										 wait(1)
										 fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.ClickDetector)
										 wait(1)
										 fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.ClickDetector)
										 wait(1)
										 toTarget(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part6.CFrame)
										 wait(1)
										 fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part6.ClickDetector)
										 wait(1)
										 fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part6.ClickDetector)
										 wait(1)
										 toTarget(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part8.CFrame)
										 wait(1)
										 fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part8.ClickDetector)
										 wait(1)
										 toTarget(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.CFrame)
										 wait(1)
										 fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.ClickDetector)
										 wait(1)
										 fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.ClickDetector)
										 wait(1)
										 fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.ClickDetector)
									 else
										 Quest3 = true
										 --Not Work Yet
									 end
								 else
									 if game:GetService("Workspace").NPCs:FindFirstChild("Ghost") then
										 local args = {
											 [1] = "GuitarPuzzleProgress",
											 [2] = "Ghost"
										 }
 
										 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
									 end
									 if game.Workspace.Enemies:FindFirstChild("Living Zombie [Lv. 2000]") then
										 for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
											 if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
												 if v.Name == "Living Zombie [Lv. 2000]" then
													 Equip(WeaponName)
													 v.HumanoidRootPart.Size = Vector3.new(60,60,60)
													 v.HumanoidRootPart.Transparency = 1
													 v.Humanoid.JumpPower = 0
													 v.Humanoid.WalkSpeed = 0
													 v.HumanoidRootPart.CanCollide = false
													 v.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,20,0)
													 toTarget(CFrame.new(-10160.787109375, 138.6616973876953, 5955.03076171875))
													 game:GetService'VirtualUser':CaptureController()
													 game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
												 end
											 end
										 end
									 else
										 toTarget(CFrame.new(-10160.787109375, 138.6616973876953, 5955.03076171875))
									 end
								 end
							 else    
								 if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",2), "Error") then
									 print("Go to Grave")
									 toTarget(CFrame.new(-8653.2060546875, 140.98487854003906, 6160.033203125))
								 elseif string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",2), "Nothing") then
									 print("Wait Next Night")
								 else
									 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",2,true)
								 end
							 end
						 end
					 else
						 toTarget(CFrame.new(-9681.458984375, 6.139880657196045, 6341.3720703125))
					 end
				 end
			 end
		 end)
	 end
 end)
 
 Sea3Auto:AddToggle('AutoTorch', {
	 Text = 'Auto Holy Torch',
	 Default = false,
 }):OnChanged(function(value)
 AutoTorch = value
			 task.spawn(function()
				 while wait() do
					 if AutoTorch then
						 repeat toTarget(CFrame.new(-10752, 417, -9366)) wait() until not AutoTorch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-10752, 417, -9366)).Magnitude <= 10
						 wait(1)
						 repeat toTarget(CFrame.new(-11672, 334, -9474)) wait() until not AutoTorch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-11672, 334, -9474)).Magnitude <= 10
						 wait(1)
						 repeat toTarget(CFrame.new(-12132, 521, -10655)) wait() until not AutoTorch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-12132, 521, -10655)).Magnitude <= 10
						 wait(1)
						 repeat toTarget(CFrame.new(-13336, 486, -6985)) wait() until not AutoTorch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-13336, 486, -6985)).Magnitude <= 10
						 wait(1)
						 repeat toTarget(CFrame.new(-13489, 332, -7925)) wait() until not AutoTorch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-13489, 332, -7925)).Magnitude <= 10
					 else
						 toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
						 break
					 end
				 end
			 end)
 end)
 
 Sea3Auto:AddToggle('AutoBuddySowrd', {
	 Text = 'Auto Buddy Sword',
	 Default = false,
 }):OnChanged(function(value)
 AutoBuddySowrd = value
			 task.spawn(function()
				 while wait() do
					 pcall(function()
						 if AutoBuddySowrd then
							 if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
								 for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									 if v.Name == ("Cake Queen [Lv. 2175] [Boss]" or v.Name == "Cake Queen [Lv. 2175] [Boss]") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
										 repeat wait()
											 Bringmob = true
											 FastAttackSpeed = true
											 AutoHaki()
											 Equip(WeaponName)
											 _G.PosMon = v.HumanoidRootPart.CFrame
											 v.HumanoidRootPart.Size = Vector3.new(60,60,60)
											 v.Humanoid.JumpPower = 0
											 v.Humanoid.WalkSpeed = 0
											 v.HumanoidRootPart.CanCollide = false
											 v.Humanoid:ChangeState(11)
											 toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
										 until not AutoBuddySowrd or v.Humanoid.Health <= 0
										 Bringmob = false
										 FastAttackSpeed = false
									 end
								 end
							 end
						 end
					 end)
				 end
			 end)
		 end)
 
 
 Sea3Auto:AddToggle('AutoEliteHunter', {
	 Text = 'Auto Elite Hunter',
	 Default = _G.SaveSetting.AutoEliteHunter,
 }):OnChanged(function(value)
 _G.SaveSetting.AutoEliteHunter = value
 savesettings()
			 task.spawn(function()
				 while wait() do
					 pcall(function()
						 if _G.SaveSetting.AutoEliteHunter or Bandanna then
							 if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
								 if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Diablo") or string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Urban") or string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Deandre") then
									 for i,v in pairs(game.ReplicatedStorage:GetChildren()) do
										 if string.find(v.Name,"Diablo") then
											 EliteHunter = toTarget(v.HumanoidRootPart.CFrame)
											 if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
												 if EliteHunter then
													 EliteHunter:Stop()
												 end
												 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
											 end
										 end	
										 if string.find(v.Name,"Urban") then
											 EliteHunter = toTarget(v.HumanoidRootPart.CFrame)
											 if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
												 if EliteHunter then
													 EliteHunter:Stop()
												 end
												 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
											 end
										 end	
										 if string.find(v.Name,"Deandre") then
											 EliteHunter = toTarget(v.HumanoidRootPart.CFrame)
											 if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
												 if EliteHunter then
													 EliteHunter:Stop()
												 end
												 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
											 end
										 end	
									 end
									 for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
										 if _G.SaveSetting.AutoEliteHunter and string.find(v.Name,"Diablo") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
											 repeat wait()
												 if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude >150 then
													 Farmtween = toTarget(v.HumanoidRootPart.CFrame)
												 elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
													 if Farmtween then
														 Farmtween:Stop()
													 end
													 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1)
 
													 FastAttackSpeed = true
													 Equip(WeaponName)
												 end 
											 until not _G.SaveSetting.AutoEliteHunter or not v.Parent or v.Humanoid.Health <= 0
											 FastAttackSpeed = false
										 end
										 if _G.SaveSetting.AutoEliteHunter and string.find(v.Name,"Urban") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
											 repeat wait()
												 if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude >150 then
													 Farmtween = toTarget(v.HumanoidRootPart.CFrame)
												 elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
													 if Farmtween then
														 Farmtween:Stop()
													 end
														 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1)
													 FastAttackSpeed = true
													 Equip(WeaponName)
												 end 
											 until not _G.SaveSetting.AutoEliteHunter or not v.Parent or v.Humanoid.Health <= 0
											 FastAttackSpeed = false
										 end
										 if _G.SaveSetting.AutoEliteHunter and string.find(v.Name,"Deandre") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
											 repeat wait()
												 if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude >150 then
													 Farmtween = toTarget(v.HumanoidRootPart.CFrame)
												 elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
													 if Farmtween then
														 Farmtween:Stop()
													 end
														 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1)
													 FastAttackSpeed = true
													 Equip(WeaponName)
												 end 
											 until not _G.SaveSetting.AutoEliteHunter or not v.Parent or v.Humanoid.Health <= 0
											 FastAttackSpeed = false
										 end
									 end
								 else
									 local string_1 = "EliteHunter";
									 local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
									 Target:InvokeServer(string_1);
								 end
							 else
								 local string_1 = "EliteHunter";
								 local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
								 Target:InvokeServer(string_1);
							 end
						 end
					 end)
				 end
			 end)
 end)
 Sea3Auto:AddLabel[[       \\ Coming Soon.. //]]
 
 MobKillCakePrince = Event:AddLabel('Opened')
 task.spawn(function()
	 while task.wait() do
		 pcall(function()
			 if string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 88 then
				 MobKillCakePrince:SetText("Monster Killed : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,41))
			 elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 87 then
				 MobKillCakePrince:SetText("Monster Killed : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,40))
			 elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 86 then
				 MobKillCakePrince:SetText("Monster Killed : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,39))
			 end
		 end)
	 end
 end)
 Event:AddToggle('AutoCakePrince', {
	 Text = 'Auto Farm Cake prince',
	 Default = _G.SaveSetting.AutoCakePrince,
 }):OnChanged(function(value)
 AutoCakePrince = value
 _G.SaveSetting.AutoCakePrince = value
 if value == false then
				toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
 end
		savesettings()
			 task.spawn(function()
				 while wait() do
					 if AutoCakePrince or PaleScarf then
						 game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CakePrinceSpawner")
						 if game.ReplicatedStorage:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
							 if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
								 for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
									 if AutoCakePrince and v.Name == "Cake Prince [Lv. 2300] [Raid Boss]" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
										 repeat wait()
											 if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
												 Farmtween = toTarget(v.HumanoidRootPart.CFrame)
											 elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
												 if Farmtween then
													 Farmtween:Stop()
												 end
												 FastAttackSpeed = true
												 AutoHaki()
												 Equip(WeaponName)
												 _G.PosMon = v.HumanoidRootPart.CFrame
												 v.HumanoidRootPart.Size = Vector3.new(60,60,60)
												 v.Humanoid.JumpPower = 0
												 v.Humanoid.WalkSpeed = 0
												 v.HumanoidRootPart.CanCollide = false
												 v.Humanoid:ChangeState(11)
												 toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
											 end
										 until not AutoCakePrince or not v.Parent or v.Humanoid.Health <= 0
										 FastAttackSpeed = false
									 end
								 end
							 else
								 if game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0 and (CFrame.new(-1990.672607421875, 4532.99951171875, -14973.6748046875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude >= 2000 then
									 FastAttackSpeed = false
									 Questtween = toTarget(CFrame.new(-2151.82153, 149.315704, -12404.9053))
									 if (CFrame.new(-2151.82153, 149.315704, -12404.9053).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
										 if Questtween then Questtween:Stop() end
										 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2151.82153, 149.315704, -12404.9053)
										 wait(.1)
									 end
								 end 
							 end
						 else
							 if game:GetService("Workspace").Enemies:FindFirstChild("Cookie Crafter [Lv. 2200]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Guard [Lv. 2225]") or game:GetService("Workspace").Enemies:FindFirstChild("Baking Staff [Lv. 2250]") or game:GetService("Workspace").Enemies:FindFirstChild("Head Baker [Lv. 2275]") then
								 for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
									 if (v.Name == "Cookie Crafter [Lv. 2200]" or v.Name == "Cake Guard [Lv. 2225]" or v.Name == "Baking Staff [Lv. 2250]" or v.Name == "Head Baker [Lv. 2275]") and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
										 repeat wait()
											 if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
												 Farmtween = toTarget(v.HumanoidRootPart.CFrame)
											 elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
												 if Farmtween then
													 Farmtween:Stop()
												 end
												 FastAttackSpeed = true
												 Bringmob = true
												 AutoHaki()
												 Equip(WeaponName)
												 _G.PosMon = v.HumanoidRootPart.CFrame
												 v.HumanoidRootPart.Size = Vector3.new(60,60,60)
												 v.Humanoid.JumpPower = 0
												 v.Humanoid.WalkSpeed = 0
												 v.HumanoidRootPart.CanCollide = false
												 v.Humanoid:ChangeState(11)
												 toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
											 end
										 until not AutoCakePrince or not v.Parent or v.Humanoid.Health <= 0
										 Bringmob = false
										 FastAttackSpeed = false
									 end
								 end
							 else
								 Questtween = toTarget(CFrame.new(-2077, 252, -12373))
								 if (CFrame.new(-2077, 252, -12373).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
									 if Questtween then Questtween:Stop() end
									 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2077, 252, -12373)
								 end
							 end
						 end
					 else
						 toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
						 break
					 end
				 end
			 end)
 end)
local BoneCheck = GetMaterial("Bones")
Event:AddLabel[[         \\ Holloween //]]
local Bone = Event:AddLabel('Bone :')

task.spawn(function()
	 while task.wait() do
		 pcall(function()
		     Bone:SetText('Bone : '..BoneCheck)
		 end)
	 end
end)
Event:AddToggle('AutoHollow', {
	 Text = 'Auto Farm Hallow Scythe',
	 Default = _G.SaveSetting.AutoHollow,
 }):OnChanged(function(value)
 AutoHollow = value
 _G.SaveSetting.AutoHollow = value
 savesettings()
 if value == false then
toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
 end
 end)
           task.spawn(function()
				while wait() do
					pcall(function()
						if AutoHollow then
						    BypassTp = false
						    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
							if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if string.find(v.Name , "Soul Reaper") then
										repeat wait()
											Bringmob = true
											FastAttackSpeed = true
											AutoHaki()
											Equip(WeaponName)
											_G.PosMon = v.HumanoidRootPart.CFrame
											v.HumanoidRootPart.Size = Vector3.new(60,60,60)
											v.Humanoid.JumpPower = 0
											v.Humanoid.WalkSpeed = 0
											v.HumanoidRootPart.CanCollide = false
											v.Humanoid:ChangeState(11)
											toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
										until v.Humanoid.Health <= 0 or not AutoHollow
										Bringmob = false
										FastAttackSpeed = false
										else
									end
								end
							else
								toTarget(CFrame.new(-9524.7890625, 315.80429077148, 6655.7192382813))
							end
							else
							    BypassTp = true
						end
					end)
				end
 end)
Event:AddLabel[[         \\ Raid Boss //]]		
Event:AddLabel('Rip Indra : Not Spawned.')
task.spawn(function()
	 while task.wait() do
		 pcall(function()
		     if game.Workspace.Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") or game.ReplicatedStorage:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") then
		     Bone:SetText('Rip Indra : Spawned.')
		     end
		 end)
	 end
end)
Event:AddToggle('RipIndra', {
	 Text = 'Auto Rip Indra',
	 Default = _G.SaveSetting.RipIndra,
 }):OnChanged(function(value)
 RipIndra = value
 _G.SaveSetting.RipIndra = value
 savesettings()
  if value == false then
toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
 end
 end)
 task.spawn(function()
				while wait() do
					pcall(function()
						if RipIndra or ValkyrieHelmet then
							if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if string.find(v.Name , "rip_indra True Form") then
										repeat wait()
											Bringmob = true
											FastAttackSpeed = true
											AutoHaki()
											Equip(WeaponName)
											_G.PosMon = v.HumanoidRootPart.CFrame
											v.HumanoidRootPart.Size = Vector3.new(60,60,60)
											v.Humanoid.JumpPower = 0
											v.Humanoid.WalkSpeed = 0
											v.HumanoidRootPart.CanCollide = false
											v.Humanoid:ChangeState(11)
											toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
										until v.Humanoid.Health <= 0 or not RipIndra
										Bringmob = false
										FastAttackSpeed = false
										else
									end
								end
							else
								toTarget(CFrame.new(-5524.53271, 313.800537, -2918.07422, 0.964194059, 0, 0.265197694, 0, 1, 0, -0.265197694, 0, 0.964194059))
							end
						end
					end)
				end
 end)
 Event:AddToggle('RipIndra', {
	 Text = 'Auto Rip Indra [Hop]',
	 Default = _G.SaveSetting.RipIndraHop,
 }):OnChanged(function(value)
  _G.SaveSetting.RipIndraHop = value
  RipIndraHop = value
  savesettings()
  task.spawn(function()
	while task.wait() do
		pcall(function()
			if RipIndraHop and RipIndra and not game.Workspace.Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") then
			wait(5)
            ServerHop()
			end
		end)
	end
end)
 end)
local Mixed = Mix:AddTab[[\\ Mixed //]]
 Mixed:AddToggle('AutoRandomFruit', {
	 Text = 'Auto Random Fruit',
	 Default = _G.SaveSetting.AutoRandomFruit,
 }):OnChanged(function(t)
 AutoRandomFruit = t
 _G.SaveSetting.AutoRandomFruit = t
 savesettings()
 spawn(function()
	 while wait(.2) do
		 if AutoRandomFruit or _G.SaveSetting.AutoRandomFruit then
			 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
			 wait(20)
		 end
	 end
 end)
 end)
 Mixed:AddToggle('AutoStoreFruit', {
	 Text = 'Auto Store All Fruit',
	 Default = _G.SaveSetting.AutoStoreFruit,
 }):OnChanged(function(t)
 AutoStoreFruit = t
 _G.SaveSetting.AutoStoreFruit = t
 savesettings()
 spawn(function()
	 while wait(2) do
		 pcall(function() 
			 if AutoStoreFruit then
				 if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bomb Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bomb Fruit") then
					 Equip('Bomb Fruit')
					 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Bomb-Bomb",game:GetService("Players").LocalPlayer.Character["Bomb Fruit"])
					 wait(1)
				 end
				 if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spike Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spike Fruit") then
					 Equip('Spike Fruit')
					 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spike-Spike",game:GetService("Players").LocalPlayer.Character["Spike Fruit"])
					 wait(1)
				 end
				 if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Chop Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Chop Fruit") then
					 Equip('Chop Fruit')
					 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Chop-Chop",game:GetService("Players").LocalPlayer.Character["Chop Fruit"])
					 wait(1)
				 end
				 if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spring Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spring Fruit") then
					 Equip('Spring Fruit')
					 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spring-Spring",game:GetService("Players").LocalPlayer.Character["Spring Fruit"])
					 wait(1)
				 end
				 if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Kilo Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kilo Fruit") then
					 Equip('Kilo Fruit')
					 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Kilo-Kilo",game:GetService("Players").LocalPlayer.Character["Kilo Fruit"])
					 wait(1)
				 end
				 if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Smoke Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Smoke Fruit") then
					 Equip('Smoke Fruit')
					 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Smoke-Smoke",game:GetService("Players").LocalPlayer.Character["Smoke Fruit"])
					 wait(1)
				 end
				 if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spin Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spin Fruit") then
					 Equip('Spin Fruit')
					 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spin-Spin",game:GetService("Players").LocalPlayer.Character["Spin Fruit"])
					 wait(1)
				 end
				 if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flame Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame Fruit") then
					 Equip('Flame Fruit')
					 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Flame-Flame",game:GetService("Players").LocalPlayer.Character["Flame Fruit"])
					 wait(1)
				 end
				 if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Falcon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Falcon Fruit") then
					 Equip('Bird: Falcon Fruit')
					 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Bird-Bird: Falcon",game:GetService("Players").LocalPlayer.Character["Bird: Falcon Fruit"])
					 wait(1)
				 end
				 if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ice Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice Fruit") then
					 Equip('Ice Fruit')
					 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Ice-Ice",game:GetService("Players").LocalPlayer.Character["Ice Fruit"])
					 wait(1)
				 end
				 if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sand Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand Fruit") then
					 Equip('Sand Fruit')
					 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Sand-Sand",game:GetService("Players").LocalPlayer.Character["Sand Fruit"])
					 wait(1)
				 end
				 if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark Fruit") then
					 Equip('Dark Fruit')
					 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Dark-Dark",game:GetService("Players").LocalPlayer.Character["Dark Fruit"])
					 wait(1)
				 end
				 if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Revive Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Revive Fruit") then
					 Equip('Revive Fruit')
					 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Revive-Revive",game:GetService("Players").LocalPlayer.Character["Revive Fruit"])
					 wait(1)
				 end
				 if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Diamond Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Diamond Fruit") then
					 Equip('Diamond Fruit')
					 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Diamond-Diamond",game:GetService("Players").LocalPlayer.Character["Diamond Fruit"])
					 wait(1)
				 end
				 if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Light Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light Fruit") then
					 Equip('Light Fruit')
					 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Light-Light",game:GetService("Players").LocalPlayer.Character["Light Fruit"])
					 wait(1)
				 end
				 if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Love Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Love Fruit") then
					 Equip('Love Fruit')
					 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Love-Love",game:GetService("Players").LocalPlayer.Character["Love Fruit"])
					 wait(1)
				 end
				 if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rubber Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rubber Fruit") then
					 Equip('Rubber Fruit')
					 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Rubber-Rubber",game:GetService("Players").LocalPlayer.Character["Rubber Fruit"])
					 wait(1)
				 end
				 if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Barrier Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Barrier Fruit") then
					 Equip('Barrier Fruit')
					 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Barrier-Barrier",game:GetService("Players").LocalPlayer.Character["Barrier Fruit"])
					 wait(1)
				 end
				 if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Magma Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma Fruit") then
					 Equip('Magma Fruit')
					 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Magma-Magma",game:GetService("Players").LocalPlayer.Character["Magma Fruit"])
					 wait(1)
				 end
				 if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake Fruit") then
					 Equip('Quake Fruit')
					 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Quake-Quake",game:GetService("Players").LocalPlayer.Character["Quake Fruit"])
					 wait(1)
				 end
				 if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Human-Human: Buddha Fruit") then
					 Equip('Human-Human: Buddha Fruit')
					 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Human-Human: Buddha",game:GetService("Players").LocalPlayer.Character["Human-Human: Buddha Fruit"])
					 wait(1)
				 end
				 if game:GetService("Players").LocalPlayer.Character:FindFirstChild("String Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("String Fruit") then
					 Equip('String Fruit')
					 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","String-String",game:GetService("Players").LocalPlayer.Character["String Fruit"])
					 wait(1)
				 end
				 if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Phoenix Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Phoenix Fruit") then
					 Equip('Bird: Phoenix Fruit')
					 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Bird-Bird: Phoenix",game:GetService("Players").LocalPlayer.Character["Bird: Phoenix Fruit"])
					 wait(1)
				 end
				 if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rumble Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble Fruit") then
					 Equip('Rumble Fruit')
					 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Rumble-Rumble",game:GetService("Players").LocalPlayer.Character[("Rumble Fruit")])
					 wait(1)
				 end
				 if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Paw Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Paw Fruit") then
					 Equip('Paw Fruit')
					 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Paw-Paw",game:GetService("Players").LocalPlayer.Character[("Paw Fruit")])
					 wait(1)
				 end
				 if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Gravity Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gravity Fruit") then
					 Equip('Gravity Fruit')
					 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Gravity-Gravity",game:GetService("Players").LocalPlayer.Character[("Gravity Fruit")])
					 wait(1)
				 end
				 if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dough Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough Fruit") then
					 Equip("Dough Fruit")
					 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Dough-Dough",game:GetService("Players").LocalPlayer.Character[("Dough Fruit")])
					 wait(1)
				 end
				 if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Shadow Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Shadow Fruit") then
					 Equip("Shadow Fruit")
					 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Shadow-Shadow",game:GetService("Players").LocalPlayer.Character[("Shadow Fruit")])
					 wait(1)
				 end
				 if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Venom Fruit") then
					 Equip("Venom Fruit")
					 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Venom-Venom",game:GetService("Players").LocalPlayer.Character[("Venom Fruit")])
					 wait(1)
				 end
				 if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Control Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Control Fruit") then
					 Equip("Control Fruit")
					 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Control-Control",game:GetService("Players").LocalPlayer.Character[("Control Fruit")])
					 wait(1)
				 end
				 if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Fruit") then
					 Equip("Dragon Fruit")
					 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Dragon-Dragon",game:GetService("Players").LocalPlayer.Character[("Dragon Fruit")])
					 wait(1)
				 end
				 if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spirit Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spirit Fruit") then
					 Equip("Spirit Fruit")
					 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spirit-Spirit",game:GetService("Players").LocalPlayer.Character[("Spirit Fruit")])
					 wait(1)
				 end
				 if  game:GetService("Players").LocalPlayer.Character:FindFirstChild("Portal Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Portal Fruit") then
					 Equip("Portal Fruit")
					 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Portal-Portal",game:GetService("Players").LocalPlayer.Character[("Portal Fruit")])
					 wait(1)
				 end
				 if  game:GetService("Players").LocalPlayer.Character:FindFirstChild("Blizzard Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Blizzard Fruit") then
					 Equip("Blizzard Fruit")
					 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Blizzard-Blizzard",game:GetService("Players").LocalPlayer.Character[("Blizzard Fruit")])
					 wait(1)
				 end
			 end
		 end)
	 end
 end)
 end)
 Mixed:AddToggle('BringFruit', {
	 Text = 'Bring All Fruit [Risk]',
	 Default = _G.SaveSetting.BringFruit,
 }):OnChanged(function(t)
 BringFruit = t
 _G.SaveSetting.BringFruit = t
 savesettings()
 spawn(function()
	 while wait(.15) do
		 pcall(function()
			 if BringFruit then
				 for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
					 if v:IsA ("Tool") and (v.Handle.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 15000 then
						 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Handle.CFrame
						 v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
					 end
				 end
			 end
		 end)
	 end
 end)
 end)

local MasteryFarm = MasteryBox:AddTab[[Mastery]]
MasteryFarm:AddToggle('FarmMasGun', {
	 Text = 'Auto Farm Mastery [Gun]',
	 Default = _G.SaveSetting.FarmMasGun,
 }):OnChanged(function(value)
 _G.SaveSetting.FarmMasGun = value
 FarmMasGun = value
 savesettings()
 end)
 
MasteryFarm:AddToggle('FarmMasDF', {
	 Text = 'Auto Farm Mastery [DF]',
	 Default = _G.SaveSetting.FarmMasDF,
 }):OnChanged(function(value)
 _G.SaveSetting.FarmMasDF = value
 FarmMasDF = value
 savesettings()
 end)
 MasteryFarm:AddLabel[[     \\ Mastery - Setting //]]
 MasteryFarm:AddSlider('Health', {
    Text = 'Health (Default : 20%)',
    Default = _G.SaveSetting.Health,
    Min = 1,
    Max = 100,
    Rounding = 0,
    Compact = false,
}):OnChanged(function(value)
_G.SaveSetting.Health = value
savesettings()
Health = value
end)

MasteryFarm:AddSlider('DistanceX', {
    Text = 'Distance X',
    Default = _G.SaveSetting.DistanceX,
    Min = -100,
    Max = 100,
    Rounding = 0,
    Compact = false,
    Tooltip = 'Front Enemies',
}):OnChanged(function(value)
_G.SaveSetting.DistanceX = value
savesettings()
DistanceX = value
end)

MasteryFarm:AddSlider('DistanceY', {
    Text = 'Distance Y',
    Default = _G.SaveSetting.DistanceY,
    Min = -100,
    Max = 100,
    Rounding = 0,
    Compact = false,
    Tooltip = 'On Enemies',
}):OnChanged(function(value)
_G.SaveSetting.DistanceY = value
savesettings()
DistanceY = value
end)

MasteryFarm:AddSlider('DistanceZ', {
    Text = 'Distance Z (Default : 30)',
    Default = _G.SaveSetting.DistanceZ,
    Min = -100,
    Max = 100,
    Rounding = 0,
    Compact = false,
    Tooltip = 'Behind Enemies',
}):OnChanged(function(value)
_G.SaveSetting.DistanceZ = value
savesettings()
DistanceZ = value
end)


local function CheckQuestMasteryFarm()
	if World1 then
		Name = "Galley Captain [Lv. 650]";
		CFrameMon = CFrame.new(5649, 39, 4936);
	end
	if World2 then
		Name = "Water Fighter [Lv. 1450]";
		CFrameMon = CFrame.new(-3385, 239, -10542);
	end
	if ThreeWorld then
		Name = "Reborn Skeleton [Lv. 1975]";
		CFrameMon = CFrame.new(-9506.14648, 172.130661, 6101.79053);
	end
end

task.spawn(function()
	while wait() do
		for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
			if v:IsA("Tool") then
				if v:FindFirstChild("RemoteFunctionShoot") then 
					SelectWeaponGun = v.Name
				end
			end
		end
	end
end)
spawn(function()
	while wait() do
		if FarmMasDF then
			CheckQuest()
			AutoFarmMasteryDevilFruit()
			AutoHaki()
		end
	end
end)
spawn(function()
	while wait() do
		if FarmMasGun then
			CheckQuest()
			AutoFarmMasteryGun()
			AutoHaki()
		end
	end
end)
spawn(function()
	local gt = getrawmetatable(game)
	local old = gt.__namecall
	setreadonly(gt,false)
	gt.__namecall = newcclosure(function(...)
		local args = {...}
		if getnamecallmethod() == "InvokeServer" then 
			if SelectWeaponGun then
				if SelectWeaponGun == "Soul Guitar" then
					if tostring(args[2]) == "TAP" then
						if FarmMasGun and UseSkillMasteryGun then
							args[3] = PositionSkillMasteryGun
						end
					end
				end
			end
		end
		return old(unpack(args))
	end)
	setreadonly(gt,true)
end)

task.spawn(function()
	while wait() do
		for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
			if v:IsA("Tool") then
				if v:FindFirstChild("RemoteFunctionShoot") then 
					SelectWeaponGun = v.Name
				end
			end
		end
	end
end)

function AutoFarmMasteryGun()
	if game:GetService("Workspace").Enemies:FindFirstChild(Name) then
		for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
			if FarmMasGun and v.Name == Name and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
				repeat wait()
					FarmtoTarget = toTarget(v.HumanoidRootPart.CFrame * CFrame.new(DistanceX,DistanceY,DistanceZ))
					if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
						if FarmtoTarget then FarmtoTarget:Stop() end
						Bringmob = true
						_G.PosMon = v.HumanoidRootPart.CFrame
						if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
							game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
							game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
						end
						HealthMin = v.Humanoid.MaxHealth*Health/100
						PositionSkillMasteryGun = v.HumanoidRootPart.Position
						if v.Humanoid.Health <= HealthMin and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
							Equip(SelectWeaponGun)
							UseSkillMasteryGun = true
							-- v.HumanoidRootPart.CanCollide = false
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(DistanceX,DistanceY,DistanceZ)
							if game:GetService("Players").LocalPlayer.Character:FindFirstChild(SelectWeaponGun) and game:GetService("Players").LocalPlayer.Character:FindFirstChild(SelectWeaponGun):FindFirstChild("RemoteFunctionShoot") then
								click()
								local args = {
									[1] = v.HumanoidRootPart.Position,
									[2] = v.HumanoidRootPart
								}
								game:GetService("Players").LocalPlayer.Character[SelectWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(args))
							end 
						else
							UseSkillMasteryGun = false
							click()
							Equip(WeaponName)
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(DistanceX,DistanceY,DistanceZ)
						end
					end
				until not game:GetService("Workspace").Enemies:FindFirstChild(Name) or not FarmMasGun or v.Humanoid.Health <= 0 or not v.Parent
				UseSkillMasteryGun = false
				Bringmob = false
			end
		end
	else
		Bringmob = false
		Modstween = toTarget(CFrameMon)
	end
end

function AutoFarmMasteryDevilFruit()
	if game:GetService("Workspace").Enemies:FindFirstChild(Name) then
		for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
			if FarmMasDF and v.Name == Name and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
				repeat wait()
					FarmtoTarget = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame * CFrame.new(DistanceX,DistanceY,DistanceZ))
					if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
						if FarmtoTarget then FarmtoTarget:Stop() end
						Bringmob = true
						_G.PosMon = v.HumanoidRootPart.CFrame
						HealthMin = v.Humanoid.MaxHealth*Health/100
						if v.Humanoid.Health <= HealthMin and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
							Equip(game.Players.LocalPlayer.Data.DevilFruit.Value)
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(DistanceX,DistanceY,DistanceZ)
							if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
								PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
								UseSkillMasteryDevilFruit = true
								if game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
									MasteryDevilFruit = require(game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].Data)
									DevilFruitMastery = game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].Level.Value
								elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
									MasteryDevilFruit = require(game:GetService("Players").LocalPlayer.Backpack[game.Players.LocalPlayer.Data.DevilFruit.Value].Data)
									DevilFruitMastery = game:GetService("Players").LocalPlayer.Backpack[game.Players.LocalPlayer.Data.DevilFruit.Value].Level.Value
								end
								if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon-Dragon") then
									if sKillz and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.Z then
										game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
										wait(.1)
										game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
									end
									if sKillx and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.X then
										game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
										wait(.1)
										game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
									end   
								elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha") then
									if sKillz and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and game.Players.LocalPlayer.Character.HumanoidRootPart.Size == Vector3.new(7.6, 7.676, 3.686) and DevilFruitMastery >= MasteryDevilFruit.Lvl.Z then
									else
										game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
										wait(.1)
										game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
									end
									if sKillx and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.X then
										game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
										wait(.1)
										game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
									end
									if sKillc and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.C then
										game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
										wait(.1)
										game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
									end  
								elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom-Venom") then
									if sKillz and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.Z then
										game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
										wait(4)
										game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
									end
									if sKillx and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.X then
										game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
										wait(.1)
										game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
									end
									if sKillc and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.C then
										game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
										wait(.1)
										game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
									end
								elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
									game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).MousePos.Value = v.HumanoidRootPart.Position
									if sKillz and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.Z then
										game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
										wait(.1)
										game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
									end
									if sKillx and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.X then
										game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
										wait(.1)
										game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
									end
									if sKillc and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.C then
										game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
										wait(.1)
										game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
									end
									if sKillv and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.V then
										game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
										wait(.1)
										game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
									end
								end
							end
						else
							game:GetService('VirtualUser'):CaptureController()
							game:GetService('VirtualUser'):ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
							UseSkillMasteryDevilFruit = false
							Equip(WeaponName)
							v.HumanoidRootPart.Size = Vector3.new(60,60,60)
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(DistanceX,DistanceY,DistanceZ)
						end
					end
				until not game:GetService("Workspace").Enemies:FindFirstChild(Name) or not FarmMasDF or v.Humanoid.Health <= 0 or not v.Parent
				Bringmob = false
			end
		end
	else
		Bringmob = false
		Modstween = toTarget(CFrameMon.Position,CFrameMon)
		if Old_World and (Name == "Fishman Commando [Lv. 400]" or Name == "Fishman Warrior [Lv. 375]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
			if Modstween then Modstween:Stop() end wait(.5)
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
		elseif Old_World and not (Name == "Fishman Commando [Lv. 400]" or Name == "Fishman Warrior [Lv. 375]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
			if Modstween then Modstween:Stop() end wait(.5)
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
		elseif Old_World and (Name == "God's Guard [Lv. 450]" or Name == "Sky Bandit [Lv. 150]" or Name == "Dark Master [Lv. 175]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 3000 then
			if Modstween then Modstween:Stop() end wait(.5)
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-4607.8227539063, 872.54248046875, -1667.5568847656))
		elseif Old_World and (Name == "Shanda [Lv. 475]" or Name == "Royal Squad [Lv. 525]"or Name == "Royal Soldier [Lv. 550]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 5000 then
			if Modstween then Modstween:Stop() end wait(.5)
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
		elseif Old_World and string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
			if Modstween then Modstween:Stop() end
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
		elseif Old_World and not string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
			if Modstween then Modstween:Stop() end
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
		elseif (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
			if Modstween then Modstween:Stop() end wait(.5)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
		end 
	end
end
local SettingGeneral3 = SettingBox:AddTab('Skills')
SettingGeneral3:AddLabel[[      \\ Mastery - Skills //]]
SettingGeneral3:AddToggle('SkillZ', {
	 Default = _G.SaveSetting.sKillz,
	 Text = 'Skill Z',
 }):OnChanged(function(value)
 sKillz = value
 _G.SaveSetting.sKillz = value
 savesettings()
 end)
 
 SettingGeneral3:AddToggle('sKillx', {
	 Default = _G.SaveSetting.sKillx,
	 Text = 'Skill X',
 }):OnChanged(function(value)
 sKillx = value
 _G.SaveSetting.sKillx = value
 savesettings()
 end)
 
 SettingGeneral3:AddToggle('sKillc', {
	 Default = _G.SaveSetting.sKillc,
	 Text = 'Skill C',
 }):OnChanged(function(value)
 sKillc = value
 _G.SaveSetting.sKillc = value
 savesettings()
 end)
 
SettingGeneral3:AddToggle('sKillv', {
	 Default = _G.SaveSetting.sKillv,
	 Text = 'Skill V',
 }):OnChanged(function(value)
 sKillv = value
 _G.SaveSetting.sKillv = value
 savesettings()
 end)
local AccessoriesAuto = Ass:AddTab[[\\ Accessories //]]
AccessoriesAuto:AddToggle('ValkyrieHelmet', {
	 Default = _G.SaveSetting.ValkyrieHelmet ,
	 Text = 'Auto Valkyrie Helmet',
 }):OnChanged(function(value)
 ValkyrieHelmet = value
 _G.SaveSetting.ValkyrieHelmet = value
 savesettings()
end)
AccessoriesAuto:AddToggle('PaleScarf', {
	 Default = _G.SaveSetting.PaleScarf  ,
	 Text = 'Auto Pale Scarf',
 }):OnChanged(function(value)
 PaleScarf = value
 _G.SaveSetting.PaleScarf = value
 savesettings()
end)
AccessoriesAuto:AddToggle('Bandanna', {
	 Default = _G.SaveSetting.Bandanna  ,
	 Text = 'Auto Bandanna',
 }):OnChanged(function(value)
 Bandanna = value
 _G.SaveSetting.Bandanna = value
 savesettings()
end)
AccessoriesAuto:AddToggle('Musketeer', {
	Default = _G.SaveSetting.Musketeer  ,
	Text = 'Auto Musketeer Hat',
}):OnChanged(function(value)
	Musketeer = value
_G.SaveSetting.Musketeer = value
savesettings()
end)
task.spawn(function()
	while wait() do
		pcall(function()
			if Musketeer then
				if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
					repeat 
						toTarget(CFrame.new(-12444.78515625, 332.40396118164, -7673.1806640625)) 
						wait() 
					until not Musketeer or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-12444.78515625, 332.40396118164, -7673.1806640625)).Magnitude <= 10
					wait(.5)
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen")
					wait(1)
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","CitizenQuest",1)
					elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Defeat 50 Forest Pirates") then
						if game:GetService("Workspace").Enemies:FindFirstChild("Forest Pirate [Lv. 1825]") then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == "Forest Pirate [Lv. 1825]" then
									repeat wait()
										Bringmob = true
										FastAttackSpeed = true
										AutoHaki()
										Equip(WeaponName)
										_G.PosMon = v.HumanoidRootPart.CFrame
										v.HumanoidRootPart.Size = Vector3.new(60,60,60)
										v.Humanoid.JumpPower = 0
										v.Humanoid.WalkSpeed = 0
										v.HumanoidRootPart.CanCollide = false
										v.Humanoid:ChangeState(11)
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
									until not Musketeer or v.Humanoid.Health <= 0
									Bringmob = false
									FastAttackSpeed = false
								end
							end
						
					
					end
				end
			end
		end)
	end
end)
local GunsAuto = Gun:AddTab[[\\ Guns //]]
GunsAuto:AddToggle('SerpentBow', {
	Default = _G.SaveSetting.SerpentBow  ,
	Text = 'Auto Serpent Bow',
}):OnChanged(function(value)
	Auto_Serpent_Bow = value
	_G.SaveSetting.SerpentBow = value
	savesettings()
	spawn(function()
		while wait(.5) do
			pcall(function()
				if Auto_Serpent_Bow then
					if not Auto_Serpent_Bow_Farm then
						if game.Workspace.Enemies:FindFirstChild("Island Empress [Lv. 1675] [Boss]") or game.ReplicatedStorage:FindFirstChild("Island Empress [Lv. 1675] [Boss]") then
							Auto_Serpent_Bow_Farm = true
							if game.Workspace.Enemies:FindFirstChild("Island Empress [Lv. 1675] [Boss]") then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
								for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
									if v.Name == "Island Empress [Lv. 1675] [Boss]" and v.Humanoid.Health > 0 then
										repeat wait()
											Equip(WeaponName)
											toTarget(v.HumanoidRootPart.CFrame*CFrame.new(0,30,0))
											FastAttackSpeed = true
										until v.Humanoid.Health <= 0 or not v.Parent or not Auto_Serpent_Bow
									end
								end
							elseif game.ReplicatedStorage:FindFirstChild("Island Empress [Lv. 1675] [Boss]") then
								toTarget(game.ReplicatedStorage:FindFirstChild("Island Empress [Lv. 1675] [Boss]").HumanoidRootPart.CFrame*CFrame.new(0,30,0))
							end

						elseif Auto_Serpent_Bow_Farm then
							Auto_Serpent_Bow_Farm = nil
							Mix_Farm = nil
						end
					end
				else
					wait(2)
				end
			end)
		end
	end)
end)
GunsAuto:AddToggle('AcidumRifle', {
	Default = _G.SaveSetting.AcidumRifle,
	Text = 'Auto Acidum Rifle [World 2]',
}):OnChanged(function(value)
_G.SaveSetting.AcidumRifle = value
AcidumRifle = value
savesettings()
end)

GunsAuto:AddLabel[[       \\ Coming Soon.. //]]

local Statistics = Statis:AddTab[[\\ Statistics //]]
if Old_World then
Statistics:AddLabel('    Blox Fruits | Old World')
Statistics:AddLabel('Place ID : 2753915549')
elseif New_World then
Statistics:AddLabel('    Blox Fruits | New World')
Statistics:AddLabel('Place ID : 4442272183')
elseif Three_World then   
Statistics:AddLabel('    Blox Fruits | Third World')
Statistics:AddLabel('Place ID : 7449423635')    
end
Statistics:AddLabel('Player Name : '..game.Players.LocalPlayer.Name)
local UserInterfaceTab = UserInterface:AddTab[[\\ User Interface //]]
UserInterfaceTab:AddButton('Open Devil Fruit Shop',function()
game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.Visible = true
end)
UserInterfaceTab:AddButton('Open Awaking Fruit',function()
game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitInventory.Visible = true
end)
local MasteryFarm = MasteryBox:AddTab[[Haki]]
function FPSBooster()
    local decalsyeeted = true
    local g = game
    local w = g.Workspace
    local l = g.Lighting
    local t = w.Terrain
    sethiddenproperty(l,"Technology",2)
    sethiddenproperty(t,"Decoration",false)
    t.WaterWaveSize = 0
    t.WaterWaveSpeed = 0
    t.WaterReflectance = 0
    t.WaterTransparency = 0
    l.GlobalShadows = false
    l.FogEnd = 9e9
    l.Brightness = 0
    settings().Rendering.QualityLevel = "Level01"
    for i, v in pairs(g:GetDescendants()) do
        if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
            v.Material = "Plastic"
            v.Reflectance = 0
        elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
            v.Transparency = 1
        elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
            v.Lifetime = NumberRange.new(0)
        elseif v:IsA("Explosion") then
            v.BlastPressure = 1
            v.BlastRadius = 1
        elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
            v.Enabled = false
        elseif v:IsA("MeshPart") then
            v.Material = "Plastic"
            v.Reflectance = 0
            v.TextureID = 10385902758728957
        end
    end
    for i, e in pairs(l:GetChildren()) do
        if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
            e.Enabled = false
        end
    end
end

local SettingUI2 = SettingTab:AddTab[[\\ Game Boots //]]
SettingUI2:AddToggle('FastMode', {
	Default = _G.SaveSetting.FastMode,
	Text = 'Auto Boots Fps',
}):OnChanged(function(value)
_G.SaveSetting.FastMode = value
FastMode = value
savesettings()
if FastMode == true then
    FPSBooster()
end

end)


SettingUI2:AddToggle('WhiteScreen', {
	Default = _G.SaveSetting.WhiteScreen,
	Text = 'Auto White Screen',
}):OnChanged(function(value)
_G.SaveSetting.WhiteScreen = value
WhiteScreen = value
savesettings()
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
if value == true then
			RunService:Set3dRenderingEnabled(false)
			setfpscap(15)
		else
			RunService:Set3dRenderingEnabled(true)
		end
end)

