tag=$(tail -n 1 ~/.config/hypr/userprefs.conf)

if [[ $tag =~ ^windowrule\ =\ opacity\ 1\.0\ override,\ class: ]]; then
    sed -i '$ d' ~/.config/hypr/userprefs.conf
else
    echo "windowrule = opacity 1.0 override, class:.*" >> ~/.config/hypr/userprefs.conf
fi