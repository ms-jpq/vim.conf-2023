# Cultural Learnings of `VIM` for Make Benefit Glorious Nation of `UNIX`

- Understanding `UNIX` through the lens of `VIM`

- `VIM` as a microcosm of `UNIX` systems

---

# `whoami`

- [https://github.com/ms-jpq](https://github.com/ms-jpq)

- Wang, Hao

- Life status: NEET, traveling the flat planet sphere

- [hao@bigly.dog](mailto:hao@bigly.dog)

![](./me.jpg)

---

# What Did I Make

[https://github.com/ms-jpq](https://github.com/ms-jpq)

## `VIM` Related

- [chadtree](https://github.com/ms-jpq/chadtree), NerdTree but chad

- [coq.nvim](https://github.com/ms-jpq/coq_nvim), CoC.nvim but coq

- [lua async await](https://github.com/ms-jpq/lua-async-await), coroutine based control flow for libuv

## Misc

- [sad](https://github.com/ms-jpq/sad), interactive TUI sed(ish)

- [noact](https://github.com/ms-jpq/noact), React virtual DOM in 70 lines (fully typed)

- lots more...

---

# Core tenants of the `UNIX` machine spirits

- Files

- Text

- Processes

![](./omnissiah.gif)

## TLDR

- `VIM` ⇆ Files are **Text** ⇆ Everything is a **File** ⇆ **Processes** communicate via Flies ⇆ `UNIX`

## Recursion

- Emergent property

- `VIM` ⇆ **Recursion** ⇆ **Tree** of Processes ⇆ `UNIX`

---

# What makes `VIM` special?

## I reject my humanity

- `HJKL` 👏

- `←↑↓→` ✋

- Relative line positioning?

- Delete 3 characters to the left?

_From the moment I understood the weakness of my flesh, it disgusted me._

---

# Servitor to the Machine God

- Prepped chicken, steamed rice, raw eggs, frozen lettuce

- **Blend `.into()` smoothie**

- Breakfast, lunch, dinner

![](./comment_2.png)

![](./comment_1.png)

---

# VIM is more of a ~syntax~ editor

Syntax ↔ **Semantics**

## TreeSitter 🌳🪑

- Select part of syntax you want to alter → Change / Delete

![](./syntax_edit.gif)

---

# Whataboutism

## These all have TreeSitter 🌳🪑

- Whatabout `emacs`

- Whatabout `helix`

- Whatabout `zed`

- ~~Whatabout `atom`~~

- **Whatabout `vscode`**

---

# GNU's Not Unix

- `UNIX` is nothing without its userspace

```txt
I'd just like to interject for a moment.

What you're referring to as Linux, is in fact, GNU/Linux, or as I've recently taken to calling it, GNU plus Linux.

Linux is not an operating system unto itself, but rather another free component of a fully functioning GNU system made useful by the GNU corelibs, shell utilities and vital system components comprising a full OS as defined by POSIX.

Many computer users run a modified version of the GNU system every day, without realizing it.

Through a peculiar turn of events, the version of GNU which is widely used today is often called Linux, and many of its users are not aware that it is basically the GNU system, developed by the GNU Project.

There really is a Linux, and these people are using it, but it is just a part of the system they use.

Linux is the kernel: the program in the system that allocates the machine's resources to the other programs that you run.

The kernel is an essential part of an operating system, but useless by itself; it can only function in the context of a complete operating system.

Linux is normally used in combination with the GNU operating system: the whole system is basically GNU with Linux added, or GNU/Linux.

All the so-called Linux distributions are really distributions of GNU/Linux!

- Richard, Emacs.
```

---

# What about "ad hoc" syntax

- No TreeSitter

- Informal

## `ini` style: systemd, samba, mypy, php, git, warcraft3, fallout, literally every other program

```toml
[Match]
Name              = vtor
Driver            = dummy

[Link]
RequiredForOnline = no

[Network]
DHCP              = no
IPv6AcceptRA      = no

Domains           = ~onion ~exit
```

## `Nginx` style: lighttpd, haproxy, dhclient, etc

```nginx
server {
  server_name "";
  include     /usr/local/opt/nginx/conf/listen.nginx;

  location / {
    alias           /usr/local/opt/nginx/index/;
    sub_filter_once off;
    sub_filter      "@SCHEME" $scheme;
    sub_filter      "@HOST" $optimistic_host;
  }
}
```

## `XML`ish style: openvpn, cups, apache, etc

```xml
Listen 80
<VirtualHost *:80>
  DocumentRoot "/www/example1"
  ServerName www.example.com
</VirtualHost>

<VirtualHost *:80>
  DocumentRoot "/www/example2"
  ServerName www.example.org
  # Other directives here
</VirtualHost>
```

---

# Incantations for the machines

## Emergent grammars

![](./tech_preist.gif)

- `"…"` ⇒ `CI"`

- `'…'` ⇒ `CI'`

- `<…>` ⇒ `CI>`

- `(…)` ⇒ `CI)`

- `{…}` ⇒ `CI}`

- _Consecutive "word" characters_ `/[A-z1-9_]+/` ⇒ `CIw`

- _**Not** whitespace characters_ `[^s]+` ⇒ `CIW`

---

# ~~`COKE`~~ `VIM` Classic

- `std{in,out,err}` are files too

## Text IO

- `'shell' 'sh'		string	(default $SHELL or "sh", Win32: "cmd.exe")`

- `:help grep`

- `:help ctags`

- `:help make`

- `:help unnamed`

- `:help terminal`

## Installing `NVIM` on Windows comes with full `UNIX` suite via `msys2`

---

# Recursive Bash HTTP Server

- A TCP socket is a file

- HTTP is a text protocol

- `bash` → `socat` → `bash` **recursion**

```bash
#!/usr/bin/env -S -- bash -Eeu -O dotglob -O nullglob -O extglob -O failglob -O globstar

set -o pipefail

ADDR='127.0.0.1'
PORT='8888'
if [[ -t 0 ]]; then
  printf -- '%q ' curl -- "http://$ADDR":"$PORT"
  printf -- '\n'
  exec -- socat TCP-LISTEN:"$PORT,bind=$ADDR",reuseaddr,fork EXEC:"$0"
fi

tee <<-EOF
HTTP/1.1 200 OK

EOF

fortune | cowsay
gay <"$0" >&2
```

---

## Other shell recursions

- `chroot`: before / after file system isolation

- `ip netns exec`: before / after network isolation

- **`ssh`**

```
bash -> ssh -> sshd -> bash
```

---

# UNIX Trees

- PID 1

## (open)launchd

- MacOS

- Some BSDs

```txt
-+= 00001 root /sbin/launchd
 |--= 00490 root /usr/libexec/logd
 |--= 00491 root /usr/libexec/smd
 |--= 00492 root /usr/libexec/UserEventAgent (System)
 |--= 00494 root /System/Library/PrivateFrameworks/Uninstall.framework/Resources/uninst
 |--= 00495 root /System/Library/Frameworks/CoreServices.framework/Versions/A/Framework
 |--= 00496 root /System/Library/PrivateFrameworks/MediaRemote.framework/Support/mediar
 |-+= 00499 root /usr/sbin/systemstats --daemon
 | \--- 00769 root /usr/sbin/systemstats --logger-helper /private/var/db/systemstats
```

## systemd

- _Good_ Linux distributions

```txt
systemd,1
  |-5/flow_checks,841 --daemon --http-prefix=/ntop --disable-login=1
  |-agetty,971 -o -p -- \\u --noclear tty1 linux
  |-chronyd,777
  |-cron,944 -f -P
  |-dbus-daemon,603 --system --address=systemd: --nofork --nopidfile --systemd-activati
  |-dnsmasq,1137 --conf-file=/run/local/dnsmasq/wg0/dnsmasq.conf
  |-dnsmasq,1468 --conf-file=/run/local/dnsmasq/enp1s0/dnsmasq.conf
  |-haproxy,967 -Ws -f /etc/haproxy/haproxy.cfg -p /run/haproxy.pid -f /usr/local/opt/h
  |   `-haproxy,974 -Ws -f /etc/haproxy/haproxy.cfg -p /run/haproxy.pid -f /usr/local/o
  |-irqbalance,608 --foreground
```

---

# `NVIM` Tree Sitter

- `NVIM` leaf

- Tree of Processes

```txt
\-+= 08871 iiiiii nvim
  \-+= 08872 iiiiii nvim --embed
    |--= 08873 iiiiii /Library/Developer/CommandLineTools/Library/Frameworks/Python3.fr
    |--= 08874 iiiiii /Users/iiiiii/.config/nvim/pack/modules/start/chadtree/.vars/runt
    |-+= 08875 iiiiii /Users/iiiiii/.config/nvim/pack/modules/start/coq_nvim/.vars/runt
    | \-+- 09191 iiiiii /Users/iiiiii/Library/Preferences/nvim/pack/modules/start/coq_n
    |   |-+- 09198 iiiiii /Users/iiiiii/Library/Preferences/nvim/pack/modules/start/coq
    |   | \--- 09233 iiiiii /Users/iiiiii/Library/Preferences/nvim/pack/modules/start/c
    |   \--- 86848 iiiiii /Users/iiiiii/Library/Preferences/nvim/pack/modules/start/coq
    |--= 08882 iiiiii /Users/iiiiii/Library/Preferences/nvim/var/bin/typos-lsp
    |-+= 08901 iiiiii /Users/iiiiii/.local/share/.codeium/bin/3dee3c5d9fe70aff1993c1a94
    | \--- 08924 iiiiii /Users/iiiiii/.local/share/.codeium/bin/3dee3c5d9fe70aff1993c1a
    |--= 09011 iiiiii /Users/iiiiii/.local/asdf/installs/nodejs/20.8.0/bin/node /Users/
    |--= 09151 iiiiii /Users/iiiiii/Library/Preferences/nvim/var/bin/marksman server
    \--= 09152 iiiiii /Users/iiiiii/Library/Preferences/nvim/var/lib/ltex-ls/jdk-11.0.1
```

- `nvim --embed` ??

- Plugins

- LSP servers

---

## OCI Containers

- Tini, S6, supervisord, etc

```txt
podman-init,1 -- docker-entrypoint.sh postgres
  `-postgres,2
      |-postgres,59
      |-postgres,60
      |-postgres,62
      |-postgres,63
      |-postgres,64
      |-postgres,65
      `-postgres,69
```

---

# `UNIX` multi-tenancy

- `HIER (Filesystem Hierarchy Standard)`

- `XDG`

## `:help runtimepath`

```txt
$XDG_CONFIG_HOME/nvim,
$XDG_CONFIG_DIRS[1]/nvim,
$XDG_CONFIG_DIRS[2]/nvim,
…
$XDG_DATA_HOME/nvim[-data]/site,
$XDG_DATA_DIRS[1]/nvim/site,
$XDG_DATA_DIRS[2]/nvim/site,
…
$VIMRUNTIME,
…
$XDG_DATA_DIRS[2]/nvim/site/after,
$XDG_DATA_DIRS[1]/nvim/site/after,
$XDG_DATA_HOME/nvim[-data]/site/after,
…
$XDG_CONFIG_DIRS[2]/nvim/after,
$XDG_CONFIG_DIRS[1]/nvim/after,
$XDG_CONFIG_HOME/nvim/after"
```

## `man -- systemd.unit`

```txt
/etc/systemd/system.control/*  ~/.config/systemd/user.control/*
/run/systemd/system.control/*  $XDG_RUNTIME_DIR/systemd/user.control/*
/run/systemd/transient/*       $XDG_RUNTIME_DIR/systemd/transient/*
/run/systemd/generator.early/* $XDG_RUNTIME_DIR/systemd/generator.early/*
/etc/systemd/system/*          ~/.config/systemd/user/*
/etc/systemd/system.attached/* $XDG_CONFIG_DIRS/systemd/user/*
/run/systemd/system/*          /etc/systemd/user/*
/run/systemd/system.attached/* $XDG_RUNTIME_DIR/systemd/user/*
/run/systemd/generator/*       /run/systemd/user/*
.                              $XDG_RUNTIME_DIR/systemd/generator/*
.                              $XDG_DATA_HOME/systemd/user/*
.                              $XDG_DATA_DIRS/systemd/user/*
…                              …
/usr/lib/systemd/system/*      /usr/lib/systemd/user/*
/run/systemd/generator.late/*  $XDG_RUNTIME_DIR/systemd/generator.late/*
```

---

# What is the Most UNiX Program?

# # M ~~16~~ 4

- Most ~~American~~ UNIX problem solver

- POSIX standard

- Text templating **language**

- Somehow **only data structure is list**

- Gratuitous `system(const char *command)`

- **No loops**, only recursion

![](./gigachad.png)

---

# TLDR2, Subsequent Moviefilm

- Everything is a **file**

- **Files** are mostly **text**

- **Processes** communicate via **files**

---

# Please Clap 💁‍♀️

[https://github.com/ms-jpq/vim.conf-2023](https://github.com/ms-jpq/vim.conf-2023)

- Planning on moving from Vancouver to Seattle

- TN work VISA needed, since I'm Canadian
