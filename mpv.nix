self: super: {
  mpv = super.mpv-unwrapped.override {sixelSupport = true;};
  }
