#!/bin/bash
#generate csr multiple times
#
#  USAGE: ./generate_csr.sh number_of_times subdomain domain
#  it will generate csr and private key as follow:
#  ex: ./generate_csr.sh 3 site test.com.br will generate:
#  site1.test.com.br.csr , site2.test.com.br.csr, site3.test.com.br.csr ...

times=$1
prefix=$2
domain=$3

for i in `seq $times`
do
    openssl req -new -newkey rsa:4096 -nodes -out ${prefix}${i}.${domain}.csr \
            -keyout ${prefix}${i}.${domain}.key -subj \
            "/C=BR/ST=sp/L=br/O=my company /OU=ti/CN=${prefix}${i}.${domain}"
done
