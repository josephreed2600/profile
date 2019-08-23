function rename-symbol
	find -type f -exec sed -ri "s/\b$argv[1]\b/$argv[2]/g" {} +
end
