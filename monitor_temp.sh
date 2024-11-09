temperaturefile="$HOME/logs/temperature.log"
temperaturefileold="$HOME/logs/temperature.bak"

while true; do
  sleep 60

  # Log temperature to log file
  temperature=$(vcgencmd measure_temp)
  echo "$(date +"%Y-%m-%d %H:%M")        $temperature" >> "$temperaturefile"

  # Warn user if temperature exceeds thresholds
  # TODO

  # Remove file if the file exceeds 1000 lines and create backup
  linecount=$(wc -l < $temperaturefile)
  if [ $linecount -ge 1000 ]; then
    cp $temperaturefile $temperaturefileold
    rm -f $temperaturefile
  fi
done
