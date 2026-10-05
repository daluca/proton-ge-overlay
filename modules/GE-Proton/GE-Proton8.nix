{
  flake.overlays.GE-Proton8 =
    final: prev:
    let
      GE-Proton8 = {
        GE-Proton8-32 = "sha256-ZBOF1N434pBQ+dJmzfJO9RdxRndxorxbJBZEIifp0w4=";
        GE-Proton8-31 = "sha256-O6EQTfAw7E96sTGwiCGZpwCC9aAXBo0Jn7EPR0v8ZD8=";
        GE-Proton8-30 = "sha256-ACgvZgMtFkth8s07u0vwC/khnA7D6hGiS+Zd3tbv0os=";
        GE-Proton8-29 = "sha256-lnkf3Mb0gKfP/c077OnP9+z2jscm5swUZHVOCqSuzt4=";
        GE-Proton8-28 = "sha256-oTSLJ6Q4iQwZ8KWhgPMJ5Sla84Etg3+H+7Ka0NoN1Kg=";
        GE-Proton8-27 = "sha256-YeibTA2z69bNE3V/sgFHOHaxl0Uf77unQQc7x2w/1AI=";
        GE-Proton8-26 = "sha256-3pw+RvC87SZmATSzfura+x5gKG9V7vSK/Y3vCddAJK8=";
        GE-Proton8-25 = "sha256-IoClZ6hl2lsz9OGfFgnz7vEAGlSY2+1K2lDEEsJQOfU=";
        GE-Proton8-24 = "sha256-S8qh46TAgS393CjOBljCvOtXUHhCximFMcB70YaP9Pk=";
        GE-Proton8-23 = "sha256-3XniKYf/KDRDYhTwffkktbmoISwOtGIABF28bsp8QHA=";
        GE-Proton8-22 = "sha256-NwFnyfi9ATHUVq55xqTmxK7DptNYBKD+ElFSK5IqMcQ=";
        GE-Proton8-21 = "sha256-52Qt78G8/92wYTDzpU+oGIdqXt/6AkC2KiI/qZW/EjQ=";
        GE-Proton8-20 = "sha256-eM8jiTFgSEmleawsBjOaDNFVtR61k+ekxlqFAj+E7lk=";
        GE-Proton8-19 = "sha256-LIpusmSrkuj7mNRGQVxbaSb0TU2xF4YKrUrMBg3Ht+k=";
        GE-Proton8-18 = "sha256-fQB5YLUM5JRtTGM2n8CMewkuoexBORIYOKKOIn6cDpM=";
        GE-Proton8-17 = "sha256-w804j8CoTvhGh9srVmzDO7640jFTvyzvaLa4Z7DvPaM=";
        GE-Proton8-16 = "sha256-75A0VCVdYkiMQ1duE9r2+DLBJzV02vUozoVLeo/TIWQ=";
        GE-Proton8-15 = "sha256-SzD8gYRl87XedAcN6g8X1wqYmV5QGNZZGWi4q5EF3go=";
        GE-Proton8-14 = "sha256-/68J3aVmHqrrcNk4DkYSBzfNyIQmbcUGg3yOlDq1ts8=";
        GE-Proton8-13 = "sha256-xfj5HGw1hyoceq0Xfe3MFL8jzJDaUUC03Aw8BUupR1o=";
        GE-Proton8-12 = "sha256-FAgdQKxEzl/Z9KqNrDmAf03Zzm+g3lobqC/xZCCxYYA=";
        GE-Proton8-11 = "sha256-ucQK5k7/ptgRy/B0nvT6aZdz3nl0YNiKH+uaJJux03g=";
        GE-Proton8-10 = "sha256-jBjPoZ2IvFTTATYwZk2oZ66QgjBzPq68CreOoUtIz5Q=";
        GE-Proton8-9 = "sha256-XBSkEGiLpza5nGgc33V0rHvpUZHLj3l6pCQ5Bo/7+tI=";
        GE-Proton8-8 = "sha256-Vd8ThP7TvPkGOIcaBtCe80O2drykcUduOPJmlVIWPFg=";
        GE-Proton8-7 = "sha256-QjBZ/68/98MnP2aVjSkbRriT2Ofo6C0IHIF4CqYIP/U=";
        GE-Proton8-6 = "sha256-1P7qk2Lk5PvpH11LW4/GNK3WdldbBQhJtJVJyBJT4bY=";
        GE-Proton8-5 = "sha256-DGT829ZIO5YVD/nQbvMeBeR086wQwbSvXqptEL+ghrw=";
        GE-Proton8-4 = "sha256-UdX2qnC3s7e560b4Mw5BTWA9e0ehMo/+iGuVDO7nBhc=";
        GE-Proton8-3 = "sha256-XTYaDE8JJAM8nD7+DPUnU5J+MtNGrE43qyj48p8o/WM=";
        GE-Proton8-2 = "sha256-DJpdmzjaZXCg9+ragjqyDs0X8s41t2DOlSs/6wDQ39g=";
        GE-Proton8-1 = "sha256-CICI0M5zp52FPBxKh9ecWhtsrQJrUlZKRKcFCtwxP+A=";
      };
    in
    {
      GE-Proton8 = final.GE-Proton8-32.overrideAttrs (oldAttrs: rec {
        __intentionallyOverridingVersion = true;

        version = "GE-Proton8";

        preFixup = /* bash */ ''
          substituteInPlace "$steamcompattool/compatibilitytool.vdf" \
            --replace-fail "${oldAttrs.version}" "${version}"
        '';
      });
    }
    // prev.lib.mapAttrs (
      version: hash:
      prev.proton-ge-bin.overrideAttrs {
        inherit version;

        src = prev.fetchzip {
          inherit hash;
          url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${version}/${version}.tar.gz";
        };

        preFixup = /* bash */ ''
          substituteInPlace "$steamcompattool/compatibilitytool.vdf" \
            --replace-fail "${version}" "${version}"
        '';
      }
    ) GE-Proton8;
}
