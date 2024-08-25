# Loop through all PDF files in the directory
for file in frames/*.pdf; do
    # Use basename to remove the file extension
    base=$(basename "$file" .pdf)
    # Convert the PDF to PNG with 600dpi resolution and save it in the current working directory
    convert -density 600 "$file"[0] "frames/${base}.png"
done 

convert -dispose previous -delay 5 -loop 0 frames/frame*.png myGIF.gif