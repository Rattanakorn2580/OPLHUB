for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
  if v.Name == "Compass" then
game.Players.LocalPlayer.Charecter.HumanoidRootPart.CFrame = v.Parent.CFrame
    wait()
  end
end
