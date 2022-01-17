amixer -c 1 controls | grep 'MIXER' | cut -d , -f 1 | cut -d = -f 2 | xargs -I{} amixer -c 1 cset numid={} 0% 1>/dev/null 2>/dev/null

