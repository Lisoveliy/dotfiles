#!/bin/sh


killall -q polybar
echo "---" | tee -a /tmp/example_bar.log # Просмотр логов
polybar standard >> /tmp/standard_polybar.log # Запуск бара standard и запись его лога
polybar external >> /tmp/external_polybar.log # Запуск бара example и запись его лога
