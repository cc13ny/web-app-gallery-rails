==> Installing dependencies for apache-arrow-glib: gettext, libffi, pcre and glib
==> Installing apache-arrow-glib dependency: gettext
==> Downloading https://homebrew.bintray.com/bottles/gettext-0.20.1.mojave.bottle.tar.gz
==> Downloading from https://akamai.bintray.com/fa/fa2096f80238b8f4d9f3724d526626ab4db5c0586f3746ee13fc66e5a625aa1a?__gda__=exp=1570407306~hmac=50cef
######################################################################## 100.0%
==> Pouring gettext-0.20.1.mojave.bottle.tar.gz
==> Caveats
gettext is keg-only, which means it was not symlinked into /usr/local,
because macOS provides the BSD gettext library & some software gets confused if both are in the library path.

If you need to have gettext first in your PATH run:
  echo 'export PATH="/usr/local/opt/gettext/bin:$PATH"' >> ~/.bash_profile

For compilers to find gettext you may need to set:
  export LDFLAGS="-L/usr/local/opt/gettext/lib"
  export CPPFLAGS="-I/usr/local/opt/gettext/include"

==> Summary
🍺  /usr/local/Cellar/gettext/0.20.1: 1,899 files, 18.5MB
==> Installing apache-arrow-glib dependency: libffi
==> Downloading https://homebrew.bintray.com/bottles/libffi-3.2.1.mojave.bottle.tar.gz
######################################################################## 100.0%
==> Pouring libffi-3.2.1.mojave.bottle.tar.gz
==> Caveats
libffi is keg-only, which means it was not symlinked into /usr/local,
because some formulae require a newer version of libffi.

For compilers to find libffi you may need to set:
  export LDFLAGS="-L/usr/local/opt/libffi/lib"

For pkg-config to find libffi you may need to set:
  export PKG_CONFIG_PATH="/usr/local/opt/libffi/lib/pkgconfig"

==> Summary
🍺  /usr/local/Cellar/libffi/3.2.1: 16 files, 296.8KB
==> Installing apache-arrow-glib dependency: pcre
==> Downloading https://homebrew.bintray.com/bottles/pcre-8.43.mojave.bottle.tar.gz
==> Downloading from https://akamai.bintray.com/08/08e7414a7641d1e184c936537ff67f72f52649374d2308b896d4146ccc2c08fe?__gda__=exp=1570407312~hmac=36d68
######################################################################## 100.0%
==> Pouring pcre-8.43.mojave.bottle.tar.gz
🍺  /usr/local/Cellar/pcre/8.43: 204 files, 5.5MB
==> Installing apache-arrow-glib dependency: glib
==> Downloading https://homebrew.bintray.com/bottles/glib-2.62.1.mojave.bottle.tar.gz
==> Downloading from https://akamai.bintray.com/2b/2bddb0094d0ef4ef563d56a0a5961ef95dd22130ff38b81148f5285c29e8dc2a?__gda__=exp=1570407314~hmac=cbf12
######################################################################## 100.0%
==> Pouring glib-2.62.1.mojave.bottle.tar.gz
==> Caveats
Bash completion has been installed to:
  /usr/local/etc/bash_completion.d
==> Summary
🍺  /usr/local/Cellar/glib/2.62.1: 435 files, 15.4MB
==> Installing apache-arrow-glib
==> Downloading https://homebrew.bintray.com/bottles/apache-arrow-glib-0.15.0.mojave.bottle.tar.gz
==> Downloading from https://akamai.bintray.com/06/06a11044cd8957f2f7614732755e4d600ded92dec7efe8ed2307f2b276db5a19?__gda__=exp=1570407316~hmac=10824
######################################################################## 100.0%
==> Pouring apache-arrow-glib-0.15.0.mojave.bottle.tar.gz
Warning: apache-arrow-glib dependency gcc was built with a different C++ standard
library (libstdc++ from clang). This may cause problems at runtime.
🍺  /usr/local/Cellar/apache-arrow-glib/0.15.0: 112 files, 3.6MB
==> Caveats
==> gettext
gettext is keg-only, which means it was not symlinked into /usr/local,
because macOS provides the BSD gettext library & some software gets confused if both are in the library path.

If you need to have gettext first in your PATH run:
  echo 'export PATH="/usr/local/opt/gettext/bin:$PATH"' >> ~/.bash_profile

For compilers to find gettext you may need to set:
  export LDFLAGS="-L/usr/local/opt/gettext/lib"
  export CPPFLAGS="-I/usr/local/opt/gettext/include"

==> libffi
libffi is keg-only, which means it was not symlinked into /usr/local,
because some formulae require a newer version of libffi.

For compilers to find libffi you may need to set:
  export LDFLAGS="-L/usr/local/opt/libffi/lib"

For pkg-config to find libffi you may need to set:
  export PKG_CONFIG_PATH="/usr/local/opt/libffi/lib/pkgconfig"

==> glib
Bash completion has been installed to:
  /usr/local/etc/bash_completion.d