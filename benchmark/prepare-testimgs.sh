for sz in 1 2 4 8 16 32 64 128 256 512 1024; do
        magick testpngs/rgb-alpha-16.png -resize $sz samples/testpng$sz.png
done
