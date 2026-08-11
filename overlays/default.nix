final: prev: rec {
  proton-ge-versioned = prev.proton-ge-bin.overrideAttrs (oldAttrs: {
    buildCommand = /* bash */ ''
      runHook preBuild

      # Make it impossible to add to an environment. You should use the appropriate NixOS option.
      # Also leave some breadcrumbs in the file.
      echo "${oldAttrs.pname} should not be installed into environments. Please use programs.steam.extraCompatPackages instead." > $out

      ln -s $src $steamcompattool

      runHook postBuild
    '';
  });

  GE-Proton11 = GE-Proton11-5;
  GE-Proton10 = GE-Proton10-34;
  GE-Proton9 = GE-Proton9-27;
  GE-Proton8 = GE-Proton8-32;
  GE-Proton7 = GE-Proton7-55;

  GE-Proton11-5 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton11";
    version = "5";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-Sbyi5zXMhPIKSotvL5LEZ2dbDoLpXRcCyuY9TsnBnus=";
    };
  };

  GE-Proton11-4 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton11";
    version = "4";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-4Ci/onAfV4ENgR53eFrg/8w4+vAf5lVyQFBQaXW0lnI=";
    };
  };


  GE-Proton11-3 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton11";
    version = "3";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-RiCmnUKeZRhPUCgm7fsROKFkAl37+/tYkA47tQtkIF4=";
    };
  };

  GE-Proton11-2 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton11";
    version = "2";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-gpCZhsMqQ0VthslX9P5jiVmV1HF7659bE81a+7qYx24=";
    };
  };

  GE-Proton11-1 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton11";
    version = "1";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-I7SSvzQQ/NqdvwjpJ9IFFtAaTS+rgHUyXx0us1vIOnw=";
    };
  };

  GE-Proton10-34 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton10";
    version = "34";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-lzPsYYcrp5NoT3B0WFj3o10Z7tXx7xva1wEP3edeuqM=";
    };
  };

  GE-Proton10-33 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton10";
    version = "33";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-vuPqz9vD/B1H6IFA7Wi/YEPbklNTbVbEZ2Erm62kBnk=";
    };
  };

  GE-Proton10-32 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton10";
    version = "32";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-NxZ4OJUYQdRNQTb62jRET6Ef14LEhynOASIMPvwWeNA=";
    };
  };

  GE-Proton10-31 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton10";
    version = "31";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-mfbbTm5gXWvdJ4fb/pfJ4E+FHpqeqmuVi40KfubagBs=";
    };
  };

  GE-Proton10-30 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton10";
    version = "30";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-YZ+v+dzO70qTs3JxOAk9n7ByIYb3r8SeJBWnzjKQwuQ=";
    };
  };

  GE-Proton10-29 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton10";
    version = "29";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-ATtKLEKA+r557FVnBoW/iYrRR4Ki9G8rjlV4+2rki0I=";
    };
  };

  GE-Proton10-28 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton10";
    version = "28";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-6NvSGX8445la6WU6z9UaaKJm30eg094cuTyhHVDjbOo=";
    };
  };

  GE-Proton10-27 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton10";
    version = "27";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-yBPjPb2LzxdgEobuoeSfs3UZ1XUxZF6vIMYF+fAnLA0=";
    };
  };

  GE-Proton10-26 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton10";
    version = "26";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-Q5bKTDn3sTgp4mbsevOdN3kcdRsyKylghXqM2I2cYq8=";
    };
  };

  GE-Proton10-25 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton10";
    version = "25";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-RKko4QMxtnuC1SAHTSEQGBzVyl3ywnirFSYJ1WKSY0k=";
    };
  };

  GE-Proton10-24 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton10";
    version = "24";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-QZBu2C4JrsETY+EV0zs4e921qOxYT9lk0EYXXpOCKLs=";
    };
  };

  GE-Proton10-23 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton10";
    version = "23";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-cOjrP9Nh4cPcX3uwYF25z2QHnNDNb83FPa4O0zdENeg=";
    };
  };

  GE-Proton10-22 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton10";
    version = "22";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-PSfwuF3jLs4uZtne/z0TK/WM4ur8rtcxyiLeVNZhDaA=";
    };
  };

  GE-Proton10-21 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton10";
    version = "21";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-Oa9+DjEeZZiJEr9H7wnUtGb6v/JXHk0qt0GAGcp3JFQ=";
    };
  };

  GE-Proton10-20 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton10";
    version = "20";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-sJkaDEnfAuEqcLDBtAfU6Rny3P3lOCnG1DusWfvv2Fg=";
    };
  };

  GE-Proton10-19 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton10";
    version = "19";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-vV009ZlYFEAI1jkfMql46QnJXekRup5TqajVSc57f3U=";
    };
  };

  GE-Proton10-18 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton10";
    version = "18";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-s2xnoyRy4JI1weRJ+9wjZzBRpsH7HMbK9DbhdVDJKww=";
    };
  };

  GE-Proton10-17 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton10";
    version = "17";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-GMwAAKuaBhDv1TvAuW9DVcXSYPRM87NP6NnJfk8O8ZU=";
    };
  };

  GE-Proton10-16 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton10";
    version = "16";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-pwnYnO6JPoZS8w2kge98WQcTfclrx7U2vwxGc6uj9k4=";
    };
  };

  GE-Proton10-15 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton10";
    version = "15";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-VS9oFut8Wz2sbMwtX5tZkeusLDcZP3FOLUsQRabaZ0c=";
    };
  };

  GE-Proton10-14 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton10";
    version = "14";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-AuH10tZNMGybT7Nr7klLLAMlO4eN2KeU8l6Wps/vg2w=";
    };
  };

  GE-Proton10-13 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton10";
    version = "13";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-gFNi5yB0Bf/nSRezI7z0ltT4qIALjzLTJfNHosk6D4A=";
    };
  };

  GE-Proton10-12 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton10";
    version = "12";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-mjqcN/gTfAlPDXgJUm8qxH+jvNN8iiIuF33hSQ5Y/Vo=";
    };
  };

  GE-Proton10-11 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton10";
    version = "11";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-gTf8k0fx0KGCHVTQLkZli/CvZMkVVNpgBDpI/eiuynE=";
    };
  };

  GE-Proton10-10 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton10";
    version = "10";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-TJbeyJA9feyaBIYt5hwVUAAdev0SnoIqvhV7groxcu4=";
    };
  };

  GE-Proton10-9 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton10";
    version = "9";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-DJ7bRjzJehSFIyBo+oJyyWui+a3udGxc38P9Hw+xU9U=";
    };
  };

  GE-Proton10-8 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton10";
    version = "8";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-cbmOQYWEP/uB2ZoMAbtbeXbOJjxZui0n2U+Tr/OLKjA=";
    };
  };

  GE-Proton10-7 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton10";
    version = "7";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-XlZVQ+xYgg1H1xAHBcXZmF5//7k6w9NNspXJ/1KhzX8=";
    };
  };

  GE-Proton10-6 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton10";
    version = "6";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-2kEf7nLJx8WDGyDynBvmk1zzIPdWkjDNiTm6tlMZ38g=";
    };
  };

  GE-Proton10-4 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton10";
    version = "4";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-Si/CQ2PINfhmsC+uW3iFBUoSczZdkqwCZ8FAFuipu68=";
    };
  };

  GE-Proton10-3 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton10";
    version = "3";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-V4znOni53KMZ0rs7O7TuBst5kDSaEOyWUGgL7EESVAU=";
    };
  };

  GE-Proton10-2 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton10";
    version = "2";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-fCxiwATohvdpfxXkHY1ty5WHS0phARrDszGmwNRmVQE=";
    };
  };

  GE-Proton10-1 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton10";
    version = "1";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-sGKmfdxZK2quI7QamIGRaW1/ElwS/gJPeE4Tvh6icUo=";
    };
  };

  GE-Proton9-27 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton9";
    version = "27";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-70au1dx9co3X+X7xkBCDGf1BxEouuw3zN+7eDyT7i5c=";
    };
  };

  GE-Proton9-26 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton9";
    version = "26";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-HwwQw888rfej5ZsMQdFOojk5RY1AKNGvVpAnRVW3qUg=";
    };
  };

  GE-Proton9-25 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton9";
    version = "25";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-cMN/U09NAsghx0A8dy+mjuvSFZxgvETmkigeOLskiQs=";
    };
  };

  GE-Proton9-24 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton9";
    version = "24";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-L0GkzpSn4f6dLDOm2iDJr8D1DINTHNW9Kkn1xFTuqfo=";
    };
  };

  GE-Proton9-23 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton9";
    version = "23";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-eC1vYUfSsESPSaQK6wnOgXMf6fzn+NZ7SU/al5kY6CY=";
    };
  };

  GE-Proton9-22 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton9";
    version = "22";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-mPoKv3mvazqiVCLEKS3LXAl2s4EYy7FPoSPexCvMawQ=";
    };
  };

  GE-Proton9-21 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton9";
    version = "21";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-WNOl0pu3xcEObxSK054u4e3hTWtA/51mH25uQih0+a0=";
    };
  };

  GE-Proton9-20 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton9";
    version = "20";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-1twCv81KO1fcRcIb4H7VtAjtcKrX+DymsYdf885eOWo=";
    };
  };

  GE-Proton9-19 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton9";
    version = "19";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-+H8/3i8hUv2UENDRfE8guCsCdZJMQfVw+A4IzYuvBZQ=";
    };
  };

  GE-Proton9-18 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton9";
    version = "18";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-NoRNM61Y9q8ksOXPeDV/NaIqHblWjXtK3tXcX5UEwkI=";
    };
  };

  GE-Proton9-17 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton9";
    version = "17";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-ziuLPYJWaulyaumBY/cFp6SXZofayJROHC2yZAHWL7A=";
    };
  };

  GE-Proton9-16 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton9";
    version = "16";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-n/pU5bAr78Hawo8BMk7VW8uK0FjVsBJGMf78zRMGFPQ=";
    };
  };

  GE-Proton9-15 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton9";
    version = "15";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-WeqntQxez6XPRZxpPNUAQ8/7sw6TzOKU1yrtPHmQNh0=";
    };
  };

  GE-Proton9-14 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton9";
    version = "14";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-+nFF1VA9W1bySac4jXCa09HT970OZfayUYAp6kLVlEY=";
    };
  };

  GE-Proton9-13 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton9";
    version = "13";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-/KaFYCLvojxH3coiJaArXMPIIwW5qzK+I0bGyt7oBNY=";
    };
  };

  GE-Proton9-12 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton9";
    version = "12";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-2/vxX5AT1qQ50jBrQkZIzlmzkOAX+qzINEeD3Lo1f40=";
    };
  };

  GE-Proton9-11 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton9";
    version = "11";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-OGsgR56R/MaFxahsb/42kA9CEexGDF/aTZlyf6v8tXo=";
    };
  };

  GE-Proton9-10 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton9";
    version = "10";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-dd0qR/iin3VWAMTOvoOURk6s+PNBnZaXBhnxpczL6w8=";
    };
  };

  GE-Proton9-9 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton9";
    version = "9";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-sUjC6ByO8oeRhg3aZLSDJTc2GstdAdXJOddS37UkkL8=";
    };
  };

  GE-Proton9-8 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton9";
    version = "8";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-J++RavJphMqxVWVzX2mDFs9sVuLfLADQHmnZZI49h5w=";
    };
  };

  GE-Proton9-7 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton9";
    version = "7";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-/FXdyPuCe6rD5HoMOHPVlwRXu3DMJ3lEOnRloYZMA8s=";
    };
  };

  GE-Proton9-6 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton9";
    version = "6";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-KafilifTQfK46KCR09bcniD+2EgYdXNWrq0+2IQST7k=";
    };
  };

  GE-Proton9-5 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton9";
    version = "5";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-bUlV533M5BL5UEOB0ED8VIMmquvVAvIm+E/ZJNjftRU=";
    };
  };

  GE-Proton9-4 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton9";
    version = "4";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-OR4SUqm5Xsycv/KVBW2Ug/lz4Xr6IQBp8gXacorRe3U=";
    };
  };

  GE-Proton9-3 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton9";
    version = "3";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-OBzmbhiF57T2JT9Rr8lPUcAPVMpO9RRnPRoz69DLIqw=";
    };
  };

  GE-Proton9-2 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton9";
    version = "2";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-NqBzKonCYH+hNpVZzDhrVf+r2i6EwLG/IFBXjE2mC7s=";
    };
  };

  GE-Proton9-1 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton9";
    version = "1";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-odpzRlzW7MJGRcorRNo784Rh97ssViO70/1azHRggf0=";
    };
  };

  GE-Proton8-32 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton8";
    version = "32";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-ZBOF1N434pBQ+dJmzfJO9RdxRndxorxbJBZEIifp0w4=";
    };
  };

  GE-Proton8-31 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton8";
    version = "31";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-ZBOF1N434pBQ+dJmzfJO9RdxRndxorxbJBZEIifp0w4=";
    };
  };

  GE-Proton8-30 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton8";
    version = "30";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-ACgvZgMtFkth8s07u0vwC/khnA7D6hGiS+Zd3tbv0os=";
    };
  };

  GE-Proton8-29 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton8";
    version = "29";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-lnkf3Mb0gKfP/c077OnP9+z2jscm5swUZHVOCqSuzt4=";
    };
  };

  GE-Proton8-28 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton8";
    version = "28";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-oTSLJ6Q4iQwZ8KWhgPMJ5Sla84Etg3+H+7Ka0NoN1Kg=";
    };
  };

  GE-Proton8-27 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton8";
    version = "27";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-YeibTA2z69bNE3V/sgFHOHaxl0Uf77unQQc7x2w/1AI=";
    };
  };

  GE-Proton8-26 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton8";
    version = "26";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-3pw+RvC87SZmATSzfura+x5gKG9V7vSK/Y3vCddAJK8=";
    };
  };

  GE-Proton8-25 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton8";
    version = "25";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-IoClZ6hl2lsz9OGfFgnz7vEAGlSY2+1K2lDEEsJQOfU=";
    };
  };

  GE-Proton8-24 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton8";
    version = "24";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-S8qh46TAgS393CjOBljCvOtXUHhCximFMcB70YaP9Pk=";
    };
  };

  GE-Proton8-23 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton8";
    version = "23";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-3XniKYf/KDRDYhTwffkktbmoISwOtGIABF28bsp8QHA=";
    };
  };

  GE-Proton8-22 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton8";
    version = "22";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-NwFnyfi9ATHUVq55xqTmxK7DptNYBKD+ElFSK5IqMcQ=";
    };
  };

  GE-Proton8-21 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton8";
    version = "21";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-52Qt78G8/92wYTDzpU+oGIdqXt/6AkC2KiI/qZW/EjQ=";
    };
  };

  GE-Proton8-20 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton8";
    version = "20";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-eM8jiTFgSEmleawsBjOaDNFVtR61k+ekxlqFAj+E7lk=";
    };
  };

  GE-Proton8-19 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton8";
    version = "19";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-LIpusmSrkuj7mNRGQVxbaSb0TU2xF4YKrUrMBg3Ht+k=";
    };
  };

  GE-Proton8-18 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton8";
    version = "18";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-fQB5YLUM5JRtTGM2n8CMewkuoexBORIYOKKOIn6cDpM=";
    };
  };

  GE-Proton8-17 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton8";
    version = "17";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-w804j8CoTvhGh9srVmzDO7640jFTvyzvaLa4Z7DvPaM=";
    };
  };

  GE-Proton8-16 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton8";
    version = "16";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-75A0VCVdYkiMQ1duE9r2+DLBJzV02vUozoVLeo/TIWQ=";
    };
  };

  GE-Proton8-15 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton8";
    version = "15";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-SzD8gYRl87XedAcN6g8X1wqYmV5QGNZZGWi4q5EF3go=";
    };
  };

  GE-Proton8-14 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton8";
    version = "14";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-/68J3aVmHqrrcNk4DkYSBzfNyIQmbcUGg3yOlDq1ts8=";
    };
  };

  GE-Proton8-13 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton8";
    version = "13";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-xfj5HGw1hyoceq0Xfe3MFL8jzJDaUUC03Aw8BUupR1o=";
    };
  };

  GE-Proton8-12 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton8";
    version = "12";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-FAgdQKxEzl/Z9KqNrDmAf03Zzm+g3lobqC/xZCCxYYA=";
    };
  };

  GE-Proton8-11 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton8";
    version = "11";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-ucQK5k7/ptgRy/B0nvT6aZdz3nl0YNiKH+uaJJux03g=";
    };
  };

  GE-Proton8-10 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton8";
    version = "10";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-jBjPoZ2IvFTTATYwZk2oZ66QgjBzPq68CreOoUtIz5Q=";
    };
  };

  GE-Proton8-9 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton8";
    version = "9";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-XBSkEGiLpza5nGgc33V0rHvpUZHLj3l6pCQ5Bo/7+tI=";
    };
  };

  GE-Proton8-8 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton8";
    version = "8";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-Vd8ThP7TvPkGOIcaBtCe80O2drykcUduOPJmlVIWPFg=";
    };
  };

  GE-Proton8-7 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton8";
    version = "7";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-QjBZ/68/98MnP2aVjSkbRriT2Ofo6C0IHIF4CqYIP/U=";
    };
  };

  GE-Proton8-6 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton8";
    version = "6";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-1P7qk2Lk5PvpH11LW4/GNK3WdldbBQhJtJVJyBJT4bY=";
    };
  };

  GE-Proton8-5 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton8";
    version = "5";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-DGT829ZIO5YVD/nQbvMeBeR086wQwbSvXqptEL+ghrw=";
    };
  };

  GE-Proton8-4 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton8";
    version = "4";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-UdX2qnC3s7e560b4Mw5BTWA9e0ehMo/+iGuVDO7nBhc=";
    };
  };

  GE-Proton8-3 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton8";
    version = "3";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-XTYaDE8JJAM8nD7+DPUnU5J+MtNGrE43qyj48p8o/WM=";
    };
  };

  GE-Proton8-2 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton8";
    version = "2";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-DJpdmzjaZXCg9+ragjqyDs0X8s41t2DOlSs/6wDQ39g=";
    };
  };

  GE-Proton8-1 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton8";
    version = "1";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-CICI0M5zp52FPBxKh9ecWhtsrQJrUlZKRKcFCtwxP+A=";
    };
  };

  GE-Proton7-55 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton7";
    version = "55";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-6CL+9X4HBNoB/yUMIjA933XlSjE6eJC86RmwiJD6+Ws=";
    };
  };

  GE-Proton7-54 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton7";
    version = "54";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-cQOw8lXGgMcl7SFNdCPfeTblBS9QFsKrtZ0j0oImwcc=";
    };
  };

  GE-Proton7-53 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton7";
    version = "53";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-oEKwDd0/F1YItwVKGlGgt/YS2susMgfOY3c5TPxxYLE=";
    };
  };

  GE-Proton7-52 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton7";
    version = "52";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-+L05y/RgRbXvioF4DnsrDintZD0MvA2xzpuRhJIVN10=";
    };
  };

  GE-Proton7-51 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton7";
    version = "51";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-iRMITFHe1BppOe2I35Sg8OscKagqfzPbGLumaLFXKLw=";
    };
  };

  GE-Proton7-50 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton7";
    version = "50";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-QNp42EEDM74tbggiMjuWlN220T6BCyxSQVUIo53P9ss=";
    };
  };

  GE-Proton7-49 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton7";
    version = "49";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-AnWQ8rjBNBAsEom2MIzcKRlxgJPHJhiiy5ejMz2AnfM=";
    };
  };

  GE-Proton7-48 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton7";
    version = "48";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-53JJ1aBFS5Shwy12nE5VEHYqGMuL+kar+QrXVvRco1k=";
    };
  };

  GE-Proton7-47 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton7";
    version = "47";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-FFQa9EYT17n8fmQIrxsXeQLnHDNhH3qB6Hjzc6Xj7FY=";
    };
  };

  GE-Proton7-46 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton7";
    version = "46";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-FFQa9EYT17n8fmQIrxsXeQLnHDNhH3qB6Hjzc6Xj7FY=";
    };
  };

  GE-Proton7-45 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton7";
    version = "45";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-tuzSt9WBkp8tiXTTJo4TNBfTxwIh6RRopAyx18z4+Ps=";
    };
  };

  GE-Proton7-44 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton7";
    version = "44";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-GYCh43y96qx52bQwlngRClJ6MUurW9dx5x9alt70y18=";
    };
  };

  GE-Proton7-43 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton7";
    version = "43";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-Cwo4iLnQc+6FXYs+EnjSvZJSIJCBI/43Lx91CJk/iOM=";
    };
  };

  GE-Proton7-42 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton7";
    version = "42";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-lTd/NX/VtBQCO/feunBYNp+HqbQVB+8gRAszTb+Pktk=";
    };
  };

  GE-Proton7-41 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton7";
    version = "41";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-fqhZ/ZNBiwPnti9ByQMRVCkbUKndDZxgKH6OdsUA5Fc=";
    };
  };

  GE-Proton7-40 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton7";
    version = "40";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-phK+tvEGPwannXyNeFTnVVyVVW47a+PZbZfY6+2weyw=";
    };
  };

  GE-Proton7-39 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton7";
    version = "39";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-RWVIdAk4/9U/Zn/nQbw3y7xJv9rq12R8YZYE0rcROds=";
    };
  };

  GE-Proton7-38 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton7";
    version = "38";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-u3r+f2OtgYA4LDyy1sBczXErVGvG7Ck2s+wJSrQ2KOM=";
    };
  };

  GE-Proton7-37 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton7";
    version = "37";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-P8XIZ0TaOk7qQvC5Kj992Du/+p7knUygMyau2ze67XE=";
    };
  };

  GE-Proton7-36 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton7";
    version = "36";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-tGby+1yi4wYxHb84fMPzGKMAbbrDo/dY6ZzRuSsxMxk=";
    };
  };

  GE-Proton7-35 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton7";
    version = "35";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-W+uG7gsW+d7nxqrgqxUfNwiwEYFrZfJ8aDEdWhPhx4o=";
    };
  };

  GE-Proton7-34 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton7";
    version = "34";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-74zW6+El0RNz0wQhPywfhexwj3A0igy12iSRyZoaQR8=";
    };
  };

  GE-Proton7-33 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton7";
    version = "33";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-0MOIZs/8g/0ekmpw7WwTf7goY+iynmHZXYhzSQtwBaU=";
    };
  };

  GE-Proton7-31 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton7";
    version = "31";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-JPUxuNUP7UrEgroJrQRZYEs/m4mdF36vqbP1XSXxx+k=";
    };
  };

  GE-Proton7-30 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton7";
    version = "30";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-lQR19PDTyz+W7d9IgnXj3yIJqrs6F4u4EM0yblgnZsk=";
    };
  };

  GE-Proton7-29 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton7";
    version = "29";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-sREHuaWd4PtfmkkiGB5EpU1YvnZ1a9bllB2q7bI7kcg=";
    };
  };

  GE-Proton7-28 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton7";
    version = "28";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-rXBIA238lgrMbhfL91mNFNUP9GP4DJ2gWNTtzkqqfg4=";
    };
  };

  GE-Proton7-27 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton7";
    version = "27";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-RM1OjfIN0jle5V5zcMCR8voC9zhGZl2WP6urn36nl2w=";
    };
  };

  GE-Proton7-26 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton7";
    version = "26";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-AgNz1Ci/ZBcIeVKju+nqfRkctzGIQPm8NKBjdJPRu+c=";
    };
  };

  GE-Proton7-25 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton7";
    version = "25";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-7Bsky6AG4PDHKS5iIneamJErnJ9CxEq9BGOoHJg5OnM=";
    };
  };

  GE-Proton7-24 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton7";
    version = "24";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-SrwKW39pQt+ZOj4Pn3ZfMZxK+M3AxTv2mSeg2h2z+t8=";
    };
  };

  GE-Proton7-23 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton7";
    version = "23";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-MDOEg3Vnqw5BeLVBUPeDtRLsfaTeWnvkZtFUCnZ7I6k=";
    };
  };

  GE-Proton7-22 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton7";
    version = "22";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-CCJ+RDD4c1G/Gfrz7oOiCo+uiV9UlRMvAdrZzKd4B4k=";
    };
  };

  GE-Proton7-21 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton7";
    version = "21";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-V5+QpQSz36WHUTKz8tsNq8ozq9nTl9cOGghvUm/tfpU=";
    };
  };

  GE-Proton7-20 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton7";
    version = "20";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-80rak9Z/HCdR+axUQnB12tD4rlVjB5GAjRfkLQkAKWQ=";
    };
  };

  GE-Proton7-19 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton7";
    version = "19";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-zb2QhJnGBsVMvbvz7Mfiw32rRnGTotPxfnrJ76xBOHo=";
    };
  };

  GE-Proton7-18 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton7";
    version = "18";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-namKiUgyZ4IImmmeygHMI31yCI2kipbFLRMk2rtZqiE=";
    };
  };

  GE-Proton7-17 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton7";
    version = "17";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-jK3Pkt6u+WRvSu7UWs16RGm++zWFSsgBnKtS5GkMGWs=";
    };
  };

  GE-Proton7-16 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton7";
    version = "16";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-VmbzXsTqZ4c4bShOyx+faI6w19aw3thYOxPezuuXYJo=";
    };
  };

  GE-Proton7-15 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton7";
    version = "15";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-IacCNkR1RRqSrX5UYYIbkZoV8z6rSarKisBjS5z50CM=";
    };
  };

  GE-Proton7-14 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton7";
    version = "14";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-JEY3ezoUVYPKGH0Mo3llWDD+tZXvm7idSi+uzD/u11M=";
    };
  };

  GE-Proton7-13 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton7";
    version = "13";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-0lWNyC+07vuuB96LloT7AfC3LO9U5hWXzoJv5+ADKhw=";
    };
  };

  GE-Proton7-12 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton7";
    version = "12";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-gBAWzdqIZHaH7Anh2DtFWeCDED2USK4aoQfI/OZbnjY=";
    };
  };

  GE-Proton7-11 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton7";
    version = "11";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-yxrLVhEXDCLSjLxu5qSoYQp5rsKu4wkwNNWr+UlqbkM=";
    };
  };

  GE-Proton7-10 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton7";
    version = "10";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-9u0V3+d1WCTw37wEuhO/vOen/drQo3pN4ppqMk57I1M=";
    };
  };

  GE-Proton7-9 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton7";
    version = "9";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-UdaijAWQbj2/lmltcMGeuEV8ZLqK/dpU04jUvpcQs0E=";
    };
  };

  GE-Proton7-8 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton7";
    version = "8";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-2cPRPC5oIekr1nSm+9iCNxUuWzXjx242snSKZ2TEg68=";
    };
  };

  GE-Proton7-7 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton7";
    version = "7";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-/XNpNrKoHJeGyp0GP66U+UtXVUjsBh4FSdCtlN/jcxY=";
    };
  };

  GE-Proton7-6 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton7";
    version = "6";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-Qjnxz14ZYYj9yeCkDNNerUUplShGrBjG/6B28RuNJas=";
    };
  };

  GE-Proton7-5 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton7";
    version = "5";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-x9tWcACU5p5/A/jlp4cXb/W7dIaYvwr9RPUzuJP+k1E=";
    };
  };

  GE-Proton7-4 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton7";
    version = "4";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-JD4Q+7eXWodqv0IU3jEnELYX++XX1NJCZXtpRjqpTrM=";
    };
  };

  GE-Proton7-3 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton7";
    version = "3";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-vPL3AfZZcQQQKgfGb2dvGuArYTC0xTNmbSXFEU9O72k=";
    };
  };

  GE-Proton7-2 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton7";
    version = "2";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-5SYWiyWn23TeYUi7Q/bhai5zZF4ezGFIzk9LaS5TJxg=";
    };
  };

  GE-Proton7-1 = final.proton-ge-versioned.overrideAttrs rec {
    pname = "GE-Proton7";
    version = "1";

    src = prev.fetchzip {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${pname}-${version}/${pname}-${version}.tar.gz";
      hash = "sha256-a7L+tLf99NKn0+PL353xzPsA/ijOXo8kSUCAP9EolJU=";
    };
  };
}
