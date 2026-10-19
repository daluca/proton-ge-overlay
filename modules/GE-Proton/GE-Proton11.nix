{
  flake.overlays.GE-Proton11 =
    final: prev:
    let
      inherit (prev.stdenv.hostPlatform.uname) processor;
      GE-Proton11 = {
        GE-Proton11-10 = {
          x86_64 = "sha256-pR0MFuBcjr1RZOCJ9aDyWvadGDcXfpZt7loFSNFjWuU=";
          aarch64 = "sha256-FxDbnLUTor8HkdLSObcazOXuOqmH3EqRuPrS8vPdNdk=";
        };
        GE-Proton11-9 = {
          x86_64 = "sha256-1o3sTPdQmIOKkm6qctt9lQfDEMCsysFyVfVK4sfRpw8=";
          aarch64 = "sha256-JtOnOLh127C4cU9s2EI3A2kzL2wvjF3t+XzQAJ90zow=";
        };
        GE-Proton11-8 = {
          x86_64 = "sha256-5GBjBo+HD1R/Y8CSeebhvzdGRNTD5WUyXEbpPurAXr8=";
          aarch64 = "sha256-eBxhL0R40aBaKNACwVGNigQs0zkhQVFwQSJcOQBmWB4=";
        };
        GE-Proton11-7 = {
          x86_64 = "sha256-ftW0vE45v2JsbaYqo/So0ZFfvdtakHX0XEXEE4TdxLk=";
          aarch64 = "sha256-tyI95zCUQklRVA9YtarD+gBQouMVcJmv7BafNx5CQu8=";
        };
        GE-Proton11-6 = {
          x86_64 = "sha256-rX27DUrrrHtR1cgyr/424m9JPjrdASIisVGv2vWzMAs=";
          aarch64 = "sha256-sIwM++9FJzpIq4LkYQDL1TIfPFEnaVowrGT/3JPfPZk=";
        };
        GE-Proton11-5 = {
          x86_64 = "sha256-Sbyi5zXMhPIKSotvL5LEZ2dbDoLpXRcCyuY9TsnBnus=";
          aarch64 = "sha256-fS4N2ip8IvhMfrJsfHnrq+zA/41qJd6kbLQ0+5lZ5uE=";
        };
        GE-Proton11-4 = {
          x86_64 = "sha256-4Ci/onAfV4ENgR53eFrg/8w4+vAf5lVyQFBQaXW0lnI=";
          aarch64 = "sha256-og+/lpcsZSK72dPdvoq8W3h7hR4uhR/5hkJBWYjw9uw=";
        };
        GE-Proton11-3 = {
          x86_64 = "sha256-RiCmnUKeZRhPUCgm7fsROKFkAl37+/tYkA47tQtkIF4=";
          aarch64 = "sha256-FIzjFRxy4mkHztTTDA/PvcOFSqwPOAKbJbCYcl3xVAY=";
        };
        GE-Proton11-2 = "sha256-gpCZhsMqQ0VthslX9P5jiVmV1HF7659bE81a+7qYx24=";
        GE-Proton11-1 = "sha256-I7SSvzQQ/NqdvwjpJ9IFFtAaTS+rgHUyXx0us1vIOnw=";
      };
    in
    {
      GE-Proton11 = final.GE-Proton11-10.overrideAttrs (oldAttrs: rec {
        __intentionallyOverridingVersion = true;

        version = "GE-Proton11";

        preFixup = /* bash */ ''
          substituteInPlace "$steamcompattool/compatibilitytool.vdf" \
            --replace-fail "${oldAttrs.version}-${processor}" "${version}"
        '';
      });
    }
    // prev.lib.mapAttrs (
      version: hash:
      prev.proton-ge-bin.overrideAttrs {
        inherit version;

        src = prev.fetchzip {
          url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${version}/${version}-${processor}.tar.gz";
          hash = hash.${processor};
        };

        preFixup = /* bash */ ''
          substituteInPlace "$steamcompattool/compatibilitytool.vdf" \
            --replace-fail "${version}-${processor}" "${version}"
        '';

        meta.platforms = [
          "x86_64-linux"
          "aarch64-linux"
        ];
      }
    ) GE-Proton11
    // prev.lib.mapAttrs (
      version: hash:
      let
        url =
          if processor == "x86_64" then
            "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${version}/${version}.tar.gz"
          else
            "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${version}/${version}-${processor}.tar.gz";
      in
      prev.proton-ge-bin.overrideAttrs {
        inherit version;

        src = prev.fetchzip {
          inherit url;
          hash = hash.${processor};
        };

        preFixup =
          if processor == "x86_64" then
            /* bash */ ''
              substituteInPlace "$steamcompattool/compatibilitytool.vdf" \
                --replace-fail "${version}" "${version}"
            ''
          else
            /* bash */ ''
              substituteInPlace "$steamcompattool/compatibilitytool.vdf" \
                --replace-fail "${version}-${processor}" "${version}"
            '';

        meta.platforms = [
          "x86_64-linux"
          "aarch64-linux"
        ];
      }
    ) (prev.lib.filterAttrs (version: _hash: version == "GE-Proton11-3") GE-Proton11)
    //
      prev.lib.mapAttrs
        (
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
        )
        (
          prev.lib.filterAttrs (
            version: _hash: version == "GE-Proton11-1" || version == "GE-Proton11-2"
          ) GE-Proton11
        );
}
