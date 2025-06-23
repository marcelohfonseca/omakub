OPTIONAL_APPS=("cursor" "discord" "doom-emacs" "gimp" "jabref", "virtualbox")
DEFAULT_OPTIONAL_APPS='doom-emacs,jabref,gimp'
export OMAKUB_FIRST_RUN_OPTIONAL_APPS=$(gum choose "${OPTIONAL_APPS[@]}" --no-limit --selected $DEFAULT_OPTIONAL_APPS --height 10 --header "Select optional apps" | tr ' ' '-')

AVAILABLE_LANGUAGES=("Python" "R" "Julia" "Scala" "Java")
SELECTED_LANGUAGES="Python"
export OMAKUB_FIRST_RUN_LANGUAGES=$(gum choose "${AVAILABLE_LANGUAGES[@]}" --no-limit --selected "$SELECTED_LANGUAGES" --height 10 --header "Select programming languages")

AVAILABLE_DBS=("MySQL" "Redis" "PostgreSQL" "MSSQL")
SELECTED_DBS="MSSQL"
export OMAKUB_FIRST_RUN_DBS=$(gum choose "${AVAILABLE_DBS[@]}" --no-limit --selected "$SELECTED_DBS" --height 10 --header "Select databases (runs in Docker)")
