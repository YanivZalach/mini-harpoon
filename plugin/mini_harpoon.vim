" Define command to save current location
command! -nargs=0 SaveLocation call SaveLocationToFile()

" Define command to navigate to a saved location by index
command! -nargs=1 GoToLocation call GoToLocationFromFile(<f-args>)

" Define command to open the file holding the saved locations in a split
" window
command! OpenLocationFile execute 'vsplit ' . expand('%:p:h') . '/.location_list'

" Function to save current location to file
function! SaveLocationToFile()
    let location_file = expand('%:p:h').'/.location_list'
    let current_location = expand('%')
    let relative_location = fnamemodify(current_location, ":.")

	    if !filereadable(location_file)
			call writefile(['.location_list'], expand('%:p:h').'/.gitignore', 'a')
			echo "Added .location_list to .gitignore"
	    endif

    call writefile([relative_location], location_file, 'a')
    echo "Location saved"
endfunction

" Function to navigate to a saved location by index
function! GoToLocationFromFile(location_index)
    let location_file = expand('%:p:h').'/.location_list'
    if filereadable(location_file)
        let locations = readfile(location_file)
        if !empty(locations)
			let relative_location = get(locations, a:location_index - 1, 0)
			let location = expand('%:p:h') . '/' . relative_location
			if filereadable(location)
                execute "edit " . location
            else
                echo "Location not found: " . a:location_index
            endif
        else
            echo "No saved locations"
        endif
    else
        echo "No location file found"
    endif
endfunction

