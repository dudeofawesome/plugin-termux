function pbcopy -d 'Copy to clipboard'
  read $copy_text | termux-clipboard-set "$copy_text"
end

