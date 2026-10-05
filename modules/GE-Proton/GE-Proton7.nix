{
  flake.overlays.GE-Proton7 =
    final: prev:
    let
      GE-Proton7 = {
        GE-Proton7-55 = "sha256-6CL+9X4HBNoB/yUMIjA933XlSjE6eJC86RmwiJD6+Ws=";
        GE-Proton7-54 = "sha256-cQOw8lXGgMcl7SFNdCPfeTblBS9QFsKrtZ0j0oImwcc=";
        GE-Proton7-53 = "sha256-oEKwDd0/F1YItwVKGlGgt/YS2susMgfOY3c5TPxxYLE=";
        GE-Proton7-52 = "sha256-+L05y/RgRbXvioF4DnsrDintZD0MvA2xzpuRhJIVN10=";
        GE-Proton7-51-diablo_4_beta = "sha256-iRMITFHe1BppOe2I35Sg8OscKagqfzPbGLumaLFXKLw=";
        GE-Proton7-51 = "sha256-iRMITFHe1BppOe2I35Sg8OscKagqfzPbGLumaLFXKLw=";
        GE-Proton7-50 = "sha256-QNp42EEDM74tbggiMjuWlN220T6BCyxSQVUIo53P9ss=";
        GE-Proton7-49 = "sha256-AnWQ8rjBNBAsEom2MIzcKRlxgJPHJhiiy5ejMz2AnfM=";
        GE-Proton7-48 = "sha256-53JJ1aBFS5Shwy12nE5VEHYqGMuL+kar+QrXVvRco1k=";
        GE-Proton7-47 = "sha256-FFQa9EYT17n8fmQIrxsXeQLnHDNhH3qB6Hjzc6Xj7FY=";
        GE-Proton7-46 = "sha256-/x3/iuqtG+PU4XTQo9XjIbC3VZ/hb/5Sz/grER1ThX0=";
        GE-Proton7-45 = "sha256-tuzSt9WBkp8tiXTTJo4TNBfTxwIh6RRopAyx18z4+Ps=";
        GE-Proton7-44 = "sha256-GYCh43y96qx52bQwlngRClJ6MUurW9dx5x9alt70y18=";
        GE-Proton7-43 = "sha256-Cwo4iLnQc+6FXYs+EnjSvZJSIJCBI/43Lx91CJk/iOM=";
        GE-Proton7-42 = "sha256-lTd/NX/VtBQCO/feunBYNp+HqbQVB+8gRAszTb+Pktk=";
        GE-Proton7-41 = "sha256-fqhZ/ZNBiwPnti9ByQMRVCkbUKndDZxgKH6OdsUA5Fc=";
        GE-Proton7-40 = "sha256-phK+tvEGPwannXyNeFTnVVyVVW47a+PZbZfY6+2weyw=";
        GE-Proton7-39 = "sha256-RWVIdAk4/9U/Zn/nQbw3y7xJv9rq12R8YZYE0rcROds=";
        GE-Proton7-38 = "sha256-u3r+f2OtgYA4LDyy1sBczXErVGvG7Ck2s+wJSrQ2KOM=";
        GE-Proton7-37 = "sha256-P8XIZ0TaOk7qQvC5Kj992Du/+p7knUygMyau2ze67XE=";
        GE-Proton7-36 = "sha256-tGby+1yi4wYxHb84fMPzGKMAbbrDo/dY6ZzRuSsxMxk=";
        GE-Proton7-35 = "sha256-W+uG7gsW+d7nxqrgqxUfNwiwEYFrZfJ8aDEdWhPhx4o=";
        GE-Proton7-34 = "sha256-74zW6+El0RNz0wQhPywfhexwj3A0igy12iSRyZoaQR8=";
        GE-Proton7-33 = "sha256-0MOIZs/8g/0ekmpw7WwTf7goY+iynmHZXYhzSQtwBaU=";
        GE-Proton7-31 = "sha256-JPUxuNUP7UrEgroJrQRZYEs/m4mdF36vqbP1XSXxx+k=";
        GE-Proton7-30 = "sha256-lQR19PDTyz+W7d9IgnXj3yIJqrs6F4u4EM0yblgnZsk=";
        GE-Proton7-29 = "sha256-sREHuaWd4PtfmkkiGB5EpU1YvnZ1a9bllB2q7bI7kcg=";
        GE-Proton7-28 = "sha256-rXBIA238lgrMbhfL91mNFNUP9GP4DJ2gWNTtzkqqfg4=";
        GE-Proton7-27 = "sha256-RM1OjfIN0jle5V5zcMCR8voC9zhGZl2WP6urn36nl2w=";
        GE-Proton7-26 = "sha256-AgNz1Ci/ZBcIeVKju+nqfRkctzGIQPm8NKBjdJPRu+c=";
        GE-Proton7-25 = "sha256-7Bsky6AG4PDHKS5iIneamJErnJ9CxEq9BGOoHJg5OnM=";
        GE-Proton7-24 = "sha256-SrwKW39pQt+ZOj4Pn3ZfMZxK+M3AxTv2mSeg2h2z+t8=";
        GE-Proton7-23 = "sha256-MDOEg3Vnqw5BeLVBUPeDtRLsfaTeWnvkZtFUCnZ7I6k=";
        GE-Proton7-22 = "sha256-CCJ+RDD4c1G/Gfrz7oOiCo+uiV9UlRMvAdrZzKd4B4k=";
        GE-Proton7-21 = "sha256-V5+QpQSz36WHUTKz8tsNq8ozq9nTl9cOGghvUm/tfpU=";
        GE-Proton7-20 = "sha256-80rak9Z/HCdR+axUQnB12tD4rlVjB5GAjRfkLQkAKWQ=";
        GE-Proton7-19 = "sha256-zb2QhJnGBsVMvbvz7Mfiw32rRnGTotPxfnrJ76xBOHo=";
        GE-Proton7-18 = "sha256-namKiUgyZ4IImmmeygHMI31yCI2kipbFLRMk2rtZqiE=";
        GE-Proton7-17 = "sha256-jK3Pkt6u+WRvSu7UWs16RGm++zWFSsgBnKtS5GkMGWs=";
        GE-Proton7-16 = "sha256-VmbzXsTqZ4c4bShOyx+faI6w19aw3thYOxPezuuXYJo=";
        GE-Proton7-15 = "sha256-IacCNkR1RRqSrX5UYYIbkZoV8z6rSarKisBjS5z50CM=";
        GE-Proton7-14 = "sha256-JEY3ezoUVYPKGH0Mo3llWDD+tZXvm7idSi+uzD/u11M=";
        GE-Proton7-13 = "sha256-0lWNyC+07vuuB96LloT7AfC3LO9U5hWXzoJv5+ADKhw=";
        GE-Proton7-12 = "sha256-gBAWzdqIZHaH7Anh2DtFWeCDED2USK4aoQfI/OZbnjY=";
        GE-Proton7-11 = "sha256-yxrLVhEXDCLSjLxu5qSoYQp5rsKu4wkwNNWr+UlqbkM=";
        GE-Proton7-10 = "sha256-9u0V3+d1WCTw37wEuhO/vOen/drQo3pN4ppqMk57I1M=";
        GE-Proton7-9 = "sha256-UdaijAWQbj2/lmltcMGeuEV8ZLqK/dpU04jUvpcQs0E=";
        GE-Proton7-8 = "sha256-2cPRPC5oIekr1nSm+9iCNxUuWzXjx242snSKZ2TEg68=";
        GE-Proton7-7 = "sha256-/XNpNrKoHJeGyp0GP66U+UtXVUjsBh4FSdCtlN/jcxY=";
        GE-Proton7-6 = "sha256-Qjnxz14ZYYj9yeCkDNNerUUplShGrBjG/6B28RuNJas=";
        GE-Proton7-5 = "sha256-x9tWcACU5p5/A/jlp4cXb/W7dIaYvwr9RPUzuJP+k1E=";
        GE-Proton7-4 = "sha256-JD4Q+7eXWodqv0IU3jEnELYX++XX1NJCZXtpRjqpTrM=";
        GE-Proton7-3 = "sha256-vPL3AfZZcQQQKgfGb2dvGuArYTC0xTNmbSXFEU9O72k=";
        GE-Proton7-2 = "sha256-5SYWiyWn23TeYUi7Q/bhai5zZF4ezGFIzk9LaS5TJxg=";
        GE-Proton7-1 = "sha256-a7L+tLf99NKn0+PL353xzPsA/ijOXo8kSUCAP9EolJU=";
      };
    in
    {
      GE-Proton7 = final.GE-Proton7-55.overrideAttrs (oldAttrs: rec {
        __intentionallyOverridingVersion = true;

        version = "GE-Proton7";

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
            --replace-warn "${version}" "${version}"
        '';
      }
    ) GE-Proton7
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
            --replace-warn "GE-Proton7-51" "${version}"
        '';
      }
    ) (prev.lib.filterAttrs (version: _hash: version == "GE-Proton7-51-diablo_4_beta") GE-Proton7);
}
