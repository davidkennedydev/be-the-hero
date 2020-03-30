SUBPROJECTS=frontend backend

all: run
run:
	${MAKE} backend & \
		${MAKE} frontend & \
		wait

${SUBPROJECTS}:
	cd $@; ${MAKE} run

.PHONY: ${SUBPROJECTS}

expo: /usr/local/bin/expo
/usr/local/bin/expo:
	npm install -g expo-cli

# Create React Native project on directory mobile
mobile: expo
	$< init mobile
	# Chose template blank
