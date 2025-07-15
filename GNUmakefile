include $(GNUSTEP_MAKEFILES)/common.make

VERSION = 0.2
APP_NAME = StepChat

# Source files - all the controller and utility classes
StepChat_OBJC_FILES = \
    main.m \
    JabberApp.m \
    AccountWindowController.m \
    AddContactWindowController.m \
    ChatLogMenuController.m \
    CustomPresenceWindowController.m \
    DiscoDebugController.m \
    HideMenuController.m \
    MessageWindowController.m \
    NSTextView+ClickableLinks.m \
    PasswordWindowController.m \
    PreferenceWindowController.m \
    PresenceLogController.m \
    PresenceMenuController.m \
    RosterController.m \
    SCAccountInfoManager.m \
    TRUserDefaults.m \
    XMLLog.m \
    XMLLogWindowController.m

# Critical: Specify MainMenu as main interface
StepChat_MAIN_MODEL_FILE = MainMenu.gorm

# Critical: List all GORM files as localized resources
StepChat_LOCALIZED_RESOURCE_FILES = \
    MainMenu.gorm \
    AccountBox.gorm \
    MessageWindow.gorm \
    PasswordBox.gorm \
    RosterWindow.gorm \
    InfoPlist.strings

# Critical: Include English in languages
StepChat_LANGUAGES = English

# Keep your existing compiler flags and add framework linking
ADDITIONAL_LDFLAGS += $(GUI_LIBS) $(FND_LIBS) $(OBJC_LIBS) $(SYSTEM_LIBS)
ADDITIONAL_OBJCFLAGS += -DGNUSTEP -fobjc-arc

# Link the required Étoilé frameworks
ADDITIONAL_OBJC_LIBS += -lXMPPKit -lEtoileFoundation -lEtoileXML

include $(GNUSTEP_MAKEFILES)/application.make
