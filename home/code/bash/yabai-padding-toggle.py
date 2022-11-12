import os
# import signal


yabai = '/Users/martin/.config/yabai/yabairc'

yabai1 = '/Users/martin/.config/yabai/yabairc1'

yabai2 = '/Users/martin/.config/yabai/yabairc2'


os.rename(yabai, yabai2)

os.rename(yabai1, yabai)

os.rename(yabai2, yabai1)

os.system('brew services restart yabai')

# os.kill(os.getppid(), signal.SIGHUP)
