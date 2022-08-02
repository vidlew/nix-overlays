self: super: {
  netsurf-sixel = (super.netsurf.overrideScope' (self: super: {ui = "sixel";})).browser;
  netsurf-framebuffer = (super.netsurf.overrideScope' (self: super: {ui = "framebuffer";})).browser;
  }
