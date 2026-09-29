 Blox Fruits Hub (All-in-One)
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Blox Fruits All-in-One Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "BloxFruitsConfig"})

-- สร้างแท็บหลัก
local TabFarm = Window:MakeTab({Name = "Auto Farm", Icon = "rbxassetid://4483345998", PremiumOnly = false})
local TabTeleport = Window:MakeTab({Name = "Teleport", Icon = "rbxassetid://4483345998", PremiumOnly = false})
local TabMisc = Window:MakeTab({Name = "Misc / Extra", Icon = "rbxassetid://4483345998", PremiumOnly = false})

-- ฟังก์ชัน Auto Farm Level
TabFarm:AddToggle({
    Name = "Auto Farm Level",
    Default = false,
    Callback = function(Value)
        _G.AutoFarm = Value
        while _G.AutoFarm do
            task.wait()
            -- โค้ดสำหรับดึงเควสและโจมตีมอนสเตอร์ตามเลเวลปัจจุบัน
            print("Auto Farming...")
        end
    end
})

-- ฟังก์ชัน Auto Stats
TabFarm:AddToggle({
    Name = "Auto Stats (Melee/Defense)",
    Default = false,
    Callback = function(Value)
        _G.AutoStats = Value
        while _G.AutoStats do
            task.wait(1)
            -- โค้ดอัพพอยต์สเตตัสอัตโนมัติ
        end
    end
})

-- ฟังก์ชัน Teleport ไปยังเกาะต่างๆ
TabTeleport:AddDropdown({
    Name = "Select Island",
    Options = {"Sea 1 (Old World)", "Sea 2 (Dressrosa)", "Sea 3 (Zou/Floating Turtle)"},
    Default = "Sea 1",
    Callback = function(Option)
        print("Teleporting to: " .. Option)
        -- โค้ดวาร์ปไปพิกัดเกาะ
    end
})

-- ฟังก์ชันเสริม (Misc) เช่น ESP ผลไม้
TabMisc:AddToggle({
    Name = "Fruit ESP (มองหาผลไม้)",
    Default = false,
    Callback = function(Value)
        _G.FruitESP = Value
        -- โค้ดแสดงตำแหน่งผลไม้ที่เกิดในแมพ
    end
})

OrionLib:Init()
