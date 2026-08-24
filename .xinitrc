#!/bin/sh

# 1. Definir tu directorio temporal en RAM para este usuario
export XDG_RUNTIME_DIR="/tmp/runtime-$USER"

if [ ! -d "$XDG_RUNTIME_DIR" ]; then
    mkdir -p "$XDG_RUNTIME_DIR"
    chmod 700 "$XDG_RUNTIME_DIR"
fi

# 2. Configurar y arrancar tu propio D-Bus de sesión
export DBUS_SESSION_BUS_ADDRESS="unix:path=$XDG_RUNTIME_DIR/bus"

if ! pgrep -u "$USER" -x dbus-daemon > /dev/null; then
    dbus-daemon --session --fork --address="$DBUS_SESSION_BUS_ADDRESS"
fi

# 3. Arrancar i3 (exec reemplaza al script, así que cuando i3 muera, sales de xinit)
exec i3
