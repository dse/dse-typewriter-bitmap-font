BDFFONTS = typewriter.bdf typewriter-oldstyle.bdf
TTFFONTS = $(patsubst %.bdf,%.ttf,$(BDFFONTS))

default: $(TTFFONTS)

typewriter.ttf: typewriter.bdf Makefile
	bitmapfont2ttf \
		--pixel-size=28 \
		--family-name="DSE Typewriter Bitmap" \
		--font-name="DSETypewriterBitmap-Regular" \
		--full-name="DSE Typewriter Bitmap Regular" \
		$<
typewriter-oldstyle.ttf: typewriter-oldstyle.bdf Makefile
	bitmapfont2ttf \
		--pixel-size=28 \
		--family-name="DSE Typewriter Bitmap" \
		--font-name="DSETypewriterBitmap-OldStyle" \
		--full-name="DSE Typewriter Bitmap Old Style" \
		$<
