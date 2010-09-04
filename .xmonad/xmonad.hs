import XMonad

import qualified XMonad.StackSet as W
import XMonad.Hooks.ManageHelpers
import XMonad.Layout.NoBorders

main = xmonad $ defaultConfig {
    modMask            = mod4Mask,
    borderWidth        = 1,
    terminal           = "gnome-terminal",
    normalBorderColor  = "#000000",
    focusedBorderColor = "#0000bb",
    manageHook =  myManageHooks}
 
myManageHooks = composeAll
-- Allows focusing other monitors without killing the fullscreen
--  [ isFullscreen --> (doF W.focusDown <+> doFullFloat)
 
-- Single monitor setups, or if the previous hook doesn't work
    [ isFullscreen --> doFullFloat
--    className =? "Firefox-bin" --> doShift "1",
--    className =? "gnome-terminal" --> doShift "2",
--    className =? "thunar" --> doShift "3"

    -- skipped
    ]
