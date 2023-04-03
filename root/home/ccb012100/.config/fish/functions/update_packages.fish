function update_packages --description 'Update various system packages'
    sudo apt update &&
        sudo apt upgrade --yes &&
        sudo -k &&
        brew upgrade &&
        flatpak update --assumeyes &&
        snap refresh &&
        gh extension upgrade --all &&
        fisher update &&
        echo \t--- all done! ---
end
