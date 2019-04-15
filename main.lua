-- simple touch code

local theNinja = display.newImage( "Glide_001.png" )
theNinja.x = display.contentCenterX
theNinja.y = display.contentCenterY
theNinja.id = "Glider Ninja"
 
local function onNinjaTouched( event )
    if ( event.phase == "began" ) then
        print( "Touch event began on: " .. event.target.id )
    elseif ( event.phase == "ended" ) then
        print( "Touch event ended on: " .. event.target.id )
    end
  
    return true
end

theNinja:addEventListener( "touch", onNinjaTouched )

-- Comprehensive touch code

local theNinja = display.newImage( "580b585b2edbce24c47b2a2c.png" )
theNinja.x = display.contentCenterX
theNinja.y = 400
theNinja.id = "Stop Onee Chan 69"
display.setDefault( "background", 255, 0, 255 )
 
function theNinja:touch( event )
    if ( event.phase == "began" ) then
        print( "Touch event began on: " .. self.id )
 
        -- Set touch focus
        display.getCurrentStage():setFocus( self )
        self.isFocus = true
     
    elseif ( self.isFocus ) then
        if ( event.phase == "moved" ) then
            print( "Moved phase of touch event detected." )
 
        elseif ( event.phase == "ended" or event.phase == "cancelled" ) then
 
            -- Reset touch focus
            display.getCurrentStage():setFocus( nil )
            self.isFocus = nil
            print( "Touch event ended on: " .. self.id )
        end
    end

    return true
end

theNinja:addEventListener( "touch", theNinja )

