self: super: {
  go = super.go.overrideDerivation (attrs:
    {
      version = "1.19";
      src = super.fetchurl {
        url = https://go.dev/dl/go1.19.src.tar.gz;
        sha256 = "sha256-lBnMcNxaJSPymncFPK//ZY7SHvNWHZtrAgKA686rKLk=";
      };
      name = "go-1.19";
    });
  }
