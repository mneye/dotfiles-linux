import os
# import signal


alacritty = '/Users/martin/.config/alacritty/alacritty.yml'

alacritty1 = '/Users/martin/.config/alacritty/alacritty.yml1'

alacritty2 = '/Users/martin/.config/alacritty/alacritty.yml2'


os.rename(alacritty, alacritty2)

os.rename(alacritty1, alacritty)

os.rename(alacritty2, alacritty1)

# os.kill(os.getppid(), signal.SIGHUP)
