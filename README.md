# NSIS Experiments

## Overview

NSIS is the Nullsoft Scriptable Install System for building install files on
Windows. This is available on Windows as well as Linux (yay!) so we can make
packages across different platforms.

I started experimenting with the [simple tutorials][sim], so these are taken
as-is from the official [sourceforge page][sfp]. It makes sense to reuse the
same license for these examples as is available on that site.

Whether I will be using another license for the rest of the stuff I make for
my own use later on remains to be seen, but I'm open to sharing as much as I
can. This is related to one of my work requirements, so I **promise** you if
I do make something I think is useful but has work bits so I can't share it,
I will make a public-domain version that everyone can see and use.

This *is* on GitHub, after all.

## Installing NSIS

Windows users can download [an installer][ndl] from the official site, which
I am assuming was created using NSIS itself.

I don't know because I'm using Ubuntu 14.04, and so all I had to do was just
use `apt-get install` as usual:

    # apt-get install nsis

This above command, executed as a root user, will fetch NSIS from the Ubuntu
repositories. This is slightly behind the Windows version because it needs a
team of faithful porters to bring it across the OS chasm, but the scripts we
use should in essence work on both versions. 

Right now, I am working with version 2.46-7.

**I will test across versions as and when I can**, but if you have done some
tests, please feel free to create an issue telling me whether they worked or
not. Pull requests with patches are welcome.

## Creating Installers

Once an NSIS install script has been created with the `.nsi` extension, what
remains to be done is to run `makensis <filename>` to create the `.exe` that
has been defined using the `OutFile` clause.

## Testing Installers

In each subfolder, I'll keep a checklist of which installers worked on which
versions of Windows and which versions of NSIS they were compiled with. This
will be a CSV file called `WORKING.csv` with the following format:

    script_name,nsis_version,32_7,32_8,32_10,64_7,64_8,64_10,S_08,S_12

This corresponds to the 32- and 64-bit versions of Windows 7, 8, 10, as well
as Windows Server 2008 and Windows Server 2012, which are the versions which
I think I am able to test on.

`script_name` and `nsis_version` will be ASCII strings. All other fields are
to be integers: `-1` if it does not work on that version of Windows, `0` for
not tested, `1` if it works.

[sim]: http://nsis.sourceforge.net/Simple_tutorials
[sfp]: http://nsis.sourceforge.net/
[ndl]: http://nsis.sourceforge.net/Download
