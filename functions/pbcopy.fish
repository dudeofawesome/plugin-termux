function pbcopy -d 'Copy to clipboard'
  read -l copy_text; termux-clipboard-set "$copy_text"
end

