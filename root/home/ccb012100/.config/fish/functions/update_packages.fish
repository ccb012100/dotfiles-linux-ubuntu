function update_packages --description 'Update various system packages'
    sudo apt update &&
        sudo apt upgrade --yes &&
        snap refresh &&
        flatpak update --assumeyes &&
        sudo -k &&
        brew upgrade &&
        gh extension upgrade --all &&
        fisher update &&
        echo \t--- all done! ---
end
