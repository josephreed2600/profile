function range
	for x in (seq $argv[2] | tail -n (expr $argv[2] - $argv[1] + 1))
		echo $x
	end
end
