set -q PREFIX
  and echo "$PREFIX" | grep -q 'com\.termux/files/usr'
  and set -g __is_termux

if set -q __is_termux
  set -gx BROWSER termux-open-url

  function open -d 'open file in its default application'
    for arg in $argv
      termux-open-url "$arg"
    end
  end

  function help -d 'display fish documentation'
    set -q argv[1]
      and open "http://fishshell.com/docs/current/commands.html#$argv[1]"
      or open 'http://fishshell.com/docs/current/index.html'
  end
end
