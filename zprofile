# This will be evaluated before sway starts
# so the sway process itself has this environment
if [ -n "$DESKTOP_SESSION" ]; then
  # Secrets management
  eval $(gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
  export SSH_AUTH_SOCK

  # in general, we light dark things
  export GTK_THEME="Adwaita-dark"

  # force Firefox to use Wayland
  export MOZ_ENABLE_WAYLAND=1

  # Rust
  export PATH=~/.local/bin:$PATH

  # Python & co
  export PATH=~/.cargo/bin:$PATH
fi

