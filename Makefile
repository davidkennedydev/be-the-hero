SUBPROJECTS=frontend backend

all: run
run:
	${MAKE} backend & \
		${MAKE} frontend & \
		wait

${SUBPROJECTS}:
	cd $@; ${MAKE} run

.PHONY: ${SUBPROJECTS}

