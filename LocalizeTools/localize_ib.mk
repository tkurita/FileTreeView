# following variables must be given as command line arguments
#target_lang = Japanese
#target_nib = Japanese.lproj/MainMenu.nib

$(target_nib): $(target_lang).lproj/%.nib: en.lproj/%.nib $(target_lang).lproj/%.strings
	./LocalizeTools/localize_ib.sh $< $@
