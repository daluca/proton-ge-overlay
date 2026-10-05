{
  flake.overlays.GE-Proton10 =
    final: prev:
    let
      GE-Proton10 = {
        GE-Proton10-34 = "sha256-lzPsYYcrp5NoT3B0WFj3o10Z7tXx7xva1wEP3edeuqM=";
        GE-Proton10-33 = "sha256-vuPqz9vD/B1H6IFA7Wi/YEPbklNTbVbEZ2Erm62kBnk=";
        GE-Proton10-32 = "sha256-NxZ4OJUYQdRNQTb62jRET6Ef14LEhynOASIMPvwWeNA=";
        GE-Proton10-31 = "sha256-mfbbTm5gXWvdJ4fb/pfJ4E+FHpqeqmuVi40KfubagBs=";
        GE-Proton10-30 = "sha256-YZ+v+dzO70qTs3JxOAk9n7ByIYb3r8SeJBWnzjKQwuQ=";
        GE-Proton10-29 = "sha256-ATtKLEKA+r557FVnBoW/iYrRR4Ki9G8rjlV4+2rki0I=";
        GE-Proton10-28 = "sha256-6NvSGX8445la6WU6z9UaaKJm30eg094cuTyhHVDjbOo=";
        GE-Proton10-27 = "sha256-yBPjPb2LzxdgEobuoeSfs3UZ1XUxZF6vIMYF+fAnLA0=";
        GE-Proton10-26 = "sha256-Q5bKTDn3sTgp4mbsevOdN3kcdRsyKylghXqM2I2cYq8=";
        GE-Proton10-25 = "sha256-RKko4QMxtnuC1SAHTSEQGBzVyl3ywnirFSYJ1WKSY0k=";
        GE-Proton10-24 = "sha256-QZBu2C4JrsETY+EV0zs4e921qOxYT9lk0EYXXpOCKLs=";
        GE-Proton10-23 = "sha256-cOjrP9Nh4cPcX3uwYF25z2QHnNDNb83FPa4O0zdENeg=";
        GE-Proton10-22 = "sha256-PSfwuF3jLs4uZtne/z0TK/WM4ur8rtcxyiLeVNZhDaA=";
        GE-Proton10-21 = "sha256-Oa9+DjEeZZiJEr9H7wnUtGb6v/JXHk0qt0GAGcp3JFQ=";
        GE-Proton10-20 = "sha256-sJkaDEnfAuEqcLDBtAfU6Rny3P3lOCnG1DusWfvv2Fg=";
        GE-Proton10-19 = "sha256-vV009ZlYFEAI1jkfMql46QnJXekRup5TqajVSc57f3U=";
        GE-Proton10-18 = "sha256-s2xnoyRy4JI1weRJ+9wjZzBRpsH7HMbK9DbhdVDJKww=";
        GE-Proton10-17 = "sha256-GMwAAKuaBhDv1TvAuW9DVcXSYPRM87NP6NnJfk8O8ZU=";
        GE-Proton10-16 = "sha256-pwnYnO6JPoZS8w2kge98WQcTfclrx7U2vwxGc6uj9k4=";
        GE-Proton10-15 = "sha256-VS9oFut8Wz2sbMwtX5tZkeusLDcZP3FOLUsQRabaZ0c=";
        GE-Proton10-14 = "sha256-AuH10tZNMGybT7Nr7klLLAMlO4eN2KeU8l6Wps/vg2w=";
        GE-Proton10-13 = "sha256-gFNi5yB0Bf/nSRezI7z0ltT4qIALjzLTJfNHosk6D4A=";
        GE-Proton10-12 = "sha256-mjqcN/gTfAlPDXgJUm8qxH+jvNN8iiIuF33hSQ5Y/Vo=";
        GE-Proton10-11 = "sha256-gTf8k0fx0KGCHVTQLkZli/CvZMkVVNpgBDpI/eiuynE=";
        GE-Proton10-10 = "sha256-TJbeyJA9feyaBIYt5hwVUAAdev0SnoIqvhV7groxcu4=";
        GE-Proton10-9 = "sha256-DJ7bRjzJehSFIyBo+oJyyWui+a3udGxc38P9Hw+xU9U=";
        GE-Proton10-8 = "sha256-cbmOQYWEP/uB2ZoMAbtbeXbOJjxZui0n2U+Tr/OLKjA=";
        GE-Proton10-7 = "sha256-XlZVQ+xYgg1H1xAHBcXZmF5//7k6w9NNspXJ/1KhzX8=";
        GE-Proton10-6 = "sha256-2kEf7nLJx8WDGyDynBvmk1zzIPdWkjDNiTm6tlMZ38g=";
        GE-Proton10-4 = "sha256-Si/CQ2PINfhmsC+uW3iFBUoSczZdkqwCZ8FAFuipu68=";
        GE-Proton10-3 = "sha256-V4znOni53KMZ0rs7O7TuBst5kDSaEOyWUGgL7EESVAU=";
        GE-Proton10-2 = "sha256-fCxiwATohvdpfxXkHY1ty5WHS0phARrDszGmwNRmVQE=";
        GE-Proton10-1 = "sha256-sGKmfdxZK2quI7QamIGRaW1/ElwS/gJPeE4Tvh6icUo=";
      };
    in
    {
      GE-Proton10 = final.GE-Proton10-34.overrideAttrs (oldAttrs: rec {
        __intentionallyOverridingVersion = true;

        version = "GE-Proton10";

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
    ) GE-Proton10;
}
