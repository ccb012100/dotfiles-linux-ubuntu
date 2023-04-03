function update_packages --description 'Update various system packages'
    sudo apt update &&
        sudo apt upgrade --yes &&
        snap refresh &&
        sudo -k &&
        brew upgrade &&
        flatpak update --assumeyes &&
        gh extension upgrade --all &&
        fisher update &&
        echo \t--- all done! ---
end
