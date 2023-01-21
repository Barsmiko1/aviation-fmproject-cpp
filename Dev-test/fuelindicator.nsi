!define PRODUCT_NAME "Fuel Indicator"
!define PRODUCT_VERSION "1.0"
!define PRODUCT_PUBLISHER "My Company"

Name "${PRODUCT_NAME} ${PRODUCT_VERSION}"
OutFile "FuelIndicator.exe"
InstallDir "$PROGRAMFILES\Fuel Indicator"

Section
    SetOutPath $INSTDIR
    File "fuel_indicator.exe"
    File "docker-compose.yml"
    File "Dockerfile"
    File "README.txt"
SectionEnd

UninstSection
    Delete "$PROGRAMFILES\Fuel Indicator\fuel_indicator.exe"
    Delete "$PROGRAMFILES\Fuel Indicator\docker-compose.yml"
    Delete "$PROGRAMFILES\Fuel Indicator\Dockerfile"
    Delete "$PROGRAMFILES\Fuel Indicator\README.txt"
    RMDir "$PROGRAMFILES\Fuel Indicator"
UninstSectionEnd
