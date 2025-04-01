PRODUCT_VERSION_MAJOR = 15
PRODUCT_VERSION_MINOR = 2

# Increase OrionOS Version with each major release.
ORION_VERSION := Aquatine
ORION_BUILD_TYPE ?= Unofficial
ORION_MAINTAINER ?= Unknown

# Internal version
LINEAGE_VERSION := OrionOS-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)-$(ORION_VERSION)-$(LINEAGE_BUILD)-$(ORION_BUILD_TYPE)-$(ORION_BUILD_VARIANT)-$(shell date +%Y%m%d)


# Display version
LINEAGE_DISPLAY_VERSION := v$(ORION_VERSION)-$(shell date +%Y%m%d)

ORION_BUILD_INFO := $(LINEAGE_VERSION)

# OrionOS version properties
PRODUCT_SYSTEM_PROPERTIES += \
    ro.orion.build.version=$(LINEAGE_VERSION) \
    ro.orion.display.version=$(LINEAGE_DISPLAY_VERSION) \
    ro.orion.version=$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR) \
    ro.modversion=$(ORION_VERSION) \
    ro.orion.build.type=$(ORION_BUILD_TYPE) \
    ro.orion.maintainer=$(ORION_MAINTAINER) \
    ro.orion.maintainer_link=$(ORION_MAINTAINER_LINK)
    ro.orion.build.variant=$(ORION_BUILD_VARIANT)
