<http://tug.org/pipermail/lualatex-dev/2013-August/001617.html>

This comment from the BUGS file in the kpathsea dir of the Luatex
source tree:

*Your files reside in a directory that is only pointed to via a
 symbolic link, in a leaf directory and is not listed in `ls-R'*

Unfortunately, Kpathsea's subdirectory searching has an irremediable
deficiency: If a directory D being searched for subdirectories
contains plain files and symbolic links to other directories, but no
true subdirectories, D will be considered a leaf directory, i.e., the
symbolic links will not be followed.

You can work around this problem by creating an empty dummy
subdirectory in D. Then D will no longer be a leaf, and the symlinks
will be followed.

I just checked and indeed, creating a “real” directory where the
directory is symlinked to does make kpse find the files even after
initialising it.
