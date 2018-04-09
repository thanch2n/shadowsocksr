setSsrUser(){
	ssr_user="r"
    ssr_port=53427
    ssr_password="aWdpdmVhZnVjawo="
    ssr_method="none"
    ssr_protocol="auth_chain_b"
    ssr_protocol_param=3
    ssr_obfs="tls1.2_ticket_auth_compatible"
    ssr_speed_limit_per_con=0
    ssr_speed_limit_per_user=0
    ssr_transfer=100
    ssr_forbid=""
    cd /usr/local/shadowsocksr
    python mujson_mgr.py -a -u "${ssr_user}" -p "${ssr_port}" -k "${ssr_password}" -m "${ssr_method}" -O "${ssr_protocol}" -G "${ssr_protocol_param}" -o "${ssr_obfs}" -s "${ssr_speed_limit_per_con}" -S "${ssr_speed_limit_per_user}" -t "${ssr_transfer}" -f "${ssr_forbid}"

    ssr_user="g"
    ssr_port=53428
    ssr_password="aWdpdmVhZnVjawo="
    ssr_method="aes-256-cfb"
    ssr_protocol="origin"
    ssr_protocol_param=3
    ssr_obfs="tls1.2_ticket_auth_compatible"
    ssr_speed_limit_per_con=0
    ssr_speed_limit_per_user=0
    ssr_transfer=100
    ssr_forbid=""
    cd /usr/local/shadowsocksr
    python mujson_mgr.py -a -u "${ssr_user}" -p "${ssr_port}" -k "${ssr_password}" -m "${ssr_method}" -O "${ssr_protocol}" -G "${ssr_protocol_param}" -o "${ssr_obfs}" -s "${ssr_speed_limit_per_con}" -S "${ssr_speed_limit_per_user}" -t "${ssr_transfer}" -f "${ssr_forbid}"
	
    ssr_user="b"
    ssr_port=53429
    ssr_password="aWdpdmVhZnVjawo="
    ssr_method="none"
    ssr_protocol="auth_chain_b"
    ssr_protocol_param=3
    ssr_obfs="tls1.2_ticket_auth_compatible"
    ssr_speed_limit_per_con=0
    ssr_speed_limit_per_user=0
    ssr_transfer=100
    ssr_forbid=""
    cd /usr/local/shadowsocksr
    python mujson_mgr.py -a -u "${ssr_user}" -p "${ssr_port}" -k "${ssr_password}" -m "${ssr_method}" -O "${ssr_protocol}" -G "${ssr_protocol_param}" -o "${ssr_obfs}" -s "${ssr_speed_limit_per_con}" -S "${ssr_speed_limit_per_user}" -t "${ssr_transfer}" -f "${ssr_forbid}"

	# ciphers=(
	# none
	# aes-256-cfb
	# aes-192-cfb
	# aes-128-cfb
	# aes-256-cfb8
	# aes-192-cfb8
	# aes-128-cfb8
	# aes-256-ctr
	# aes-192-ctr
	# aes-128-ctr
	# chacha20-ietf
	# chacha20
	# salsa20
	# xchacha20
	# xsalsa20
	# rc4-md5
	# )
	# # Reference URL:
	# # https://github.com/shadowsocksr-rm/shadowsocks-rss/blob/master/ssr.md
	# # https://github.com/shadowsocksrr/shadowsocksr/commit/a3cf0254508992b7126ab1151df0c2f10bf82680
	# # Protocol
	# protocols=(
	# origin
	# verify_deflate
	# auth_sha1_v4
	# auth_sha1_v4_compatible
	# auth_aes128_md5
	# auth_aes128_sha1
	# auth_chain_a
	# auth_chain_b
	# auth_chain_c
	# auth_chain_d
	# auth_chain_e
	# auth_chain_f
	# )
	# # obfs
	# obfs=(
	# plain
	# http_simple
	# http_simple_compatible
	# http_post
	# http_post_compatible
	# tls1.2_ticket_auth
	# tls1.2_ticket_auth_compatible
	# tls1.2_ticket_fastauth
	# tls1.2_ticket_fastauth_compatible
	# )
}
setSsrUser
