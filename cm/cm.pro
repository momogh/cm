TEMPLATE = subdirs

SUBDIRS += \
    cm-ui \
    cm-lib \
    cm-tests


!build_pass:message(cm project dir: $${PWD})
	
