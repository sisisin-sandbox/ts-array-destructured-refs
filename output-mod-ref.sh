mod_path="$PWD/src/mod.ts"

npx tsserver <<EOF | tail -n 1
{"command":"open","arguments":{"file":"${mod_path}"}}
{"command":"references","arguments":{"file":"${mod_path}","line":1,"offset":19}}
EOF

npx tsserver <<EOF | tail -n 1
{"command":"open","arguments":{"file":"${mod_path}"}}
{"command":"references","arguments":{"file":"${mod_path}","line":2,"offset":15}}
EOF
