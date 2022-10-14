return {
	cmd = {
		"solang",
		"--language-server",
		"--target",
		"ewasm",
		"--importpath",
		"packages/hardhat/",
		"--importmap",
		"@openzeppelin/=packages/hardhat/node_modules/@openzeppelin/",
	},
}
