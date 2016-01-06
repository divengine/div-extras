<h1>[[]] Example of fasttable component</h1>

{%% fasttable: {
	data: $customers,
	attr: {
		width: "50%",
		align: "center",
		border: "1"		
	},
	orders: true,
	wrappers: {
		email: '<a href="mailto:{$value}">{$value}</a>',
		credit: '${#value:2.#}'
	}
} %%}