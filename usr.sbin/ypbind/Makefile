#	from: @(#)Makefile	5.8 (Berkeley) 7/28/90
# $FreeBSD$

PACKAGE=	yp
PROG=	ypbind
MAN=	ypbind.8
SRCS=	ypbind.c yp_ping.c

CFLAGS+= -DDAEMON

WARNS?=	2

.include <bsd.prog.mk>
.if ${MK_CHERI} != "no"
# This code is completely broken
CFLAGS+=	-Wno-error=cheri-prototypes
.endif
