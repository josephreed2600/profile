function b2t
	echo $argv | tr -d '\n' | tr -d ' ' | tr a-f A-F | sed 's/\(.*\)/2i\1P/g' | dc
end
