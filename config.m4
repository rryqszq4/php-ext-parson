dnl $Id$
dnl config.m4 for extension parson

dnl Comments in this file start with the string 'dnl'.
dnl Remove where necessary. This file will not work
dnl without editing.

dnl If your extension references something external, use with:

dnl PHP_ARG_WITH(parson, for parson support,
dnl Make sure that the comment is aligned:
dnl [  --with-parson             Include parson support])

dnl Otherwise use enable:

dnl PHP_ARG_ENABLE(parson, whether to enable parson support,
dnl Make sure that the comment is aligned:
dnl [  --enable-parson           Enable parson support])

if test "$PHP_PARSON" != "no"; then
  dnl Write more examples of tests here...

  dnl # --with-parson -> check with-path
  dnl SEARCH_PATH="/usr/local /usr"     # you might want to change this
  dnl SEARCH_FOR="/include/parson.h"  # you most likely want to change this
  dnl if test -r $PHP_PARSON/$SEARCH_FOR; then # path given as parameter
  dnl   PARSON_DIR=$PHP_PARSON
  dnl else # search default path list
  dnl   AC_MSG_CHECKING([for parson files in default path])
  dnl   for i in $SEARCH_PATH ; do
  dnl     if test -r $i/$SEARCH_FOR; then
  dnl       PARSON_DIR=$i
  dnl       AC_MSG_RESULT(found in $i)
  dnl     fi
  dnl   done
  dnl fi
  dnl
  dnl if test -z "$PARSON_DIR"; then
  dnl   AC_MSG_RESULT([not found])
  dnl   AC_MSG_ERROR([Please reinstall the parson distribution])
  dnl fi

  dnl # --with-parson -> add include path
  dnl PHP_ADD_INCLUDE($PARSON_DIR/include)

  dnl # --with-parson -> check for lib and symbol presence
  dnl LIBNAME=parson # you may want to change this
  dnl LIBSYMBOL=parson # you most likely want to change this 

  dnl PHP_CHECK_LIBRARY($LIBNAME,$LIBSYMBOL,
  dnl [
  dnl   PHP_ADD_LIBRARY_WITH_PATH($LIBNAME, $PARSON_DIR/lib, PARSON_SHARED_LIBADD)
  dnl   AC_DEFINE(HAVE_PARSONLIB,1,[ ])
  dnl ],[
  dnl   AC_MSG_ERROR([wrong parson lib version or lib not found])
  dnl ],[
  dnl   -L$PARSON_DIR/lib -lm
  dnl ])
  dnl
  dnl PHP_SUBST(PARSON_SHARED_LIBADD)

  PHP_NEW_EXTENSION(parson, parson.c, $ext_shared)
fi
