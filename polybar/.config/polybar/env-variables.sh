# Source colors
source ~/.config/polybar/colors.sh

# Environmental variables
# ----------------------------

# -- backlight --
BACKLIGHT_LABEL="%{F$PEACH}󰃠%{F-} %{T2}%percentage%%%{T-}"

# -- volume --
VOLUME_LABEL="%{F$BLUE}%{F-} %{T2}%percentage%%%{T-}"
VOLUME_LABEL_MUTED="%{F$BLUE}%{F-} %{T2}Muted%{T-}"

# -- battery --
BAT_LABEL_FULL="%{T2}%percentage%%%{T-}"
BAT_LABEL_CHARGING="%{F$YELLOW}󰂄%{F-} %{T2}%percentage%%%{T-}"
BAT_LABEL_DISCHARGING="%{T2}%percentage%%%{T-}"

BAT_RAMP_CAP_0="%{F$RED}󰂎%{F-}"
BAT_RAMP_CAP_1="%{F$GREEN}󰁼%{F-}"
BAT_RAMP_CAP_2="%{F$GREEN}󰁾%{F-}"
BAT_RAMP_CAP_3="%{F$GREEN}󰂁%{F-}"
BAT_RAMP_CAP_4="%{F$GREEN}󰁹%{F-}"

# -- network --
NETWORK_LABEL_CONNECTED="%{T2}%essid%%{T-}"
NETWORK_LABEL_DISCONNECTED="%{F$RED}󰤮%{F-} %{T2}Disconnected%{T-}"

NETWORK_RAMP_SIG_0="%{F$TEAL}󰤯%{F-}"
NETWORK_RAMP_SIG_1="%{F$TEAL}󰤟%{F-}"
NETWORK_RAMP_SIG_2="%{F$TEAL}󰤢%{F-}"
NETWORK_RAMP_SIG_3="%{F$TEAL}󰤥%{F-}"
NETWORK_RAMP_SIG_4="%{F$TEAL}󰤨%{F-}"

#-----------------------------
