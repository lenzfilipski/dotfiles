#!/bin/bash
# https://github.com/glindstedt/xwobf
xwobf -s 5 /tmp/.i3lock.png

B='#282a3622'
P='#bd93f9ff'
R='#ff5555ff'
O='#ffb86c44'
C='#8be9fdff'
T='#6272a4ff'

i3lock -i /tmp/.i3lock.png	\
	--pass-media-keys		\
	--pass-screen-keys		\
	--insidevercolor=$B		\
	--ringvercolor=$P		\
	--ringwrongcolor=$R		\
	--insidewrongcolor=$O	\
	--ringcolor=$P			\
	--linecolor=$C			\
	--keyhlcolor=$T			\
	--bshlcolor=$O


rm /tmp/.i3lock.png
#	-i /tmp/.i3lock.png   \


<<COMMENT
B='#00000000'  # blank
C='#a8998422'  # clear ish
D='#928374ff'  # default
T='#ebdbb2ff'  # text
W='#cc241dbb'  # wrong
V='#458588ff'  # verifying

i3lock \
	--insidevercolor=$C   \
	--ringvercolor=$V     \
	\
	--insidewrongcolor=$C \
	--ringwrongcolor=$W   \
	\
	--insidecolor=$B      \
	--ringcolor=$D        \
	--linecolor=$B        \
	--separatorcolor=$D   \
	\
	--verifcolor=$T       \
	--wrongcolor=$T       \
	--timecolor=$T        \
	--datecolor=$T        \
	--layoutcolor=$T      \
	--keyhlcolor=$W       \
	--bshlcolor=$W        \
	\
	--screen 1            \
	--blur 5              \
	--clock               \
	--indicator           \
	--timestr="%H:%M:%S"  \
	--datestr="%A, %m %Y" \
	--keylayout 2         \
COMMENT
	# --veriftext="Drinking verification can..."
# --wrongtext="Nope!"
# --textsize=20
# --modsize=10
# --timefont=comic-sans
# --datefont=monofur
# etc
