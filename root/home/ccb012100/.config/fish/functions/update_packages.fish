function update_packages --description 'Update various system packages'
    sudo apt update &&
        sudo apt upgrade --yes &&
        brew upgrade &&
        flatpak update --assumeyes &&
        gh extension upgrade --all &&
        fisher update &&
        echo \t--- all done! ---
end
