function update_packages --description 'Update various system packages'
    sudo apt update &&
        sudo apt upgrade --yes &&
        sudo snap refresh &&
        sudo flatpak update --assumeyes &&
        sudo -k &&
        brew upgrade &&
        gh extension upgrade --all &&
        fisher update &&
        echo \t--- all done! ---
end
