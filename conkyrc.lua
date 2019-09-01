conky.config = {
   -- common
   use_xft = true,
   xftalpha = 0.5,
   cpu_avg_samples = 1,
   net_avg_samples = 2,
   temperature_unit = "celsius",
   double_buffer = true,
   background = false,
   total_run_times = 0,
   update_interval = 1,
   alignment = 'top_right',
   gap_x = 50,
   maximum_width = 350,
   minimum_size = [[350, 700]],
   text_buffer_size = 1024,

   -- window
   own_window = true,
   own_window_title = 'conky',
   own_window_hints = 'undecorated,below,sticky,skip_taskbar,skip_pager',
   own_window_transparent = true,
   own_window_type = 'normal',
   own_window_argb_value = 0,
   own_window_argb_visual = true,
   own_window_colour = '#000000',

   -- fonts
   template0="${font Font Awesome}${font}",
   template1="${font Font Awesome}${font}"
}

conky.text = [[
${alignc}${font Ubuntu:pixelsize=40} ${time %H:%M}${font}

${alignc}${font Ubuntu:pixelsize=15} ${time %A %d %B %Y}${font}
${font Inconsolata:pixelsize=15}

${color yellow}${nodename} ${hr} ${color}

$alignc ${sysname} ${kernel}

${color yellow}system ${hr} ${color}

uptime: ${uptime}
processes: ${running_processes}/${processes}

CPU: $alignr ${cpu}% ${cpubar 10, 106}
${cpugraph 40,350 7fff00 ff0000 -t}
RAM: $alignr ${memperc}% ${membar 10, 106}
${memgraph 40,350 7fff00 ff0000 -t}
SWAP: $alignr ${swapperc}% ${swapbar 10, 106}
BATT: $alignr ${battery_percent} % ${battery_bar 10, 106}

FS:
/: ${alignr} ${fs_used /} / ${fs_size /}
/home: ${alignr} ${fs_used /home} / ${fs_size /home}

${color yellow}network ${addrs enp0s3} ${hr} ${color}

${font Font Awesome}${font} ${font Inconsolata:pixelsize=15}${downspeedf enp0s3} kB/s${font}                  ${font Font Awesome}${font} ${font Inconsolata:pixelsize=15}${upspeedf enp0s3} kB/s${font}
${downspeedgraph enp0s3 40,170 7fff00 ff0000 -t} ${upspeedgraph enp0s3    40,170 7fff00 ff0000 -t}
${font Inconsolata:pixelsize=15}
${color yellow}processes ${hr 1}${color}
Name $alignr PID   CPU%   MEM%${font sans-serif:normal:size=10}
${top name 1} $alignr ${top pid 1} ${top cpu 1}% ${top mem 1}%
${top name 2} $alignr ${top pid 2} ${top cpu 2}% ${top mem 2}%
${top name 3} $alignr ${top pid 3} ${top cpu 3}% ${top mem 3}%
${top name 4} $alignr ${top pid 4} ${top cpu 4}% ${top mem 4}%
${top name 5} $alignr ${top pid 5} ${top cpu 5}% ${top mem 5}%
${top name 6} $alignr ${top pid 6} ${top cpu 6}% ${top mem 6}%
${top name 7} $alignr ${top pid 7} ${top cpu 7}% ${top mem 7}%
${top name 8} $alignr ${top pid 8} ${top cpu 8}% ${top mem 8}%
${top name 9} $alignr ${top pid 9} ${top cpu 9}% ${top mem 9}%

${font}
]]
