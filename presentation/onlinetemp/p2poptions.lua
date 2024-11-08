local P2POptions = {}

function P2POptions:ShowP2POptions(parentMenu)
    -- Debugging output to check if this function is called
    print("P2POptions:ShowP2POptions called")

    -- Verify that the parentMenu is passed in correctly
    if not parentMenu then
        print("Error: parentMenu is nil in P2POptions:ShowP2POptions")
        return
    end

    -- Add logic to actually show the P2P options screen
    -- For now, we'll simulate showing the menu by printing
    -- Replace this with actual UI logic to show the options
    print("Displaying P2P options menu...")

    -- Simulate building a P2P options menu (replace with actual UI logic)
    parentMenu:AddScreen({
        screenName = "P2POptionsScreen",
        data = {
            title = "P2P Options",
            options = {
                { id = "P2P_Option_1", label = "Option 1: Connect to IP" },
                { id = "P2P_Option_2", label = "Option 2: Disconnect" }
            }
        }
    })
end

return P2POptions
