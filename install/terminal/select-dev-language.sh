# Install default programming languages
if [[ -v OMAKUB_FIRST_RUN_LANGUAGES ]]; then
	languages=$OMAKUB_FIRST_RUN_LANGUAGES
else
	AVAILABLE_LANGUAGES=("Python" "R" "Julia" "Scala" "Java")
	languages=$(gum choose "${AVAILABLE_LANGUAGES[@]}" --no-limit --height 10 --header "Select programming languages")
fi

if [[ -n "$languages" ]]; then
	for language in $languages; do
		case $language in
		Python)
			mise use --global python@latest
			;;
		R)
			mise use --global r@latest
			;;
		Julia)
			mise use --global julia@latest
			;;
		Scala)
			mise use --global scala@latest
			;;
		Java)
			mise use --global java@latest
			;;		
		esac
	done
fi
