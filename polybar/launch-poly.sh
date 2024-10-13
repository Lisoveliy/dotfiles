#!/bin/sh


killall -q polybar
echo "---" | tee -a /tmp/example_bar.log # Просмотр логов
polybar standard >> /tmp/standard_polybar.log # Запуск бара examstandardple и запись его лога
if (xrandr -q | grep -E '\bDP-1 connected') then
    polybar external >> /tmp/external_polybar.log # Запуск бара example и запись его лога
fi
