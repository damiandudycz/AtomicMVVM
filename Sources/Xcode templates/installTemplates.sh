for file in *.xctemplate; do
    echo "Installing $file"
    sudo cp -r "$file" "/Applications/Xcode.app/Contents/Developer/Library/Xcode/Templates/File Templates/MultiPlatform/Source/"
done
