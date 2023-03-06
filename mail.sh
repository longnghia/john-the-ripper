curl --ssl-reqd \
--url 'smtp://smtp.gmail.com:587' \
--user $1 \
--mail-from clonevol1@gmail.com \
--mail-rcpt longnghia2.00@gmail.com \
--upload-file - <<EOF
From: JOHN THE RIPPER <clonevol1@gmail.com>
To: LONGNGHIA <longnghia2.00@gmail.com>
Subject: John The Ripper!
Content-Type: multipart/alternative; boundary="boundary-string"

--boundary-string
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

Good luck! Hope it works.

--boundary-string
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

<!doctype html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body style="font-family: sans-serif;">
    <div style="display: block; margin: auto; max-width: 600px;" class="main">
      <p>Passwords for you 😎</p>
    </div>

    <pre>
    $2
    </pre>

    <style>
      .main { background-color: white; }
      a:hover { border-left-width: 1em; min-height: 2em; }
    </style>
  </body>
</html>

--boundary-string--
EOF
