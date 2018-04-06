getLibsodium(){
    Libsodiumr_ver=$(wget -c -t 3 -qO- "https://github.com/jedisct1/libsodium/tags"|grep "/jedisct1/libsodium/releases/tag/"|head -1|sed -r 's/.*tag\/(.+)\">.*/\1/')
	# Libsodiumr_ver="1.0.16"
	libsodium_file="libsodium-${Libsodiumr_ver}"
	libsodium_url="https://github.com/jedisct1/libsodium/releases/download/${Libsodiumr_ver}/libsodium-${Libsodiumr_ver}.tar.gz"
    wget -c -t 3 --no-check-certificate -O ${libsodium_file}.tar.gz ${libsodium_url}
    tar zxf ${libsodium_file}.tar.gz
    cd ${libsodium_file}
    ./configure --prefix=/usr && make && make install
    ldconfig
}
getLibsodium