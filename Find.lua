for i,v in pairs(game:GetService("Workspace").Compass:GetChildren()) do
  if v.Name == "TouchInterest" then
game.Players.LocalPlayer.Charecter.HumanoidRootPart.CFrame = v.Parent.CFrame
    wait()
  end
end
