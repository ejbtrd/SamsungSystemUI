.class Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;
.super Ljava/lang/Object;
.source "QSMumButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;
.implements Lcom/android/systemui/util/DesktopManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/buttons/QSMumButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MumAndDexHelper"
.end annotation


# instance fields
.field private IsDexEnablingOrEnabled:Z

.field private final MUM_RUNE:Z

.field private final SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;

.field private mBaseUserAdapter:Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;

.field private mSettingCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field final synthetic this$0:Lcom/android/systemui/qs/buttons/QSMumButton;


# direct methods
.method public static synthetic $r8$lambda$HJ0PEg5n3QrklrfNkJcR2zMTvvo(Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->lambda$onDesktopModeStateChanged$2(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IRqFHXLETYCumHH6GZXJvdg6T8U(Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->lambda$updateDesktopModeState$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$M2mqDzyxALFeucI14m-sBQDB4gc(Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->lambda$new$1(Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NydxxeNdOjI_jMsXWf93Kw67rWg(Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->lambda$onUserInfoChanged$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$jpCvo8MdYepsTKA6yX_04HfT2eg(Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->lambda$new$0()V

    return-void
.end method

.method private constructor <init>(Lcom/android/systemui/qs/buttons/QSMumButton;)V
    .locals 3

    .line 106
    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->this$0:Lcom/android/systemui/qs/buttons/QSMumButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    invoke-static {}, Lcom/android/systemui/Operator;->isLDUBranding()Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->MUM_RUNE:Z

    const/4 p1, 0x0

    .line 108
    iput-boolean p1, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->IsDexEnablingOrEnabled:Z

    const/4 v1, 0x5

    new-array v1, v1, [Landroid/net/Uri;

    const-string/jumbo v2, "two_call_enabled"

    .line 110
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v1, p1

    const-string/jumbo p1, "two_sms_enabled"

    .line 111
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    aput-object p1, v1, v0

    const/4 p1, 0x2

    const-string/jumbo v0, "two_account"

    .line 112
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    aput-object v0, v1, p1

    const/4 p1, 0x3

    const-string/jumbo v0, "two_register"

    .line 113
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    aput-object v0, v1, p1

    const/4 p1, 0x4

    const-string/jumbo v0, "user_switcher_enabled"

    .line 114
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    aput-object v0, v1, p1

    iput-object v1, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;

    .line 116
    new-instance p1, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;)V

    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->mSettingCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/buttons/QSMumButton;Lcom/android/systemui/qs/buttons/QSMumButton$1;)V
    .locals 0

    .line 106
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;-><init>(Lcom/android/systemui/qs/buttons/QSMumButton;)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 0

    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->updateMumSwitchVisibility()V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/net/Uri;)V
    .locals 1

    const-string p1, "QSMumButton"

    const-string v0, "MumAndDexHelper receive SettingsHelper callback !"

    .line 117
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object p1, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->this$0:Lcom/android/systemui/qs/buttons/QSMumButton;

    new-instance v0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$onDesktopModeStateChanged$2(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 0

    .line 162
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->updateDesktopModeState(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V

    .line 163
    invoke-virtual {p0}, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->updateMumSwitchVisibility()V

    return-void
.end method

.method private synthetic lambda$onUserInfoChanged$4()V
    .locals 0

    .line 229
    invoke-virtual {p0}, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->updateMumSwitchVisibility()V

    return-void
.end method

.method private synthetic lambda$updateDesktopModeState$3()V
    .locals 0

    .line 174
    invoke-virtual {p0}, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->updateMumSwitchVisibility()V

    return-void
.end method

.method private updateDesktopModeState(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 170
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 171
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->IsDexEnablingOrEnabled:Z

    if-eq v0, p1, :cond_2

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MumAndDexHelper updateDesktopModeState() IsDexEnablingOrEnabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->IsDexEnablingOrEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ">>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QSMumButton"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iput-boolean p1, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->IsDexEnablingOrEnabled:Z

    .line 174
    iget-object p1, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->this$0:Lcom/android/systemui/qs/buttons/QSMumButton;

    new-instance v0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 148
    iget-boolean v0, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->MUM_RUNE:Z

    if-nez v0, :cond_0

    return-void

    .line 149
    :cond_0
    const-class v0, Lcom/android/systemui/util/DesktopManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/DesktopManager;->unregisterCallback(Lcom/android/systemui/util/DesktopManager$Callback;)V

    .line 150
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->mSettingCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    .line 151
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->this$0:Lcom/android/systemui/qs/buttons/QSMumButton;

    invoke-static {v0}, Lcom/android/systemui/qs/buttons/QSMumButton;->access$100(Lcom/android/systemui/qs/buttons/QSMumButton;)Lcom/android/systemui/statusbar/policy/UserInfoController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->this$0:Lcom/android/systemui/qs/buttons/QSMumButton;

    invoke-static {v0}, Lcom/android/systemui/qs/buttons/QSMumButton;->access$100(Lcom/android/systemui/qs/buttons/QSMumButton;)Lcom/android/systemui/statusbar/policy/UserInfoController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x0

    .line 154
    iput-object v0, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->mBaseUserAdapter:Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;

    return-void
.end method

.method public hasMultipleUsers()Z
    .locals 3

    .line 233
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_MANAGE_TWO_PHONE:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 234
    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->this$0:Lcom/android/systemui/qs/buttons/QSMumButton;

    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSMumButton;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->getSwitchableUserCount()I

    move-result p0

    if-le p0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->mBaseUserAdapter:Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->getUserCount()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->this$0:Lcom/android/systemui/qs/buttons/QSMumButton;

    .line 237
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "HasSeenMultiUser"

    invoke-static {p0, v0, v2}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method public init()V
    .locals 3

    .line 123
    const-class v0, Lcom/android/systemui/util/DesktopManager;

    iget-boolean v1, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->MUM_RUNE:Z

    if-nez v1, :cond_0

    return-void

    .line 124
    :cond_0
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {v1, p0}, Lcom/android/systemui/util/DesktopManager;->registerCallback(Lcom/android/systemui/util/DesktopManager$Callback;)V

    .line 125
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {v0}, Lcom/android/systemui/util/DesktopManager;->getSemDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->updateDesktopModeState(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V

    .line 126
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->mSettingCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iget-object v2, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 127
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->this$0:Lcom/android/systemui/qs/buttons/QSMumButton;

    invoke-static {v0}, Lcom/android/systemui/qs/buttons/QSMumButton;->access$100(Lcom/android/systemui/qs/buttons/QSMumButton;)Lcom/android/systemui/statusbar/policy/UserInfoController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->this$0:Lcom/android/systemui/qs/buttons/QSMumButton;

    invoke-static {v0}, Lcom/android/systemui/qs/buttons/QSMumButton;->access$100(Lcom/android/systemui/qs/buttons/QSMumButton;)Lcom/android/systemui/statusbar/policy/UserInfoController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 130
    :cond_1
    new-instance v0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper$1;

    const-class v1, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper$1;-><init>(Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    iput-object v0, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->mBaseUserAdapter:Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;

    return-void
.end method

.method public needToBeVisibleMUM()Z
    .locals 6

    .line 182
    const-class v0, Lcom/android/systemui/util/DesktopManager;

    iget-boolean v1, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->MUM_RUNE:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 184
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->this$0:Lcom/android/systemui/qs/buttons/QSMumButton;

    iget-object v1, v1, Lcom/android/systemui/qs/buttons/QSMumButton;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->hasMultipleUsers()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    if-eqz v1, :cond_3

    .line 186
    iget-boolean v4, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->IsDexEnablingOrEnabled:Z

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->this$0:Lcom/android/systemui/qs/buttons/QSMumButton;

    .line 187
    invoke-static {v4}, Lcom/android/systemui/qs/buttons/QSMumButton;->access$200(Lcom/android/systemui/qs/buttons/QSMumButton;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->this$0:Lcom/android/systemui/qs/buttons/QSMumButton;

    .line 188
    invoke-static {v4}, Lcom/android/systemui/qs/buttons/QSMumButton;->access$300(Lcom/android/systemui/qs/buttons/QSMumButton;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/systemui/util/DeviceState;->isDesktopMode(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 189
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {v4}, Lcom/android/systemui/util/DesktopManager;->isDesktopMode()Z

    move-result v4

    if-nez v4, :cond_3

    const-class v4, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 190
    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {v4}, Lcom/android/systemui/knox/KnoxStateMonitor;->isUsersEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->this$0:Lcom/android/systemui/qs/buttons/QSMumButton;

    .line 191
    invoke-static {v4}, Lcom/android/systemui/qs/buttons/QSMumButton;->access$300(Lcom/android/systemui/qs/buttons/QSMumButton;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->this$0:Lcom/android/systemui/qs/buttons/QSMumButton;

    .line 192
    invoke-static {v4}, Lcom/android/systemui/qs/buttons/QSMumButton;->access$400(Lcom/android/systemui/qs/buttons/QSMumButton;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->this$0:Lcom/android/systemui/qs/buttons/QSMumButton;

    .line 193
    invoke-static {v4}, Lcom/android/systemui/qs/buttons/QSMumButton;->access$200(Lcom/android/systemui/qs/buttons/QSMumButton;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/util/SettingsHelper;->isUserSwitcherSettingOn()Z

    move-result v4

    if-nez v4, :cond_2

    sget-boolean v4, Lcom/android/systemui/QpRune;->QUICK_MANAGE_TWO_PHONE:Z

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTablet()Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    move v2, v3

    .line 195
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MumAndDexHelper.needToBeVisible() result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", hasMultiUsers?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", DeviceState.isDesktopMode?"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->this$0:Lcom/android/systemui/qs/buttons/QSMumButton;

    .line 197
    invoke-static {v1}, Lcom/android/systemui/qs/buttons/QSMumButton;->access$300(Lcom/android/systemui/qs/buttons/QSMumButton;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/util/DeviceState;->isDesktopMode(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", DesktopManager.isDesktopMode?"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {v0}, Lcom/android/systemui/util/DesktopManager;->isDesktopMode()Z

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", IsDexEnablingOrEnabled:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->IsDexEnablingOrEnabled:Z

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mExpanded:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->this$0:Lcom/android/systemui/qs/buttons/QSMumButton;

    .line 200
    invoke-static {v0}, Lcom/android/systemui/qs/buttons/QSMumButton;->access$400(Lcom/android/systemui/qs/buttons/QSMumButton;)Z

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", QUICK_STYLE_MUM_TEST_TRIGGER:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_STYLE_MUM_TEST_TRIGGER:Z

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isUserSwitcherSettingOn:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->this$0:Lcom/android/systemui/qs/buttons/QSMumButton;

    .line 202
    invoke-static {p0}, Lcom/android/systemui/qs/buttons/QSMumButton;->access$200(Lcom/android/systemui/qs/buttons/QSMumButton;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isUserSwitcherSettingOn()Z

    move-result p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "QSMumButton"

    .line 195
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_4

    return v3

    :cond_4
    return v2
.end method

.method public onDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 2

    const-string v0, "QSMumButton"

    const-string v1, "MumAndDexHelper, onDesktopModeStateChanged()"

    .line 160
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    sget-object v0, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;Lcom/samsung/android/desktopmode/SemDesktopModeState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUserInfoChanged(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 2

    .line 217
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isEngOrUTBinary()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MumAndDexHelper, onUserInfoChanged(name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", userAccount:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "QSMumButton"

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p2, :cond_1

    .line 220
    iget-object p1, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->this$0:Lcom/android/systemui/qs/buttons/QSMumButton;

    .line 221
    invoke-static {p1}, Lcom/android/systemui/qs/buttons/QSMumButton;->access$300(Lcom/android/systemui/qs/buttons/QSMumButton;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/os/UserManager;->isGuestUser(I)Z

    move-result p1

    if-eqz p1, :cond_1

    instance-of p1, p2, Lcom/android/settingslib/drawable/UserIconDrawable;

    if-nez p1, :cond_1

    .line 223
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->this$0:Lcom/android/systemui/qs/buttons/QSMumButton;

    invoke-static {p2}, Lcom/android/systemui/qs/buttons/QSMumButton;->access$300(Lcom/android/systemui/qs/buttons/QSMumButton;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 224
    iget-object p1, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->this$0:Lcom/android/systemui/qs/buttons/QSMumButton;

    .line 225
    invoke-static {p1}, Lcom/android/systemui/qs/buttons/QSMumButton;->access$300(Lcom/android/systemui/qs/buttons/QSMumButton;)Landroid/content/Context;

    move-result-object p1

    const p3, 0x1010030

    invoke-static {p1, p3}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p1

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 224
    invoke-virtual {p2, p1, p3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 228
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->this$0:Lcom/android/systemui/qs/buttons/QSMumButton;

    invoke-static {p1}, Lcom/android/systemui/qs/buttons/QSMumButton;->access$500(Lcom/android/systemui/qs/buttons/QSMumButton;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 229
    iget-object p1, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->this$0:Lcom/android/systemui/qs/buttons/QSMumButton;

    new-instance p2, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateMumSwitchVisibility()V
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->this$0:Lcom/android/systemui/qs/buttons/QSMumButton;

    iget-object v0, v0, Lcom/android/systemui/qs/buttons/QSMumButton;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    if-eqz v0, :cond_1

    .line 211
    invoke-virtual {p0}, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->needToBeVisibleMUM()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method
