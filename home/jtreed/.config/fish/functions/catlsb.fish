function catlsb
	echo 'Setting up tmpdir...'
	set tmpdir (mktemp -d /tmp/catlsb.XXXXXX)
	echo "Set up tmpdir at $tmpdir"
	echo 'Taking LSB...'
	xxd -b $argv | cut -d' ' -f2-7 | tr -d ' ' | tr -d \n | sed -r 's/[01]{7}([01])/\1/g' > "$tmpdir/main"
	echo '...done.'
	echo 'Pushing D...'
	pushd "$tmpdir"
	echo '...done.'
	echo 'Splitting file...'
	split -b512 main
	echo '...done.'
	echo 'Looping through:'
	ls -C
	for i in (ls -1);
		dc -e '2i' -f "$i" -e 'P';
	end
	echo '...done looping.'
	echo 'Popping D...'
	popd
	echo '...done.'
	echo 'Cleaning up tmpdir...'
	rm -rf "$tmpdir"
	echo '...done.'
end
