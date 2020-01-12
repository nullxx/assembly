FILENAME=$1

nasm -f macho64 $1.asm
ld -macos_version_min 10.7.0 -o $1 $1.o
./$1