" Dein

let g:deoplete#enable_at_startup = 1
let g:OmniSharp_highlight_types = 1

let g:ale_fixers = {
			\	"cloudformation": [
			\		'prettier',
			\],
			\}
let g:ale_linters = {
			\	"cloudformation": [
			\		'jsonlint',
			\],
			\}
