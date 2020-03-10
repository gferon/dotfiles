if [ -n "$DESKTOP_SESSION" ]; then
  eval $(gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
  export SSH_AUTH_SOCK
  export MOZ_ENABLE_WAYLAND=1
fi

