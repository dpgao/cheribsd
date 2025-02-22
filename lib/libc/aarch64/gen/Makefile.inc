# $FreeBSD$

CFLAGS+=	-DNO_COMPAT7

SRCS+=	_ctx_start.S \
	fabs.S \
	flt_rounds.c \
	fpgetmask.c \
	fpsetmask.c \
	infinity.c \
	ldexp.c \
	makecontext.c \
	_setjmp.S \
	setjmp.S \
	sigsetjmp.S \
	trivial-getcontextx.c

.if ${MACHINE_ABI:Mpurecap}
SRCS+=	emutls.c
.endif
