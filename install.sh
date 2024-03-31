# symlink dotfiles to appropriate places

DIR=$HOME/.dotfiles

DOTFILES=(
	".config/alacritty"
)

for dotfile in "${DOTFILES[@]}";do
	rm -rf "${HOME}/${dotfile}"
	ln -sf "${DIR}/${dotfile}" "${HOME}/${dotfile}"
done
