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
   --gap_y = 50,
   maximum_width = 350,
   minimum_size = [[350, 700]],
   text_buffer_size = 1024,
   uppercase = true,

   -- window
   own_window = true,
   own_window_title = 'conky',
   own_window_hints = 'undecorated,below,sticky,skip_taskbar,skip_pager',
   own_window_transparent = true,
   own_window_type = 'normal',
   own_window_argb_value = 0,
   own_window_argb_visual = true,
   own_window_colour = '#000000',

   -- colors
   color0 = 'gray',
   color1 = 'FCD862',
   color2 = 'lightblue',

   -- fonts
   font0 = 'font Inconsolata:pixelsize=12',
}

conky.text = [[
${color0}
${alignc}${font Ubuntu:pixelsize=40} ${time %H:%M}${font}
${alignc}${font Ubuntu:pixelsize=15} ${time %A %d %B %Y}${font}${color}
${font0}
${color2}${nodename}:${color} ${sysname} ${kernel}

${color1}system ${hr 2} ${color}

${color2}uptime:${color} ${uptime} ${alignr}${color2}processes:${color} ${running_processes}/${processes}

${color2}CPU:${color} $alignr ${cpu}% ${color0}${cpubar 10, 140}${color}
${cpugraph 40,350 7fff00 ff0000 -t}$
${color2}RAM:${color} $alignr ${memperc}% ${color0}${membar 10, 140}${color}
${memgraph 40,350 7fff00 ff0000 -t}
${color2}SWAP:${color} $alignr ${swapperc}% ${color0}${swapbar 10, 140}${color}
${color2}BATT:${color} $alignr ${battery_percent}% ${color0}${battery_bar 10, 140}${color}

${color2}/:${color} ${alignr}${fs_used_perc /}% ${alignr}${color0}${fs_bar 10,140 /}${color}
${color2}/home:${color} ${alignr}${fs_used_perc /home}% ${alignr}${color0}${fs_bar 10,140 /home}${color}

${color1}network ${color2}${addrs enp0s3}${color} ${color1}${hr 2} ${color}

${font Font Awesome:pixelsize=16}${font} ${font0}${downspeedf enp0s3} kB/s${font}                    ${font Font Awesome:pixelsize=16}${font} ${font0}${upspeedf enp0s3} kB/s${font}
${downspeedgraph enp0s3 40,170 7fff00 ff0000 -t} ${upspeedgraph enp0s3    40,170 7fff00 ff0000 -t}
${font0}
${color1}processes ${hr 2}${color}

${color2}NAME $alignr PID    CPU%    MEM%${color}
${top name 1} $alignr ${top pid 1} ${top cpu 1}% ${top mem 1}%
${top name 2} $alignr ${top pid 2} ${top cpu 2}% ${top mem 2}%
${top name 3} $alignr ${top pid 3} ${top cpu 3}% ${top mem 3}%
${top name 4} $alignr ${top pid 4} ${top cpu 4}% ${top mem 4}%
${top name 5} $alignr ${top pid 5} ${top cpu 5}% ${top mem 5}%
${top name 6} $alignr ${top pid 6} ${top cpu 6}% ${top mem 6}%
${top name 7} $alignr ${top pid 7} ${top cpu 7}% ${top mem 7}%
${top name 8} $alignr ${top pid 8} ${top cpu 8}% ${top mem 8}%
${top name 9} $alignr ${top pid 9} ${top cpu 9}% ${top mem 9}%

${color1}fortune ${hr 2}${color}

${color0}${execi 300 fortune | fold -w50}${color}
${font}
]]
