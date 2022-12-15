apps:
  pkg.installed:
    - pkgs:
      - gimp
      - git
      - micro
      - vlc
 
/etc/firefox-esr/firefox-esr.js:
  file.managed:
    - source: salt://firefox_darktheme/firefox-esr.js
