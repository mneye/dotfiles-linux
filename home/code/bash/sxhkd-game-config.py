import os
# import signal


sx = '/home/s4s4/.config/sxhkd/sxhkdrc'
sx1 = '/home/s4s4/.config/sxhkd/sxhkdrc1'
sx2 = '/home/s4s4/.config/sxhkd/sxhkdrc2'


os.rename(sx, sx2)

os.rename(sx1, sx)

os.rename(sx2, sx1)

os.system('pkill -USR1 sxhkd')

# os.kill(os.getppid(), signal.SIGHUP)
