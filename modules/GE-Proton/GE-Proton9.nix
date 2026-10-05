{
  flake.overlays.GE-Proton9 =
    final: prev:
    let
      GE-Proton9 = {
        GE-Proton9-27 = "sha256-70au1dx9co3X+X7xkBCDGf1BxEouuw3zN+7eDyT7i5c=";
        GE-Proton9-26 = "sha256-HwwQw888rfej5ZsMQdFOojk5RY1AKNGvVpAnRVW3qUg=";
        GE-Proton9-25 = "sha256-cMN/U09NAsghx0A8dy+mjuvSFZxgvETmkigeOLskiQs=";
        GE-Proton9-24 = "sha256-L0GkzpSn4f6dLDOm2iDJr8D1DINTHNW9Kkn1xFTuqfo=";
        GE-Proton9-23 = "sha256-eC1vYUfSsESPSaQK6wnOgXMf6fzn+NZ7SU/al5kY6CY=";
        GE-Proton9-22 = "sha256-mPoKv3mvazqiVCLEKS3LXAl2s4EYy7FPoSPexCvMawQ=";
        GE-Proton9-21 = "sha256-WNOl0pu3xcEObxSK054u4e3hTWtA/51mH25uQih0+a0=";
        GE-Proton9-20 = "sha256-1twCv81KO1fcRcIb4H7VtAjtcKrX+DymsYdf885eOWo=";
        GE-Proton9-19 = "sha256-+H8/3i8hUv2UENDRfE8guCsCdZJMQfVw+A4IzYuvBZQ=";
        GE-Proton9-18 = "sha256-NoRNM61Y9q8ksOXPeDV/NaIqHblWjXtK3tXcX5UEwkI=";
        GE-Proton9-17 = "sha256-ziuLPYJWaulyaumBY/cFp6SXZofayJROHC2yZAHWL7A=";
        GE-Proton9-16 = "sha256-n/pU5bAr78Hawo8BMk7VW8uK0FjVsBJGMf78zRMGFPQ=";
        GE-Proton9-15 = "sha256-WeqntQxez6XPRZxpPNUAQ8/7sw6TzOKU1yrtPHmQNh0=";
        GE-Proton9-14 = "sha256-+nFF1VA9W1bySac4jXCa09HT970OZfayUYAp6kLVlEY=";
        GE-Proton9-13 = "sha256-/KaFYCLvojxH3coiJaArXMPIIwW5qzK+I0bGyt7oBNY=";
        GE-Proton9-12 = "sha256-2/vxX5AT1qQ50jBrQkZIzlmzkOAX+qzINEeD3Lo1f40=";
        GE-Proton9-11 = "sha256-OGsgR56R/MaFxahsb/42kA9CEexGDF/aTZlyf6v8tXo=";
        GE-Proton9-10 = "sha256-dd0qR/iin3VWAMTOvoOURk6s+PNBnZaXBhnxpczL6w8=";
        GE-Proton9-9 = "sha256-sUjC6ByO8oeRhg3aZLSDJTc2GstdAdXJOddS37UkkL8=";
        GE-Proton9-8 = "sha256-J++RavJphMqxVWVzX2mDFs9sVuLfLADQHmnZZI49h5w=";
        GE-Proton9-7 = "sha256-/FXdyPuCe6rD5HoMOHPVlwRXu3DMJ3lEOnRloYZMA8s=";
        GE-Proton9-6 = "sha256-KafilifTQfK46KCR09bcniD+2EgYdXNWrq0+2IQST7k=";
        GE-Proton9-5 = "sha256-bUlV533M5BL5UEOB0ED8VIMmquvVAvIm+E/ZJNjftRU=";
        GE-Proton9-4 = "sha256-OR4SUqm5Xsycv/KVBW2Ug/lz4Xr6IQBp8gXacorRe3U=";
        GE-Proton9-3 = "sha256-OBzmbhiF57T2JT9Rr8lPUcAPVMpO9RRnPRoz69DLIqw=";
        GE-Proton9-2 = "sha256-NqBzKonCYH+hNpVZzDhrVf+r2i6EwLG/IFBXjE2mC7s=";
        GE-Proton9-1 = "sha256-odpzRlzW7MJGRcorRNo784Rh97ssViO70/1azHRggf0=";
      };
    in
    {
      GE-Proton9 = final.GE-Proton9-27.overrideAttrs (oldAttrs: rec {
        __intentionallyOverridingVersion = true;

        version = "GE-Proton9";

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
    ) GE-Proton9;
}
