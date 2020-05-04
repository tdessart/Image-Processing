            bp = string(app.bloodpSwitch.Value)
            if bp == "On" 
             if app.FemaleButton.Value == true 
                 x = [0 1] 
                 y = [1 0] 
             elseif app.MaleButton.Value == true 
                 x = [0 2] 
                 y = [2 0] 
             end
            else 
                x = 0;  
                y = 0;  
            end 
            x
            y
            scatter(app.UIAxes,x,y)