for sz in 1 2 4 8 16 32 64 128 256 512 1024 ; do
        PNGTEST=$(which pngtest)
        echo "Running baseline on $sz"
        $PNGTEST --benchmark samples/testpng$sz.png --libxo json 2>/dev/null > results/testpng$sz.json
        echo "Running sandboxed on $sz"
        ld-elf.so.1 $PNGTEST --benchmark samples/testpng$sz.png --libxo json 2>/dev/null > results/sandbox-testpng$sz.json
done
