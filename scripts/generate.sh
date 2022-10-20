generate() {
    backup_dir=$1
    base=$2
    cargo_dir=$3
    target=$4

    echo "Create a backup directory"
    mkdir -p $backup_dir
    if [ -e $target ]; then
        echo "Create a backup of $target in $backup_dir"
        cp -rPf $target $backup_dir
    fi

    echo "Copy contents of $base into $target"
    cp -rPf $base/. $target

    echo "Copy contents of $cargo_dir into $target"
    cp -rPfv $cargo_dir/. $target
}
generate $1 $2 $3 $4
