# mac just
VIRTUAL_ENV=`which python`
len=${#VIRTUAL_ENV}
VIRTUAL_ENV=${VIRTUAL_ENV:0:(len-11)}
echo $VIRTUAL_ENV
patch $VIRTUAL_ENV/lib/python2.7/site-packages/OpenGL/GLES2/VERSION/GLES2_2_0.py patches/GLES2_2_0.py.patch
patch $VIRTUAL_ENV/lib/python2.7/site-packages/OpenGL/platform/ctypesloader.py patches/ctypesloader.py.patch