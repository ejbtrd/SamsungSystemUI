.class public Lcom/android/systemui/pluginlock/PluginLockManager;
.super Ljava/lang/Object;
.source "PluginLockManager.java"

# interfaces
.implements Lcom/android/systemui/pluginlock/listener/KeyguardListener$SPlugin;
.implements Lcom/android/systemui/pluginlock/listener/KeyguardListener$UserSwitch;
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/pluginlock/PluginLockManager$HandlerExecutor;
    }
.end annotation


# static fields
.field private static final DO_NOT_DISTURB_TASK:Ljava/lang/String; = "Dnd"

.field private static final FBE_PATH:Ljava/lang/String; = "/data/user_de/0/com.android.systemui/files/fresh_pack/"

.field private static final FBE_SUB_PATH:Ljava/lang/String; = "/data/user_de/0/com.android.systemui/files/fresh_pack_sub/"

.field private static final FLASH_LIGHT_TASK:Ljava/lang/String; = "Flashlight"

.field private static final KEY_ACTION:Ljava/lang/String; = "action"

.field private static final KEY_EXTRAS:Ljava/lang/String; = "extras"

.field private static final KEY_NOTIFICATION_TYPE:Ljava/lang/String; = "notification_type"

.field private static final KEY_NOTIFICATION_VISIBILITY:Ljava/lang/String; = "notification_visibility"

.field private static final KEY_SHORTCUT_VISIBILITY:Ljava/lang/String; = "shortcut_visibility"

.field private static final LOCKSTAR_FACEWIDGET_AREA:Ljava/lang/String; = "lockstar_facewidget_area"

.field private static final NOTIFICATION_ENABLED:Ljava/lang/String; = "lock_screen_show_notifications"

.field private static final NOTIFICATION_TYPE:Ljava/lang/String; = "lockscreen_minimizing_notification"

.field private static final PLUGIN_LOCK_SETTINGS:Ljava/lang/String; = "lockstar_enabled"

.field private static final PLUGIN_LOCK_SETTINGS_SUB:Ljava/lang/String; = "plugin_lock_sub_enabled"

.field private static final SETTINGS_EMERGENCY_MODE:Ljava/lang/String; = "emergency_mode"

.field private static final SETTINGS_SEM_MINIMAL_BATTERY_USE:Ljava/lang/String; = "minimal_battery_use"

.field private static final SETTINGS_SEM_ULTRA_POWERSAVING_MODE:Ljava/lang/String; = "ultra_powersaving_mode"

.field private static final SHORTCUT_ENABLED:Ljava/lang/String; = "lockscreen_show_shortcut"

.field public static final TAG:Ljava/lang/String; = "PluginLockManager"

.field private static final UPDATE_LOCKSTAR_DATA:Ljava/lang/String; = "update_lockstar_data"

.field private static final UPDATE_LOCKSTAR_DATA_ITEM:Ljava/lang/String; = "update_lockstar_data_item"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCoverState:Lcom/samsung/android/cover/CoverState;

.field private final mCr:Landroid/content/ContentResolver;

.field private mCurrentPluginValue:I

.field private final mDelegateApp:Lcom/android/systemui/pluginlock/PluginLockDelegateApp;

.field private final mDelegateSysUi:Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;

.field private final mHandlerExecutor:Lcom/android/systemui/pluginlock/PluginLockManager$HandlerExecutor;

.field private mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

.field private mIsDynamicEnabled:Z

.field private mIsMigrating:Z

.field private mIsSwitchingToSub:Z

.field private final mLockPluginMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/pluginlock/PluginLockInstanceState;",
            ">;"
        }
    .end annotation
.end field

.field private final mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

.field private mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

.field private final mPolicy:Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;

.field private mRemovedPackageName:Ljava/lang/String;

.field private mRescuePartyLevel:I

.field private mRootView:Landroid/view/ViewGroup;

.field private final mScreenList:[I

.field private mScreenType:I

.field private final mSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private mTaskDnd:Lcom/android/systemui/pluginlock/component/PluginLockShortcutDnd;

.field private mTaskFlashLight:Lcom/android/systemui/pluginlock/component/PluginLockShortcutFlashLight;

.field private final mUris:[Landroid/net/Uri;

.field private mUserId:I

.field private final mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

.field private mWallpaperUpdateCallback:Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;


# direct methods
.method public static synthetic $r8$lambda$8tfuPWO5jaU_ZhGLFPaesCnQshQ(Lcom/android/systemui/pluginlock/PluginLockManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->lambda$onUserSwitchComplete$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$CRRf2Y0P3nFqvvQcUX69RJk9zO4(Lcom/android/systemui/pluginlock/PluginLockManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->lambda$setPluginInstanceState$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$LFlYneQqX2mqNWRLBDTOvVxWRIY(Lcom/android/systemui/pluginlock/PluginLockManager;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/pluginlock/PluginLockManager;->lambda$onSemBackupStatusChanged$5(III)V

    return-void
.end method

.method public static synthetic $r8$lambda$UapixZBvOqJSUI05nxHNesdynS0(Lcom/android/systemui/pluginlock/PluginLockManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockManager;->lambda$onUserSwitchComplete$3(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$d1QyjRIzY1SWy6M3ju8lEtud1go(Lcom/android/systemui/pluginlock/PluginLockManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockManager;->lambda$handleEnableStateChanged$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$xK6DVf8MbEp2yy13IkOAuKKNjkk(Lcom/android/systemui/pluginlock/PluginLockManager;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockManager;->lambda$new$0(Landroid/net/Uri;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/pluginlock/PluginLockMediator;Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;Lcom/android/systemui/pluginlock/PluginLockDelegateApp;Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/pluginlock/PluginLockUtils;Landroid/content/Context;)V
    .locals 6

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [Landroid/net/Uri;

    const-string v1, "lockstar_enabled"

    .line 90
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "plugin_lock_sub_enabled"

    .line 91
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "emergency_mode"

    .line 92
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string/jumbo v1, "ultra_powersaving_mode"

    .line 93
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-string v1, "minimal_battery_use"

    .line 94
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v5, 0x4

    aput-object v1, v0, v5

    const-string v1, "lock_screen_show_notifications"

    .line 95
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v5, 0x5

    aput-object v1, v0, v5

    const-string v1, "lockscreen_minimizing_notification"

    .line 96
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v5, 0x6

    aput-object v1, v0, v5

    const-string v1, "lockscreen_show_shortcut"

    .line 97
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v5, 0x7

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mUris:[Landroid/net/Uri;

    .line 107
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mLockPluginMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    .line 120
    iput-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mRemovedPackageName:Ljava/lang/String;

    .line 121
    iput-boolean v2, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mIsSwitchingToSub:Z

    .line 123
    iput-boolean v2, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mIsMigrating:Z

    .line 124
    iput v2, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mCurrentPluginValue:I

    .line 125
    iput v2, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mScreenType:I

    .line 126
    iput v2, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mUserId:I

    .line 127
    iput v2, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mRescuePartyLevel:I

    .line 187
    new-instance v1, Lcom/android/systemui/pluginlock/PluginLockManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/pluginlock/PluginLockManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/pluginlock/PluginLockManager;)V

    iput-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    .line 135
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 136
    iput-object p2, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPolicy:Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;

    .line 137
    iput-object p4, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mDelegateSysUi:Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;

    .line 138
    iput-object p3, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mDelegateApp:Lcom/android/systemui/pluginlock/PluginLockDelegateApp;

    .line 139
    iput-object p5, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 140
    iput-object p7, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mContext:Landroid/content/Context;

    .line 141
    invoke-virtual {p7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mCr:Landroid/content/ContentResolver;

    .line 142
    new-instance p2, Lcom/android/systemui/pluginlock/PluginLockManager$HandlerExecutor;

    invoke-direct {p2}, Lcom/android/systemui/pluginlock/PluginLockManager$HandlerExecutor;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mHandlerExecutor:Lcom/android/systemui/pluginlock/PluginLockManager$HandlerExecutor;

    .line 144
    iput-object p6, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    const-string p2, "PluginLockManager"

    const-string p4, "##### PluginLockManager created #####"

    .line 145
    invoke-virtual {p6, p2, p4}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->getRescuePartyLevel()I

    move-result p4

    iput p4, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mRescuePartyLevel:I

    .line 149
    invoke-interface {p1, p0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->setKeyguardSPluginListener(Lcom/android/systemui/pluginlock/listener/KeyguardListener$SPlugin;)V

    .line 150
    invoke-interface {p1, p0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->setKeyguardUserSwitchListener(Lcom/android/systemui/pluginlock/listener/KeyguardListener$UserSwitch;)V

    .line 151
    invoke-interface {p1, p3}, Lcom/android/systemui/pluginlock/PluginLockMediator;->setKeyguardBasicListener(Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;)V

    .line 153
    sget-boolean p1, Lcom/android/systemui/LsRune;->PLUGIN_LOCK_MULTIPLE_ACTIVATION:Z

    if-eqz p1, :cond_0

    new-array p1, v4, [I

    .line 154
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mScreenList:[I

    aput v2, p1, v2

    aput v3, p1, v3

    goto :goto_0

    :cond_0
    new-array p1, v3, [I

    .line 158
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mScreenList:[I

    aput v2, p1, v2

    .line 162
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isOwnerProcess()Z

    move-result p1

    .line 163
    iget-object p3, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    if-eqz p3, :cond_1

    if-eqz p1, :cond_1

    .line 164
    invoke-virtual {p3, v1, v0}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 167
    :cond_1
    sget-boolean p1, Lcom/android/systemui/LsRune;->LOCKUI_SUB_DISPLAY_LOCK:Z

    if-nez p1, :cond_3

    sget-boolean p1, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    if-eqz p1, :cond_2

    goto :goto_1

    .line 178
    :cond_2
    sget-boolean p1, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    if-eqz p1, :cond_4

    .line 179
    new-instance p1, Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-direct {p1, p7}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    .line 180
    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "PluginLockManager, virtual display: mScreenType = PluginLock.SCREEN_SUB"

    .line 181
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iput v3, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mScreenType:I

    goto :goto_2

    .line 169
    :cond_3
    :goto_1
    :try_start_0
    invoke-static {p7}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p1

    .line 170
    invoke-virtual {p1}, Landroid/app/WallpaperManager;->getLidState()I

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "PluginLockManager: mScreenType = PluginLock.SCREEN_SUB"

    .line 172
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iput v3, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mScreenType:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 176
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    :cond_4
    :goto_2
    return-void
.end method

.method private disableByMode()V
    .locals 6

    .line 243
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mScreenList:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    .line 244
    invoke-direct {p0, v3}, Lcom/android/systemui/pluginlock/PluginLockManager;->isEnabledFromSettingHelper(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 245
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disableByMode, screen: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PluginLockManager"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    const/16 v5, 0x4e20

    invoke-virtual {v4, v3, v5}, Lcom/android/systemui/util/SettingsHelper;->setPluginLockValue(II)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private disableByUser()V
    .locals 6

    .line 252
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mScreenList:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    .line 253
    invoke-direct {p0, v3}, Lcom/android/systemui/pluginlock/PluginLockManager;->isEnabledFromSettingHelper(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 254
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disableByUser, screen: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PluginLockManager"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    const/16 v5, 0x7530

    invoke-virtual {v4, v3, v5}, Lcom/android/systemui/util/SettingsHelper;->setPluginLockValue(II)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private disableForcedIfNeed(I)Z
    .locals 4

    .line 1345
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/util/SettingsHelper;->getPluginLockValue(I)I

    move-result v0

    .line 1346
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPolicy:Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;

    invoke-virtual {v1, v0}, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->isEnable(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPolicy:Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;

    iget v3, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mCurrentPluginValue:I

    invoke-virtual {v1, v3}, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->isEnable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPolicy:Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;

    iget v3, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mCurrentPluginValue:I

    .line 1347
    invoke-virtual {v1, v3, v0}, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->isSameInstance(II)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    if-eqz v0, :cond_0

    .line 1348
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disableForcedIfNeed() disabled "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mCurrentPluginValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 1350
    invoke-direct {p0, p1, v2, v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->updatePluginLockMode(IZZ)V

    return v0

    :cond_0
    return v2
.end method

.method private getFbeFile(IZ)Ljava/io/File;
    .locals 4

    .line 1089
    new-instance p0, Ljava/io/File;

    if-nez p1, :cond_0

    const-string p1, "/data/user_de/0/com.android.systemui/files/fresh_pack/"

    goto :goto_0

    :cond_0
    const-string p1, "/data/user_de/0/com.android.systemui/files/fresh_pack_sub/"

    :goto_0
    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1090
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1091
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 1092
    array-length p1, p0

    if-eqz p1, :cond_3

    .line 1093
    array-length p1, p0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_3

    aget-object v1, p0, v0

    if-eqz v1, :cond_2

    if-eqz p2, :cond_1

    .line 1095
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "colors"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    if-nez p2, :cond_2

    .line 1097
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "fbe"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private getRescuePartyLevel()I
    .locals 4

    :try_start_0
    const-string/jumbo v0, "sys.rescue_level"

    const-string v1, "0"

    .line 1109
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1110
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    const-string v1, "PluginLockManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sys.rescue_level: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    .line 1113
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public static getScreenId(I)I
    .locals 0

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private handleEmergencyModeChanged()V
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PluginLockManager"

    const-string v1, "handleEmergencyModeChanged, enabled"

    .line 228
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->disableByMode()V

    :cond_0
    return-void
.end method

.method private handleEnableStateChanged(I)V
    .locals 4

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleEnableStateChanged screen:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    sget-boolean v0, Lcom/android/systemui/LsRune;->PLUGIN_LOCK_MULTIPLE_ACTIVATION:Z

    const/4 v2, 0x1

    if-nez v0, :cond_0

    if-ne p1, v2, :cond_0

    const-string p0, "handleEnableStateChanged: not supported, skip!"

    .line 208
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 212
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mIsMigrating:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    if-ne p1, v2, :cond_1

    const-string p1, "handleEnableStateChanged: migrating, skip!"

    .line 213
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iput-boolean v3, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mIsMigrating:Z

    return-void

    .line 218
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockManager;->disableForcedIfNeed(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 219
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/systemui/pluginlock/PluginLockManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/pluginlock/PluginLockManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/pluginlock/PluginLockManager;I)V

    .line 220
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 222
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockManager;->isEnabledFromSettingHelper(I)Z

    move-result v0

    invoke-direct {p0, p1, v0, v3}, Lcom/android/systemui/pluginlock/PluginLockManager;->updatePluginLockMode(IZZ)V

    :goto_0
    return-void
.end method

.method private handleMinimalBatteryModeChanged()V
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isUltraPowerSavingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PluginLockManager"

    const-string v1, "handleMinimalBatteryModeChanged, enabled"

    .line 235
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->disableByMode()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 238
    invoke-direct {p0, v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->setLatestPluginInstance(Z)V

    :goto_0
    return-void
.end method

.method private isCurrentOwner()Z
    .locals 0

    .line 1341
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isEnabledFromSettingHelper(I)Z
    .locals 3

    .line 1309
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/util/SettingsHelper;->getPluginLockValue(I)I

    move-result v0

    .line 1310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEnabledFromSettingHelper, screen:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", value:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "PluginLockManager"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPolicy:Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;

    invoke-virtual {p0, v0}, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->isEnable(I)Z

    move-result p0

    return p0
.end method

.method private isGoingToRescueParty()Z
    .locals 1

    .line 1316
    iget p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mRescuePartyLevel:I

    const/4 v0, 0x2

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isOwnerProcess()Z
    .locals 0

    .line 1337
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isPluginLockPackage(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "com.samsung.android.dynamiclock"

    .line 1370
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "com.samsung.android.mateagent"

    .line 1371
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private synthetic lambda$handleEnableStateChanged$1(I)V
    .locals 2

    .line 220
    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockManager;->isEnabledFromSettingHelper(I)Z

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->updatePluginLockMode(IZZ)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/net/Uri;)V
    .locals 2

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SettingHelper changed uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string/jumbo p0, "uri null"

    .line 190
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "lockstar_enabled"

    .line 193
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    .line 194
    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockManager;->handleEnableStateChanged(I)V

    goto :goto_0

    :cond_1
    const-string v0, "plugin_lock_sub_enabled"

    .line 195
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    .line 196
    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockManager;->handleEnableStateChanged(I)V

    goto :goto_0

    :cond_2
    const-string v0, "emergency_mode"

    .line 197
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 198
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->handleEmergencyModeChanged()V

    goto :goto_0

    :cond_3
    const-string v0, "minimal_battery_use"

    .line 199
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 200
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->handleMinimalBatteryModeChanged()V

    :cond_4
    :goto_0
    return-void
.end method

.method private synthetic lambda$onSemBackupStatusChanged$5(III)V
    .locals 3

    .line 1376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSemBackupStatusChanged which="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    .line 1380
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    if-eqz v1, :cond_0

    const/4 v2, 0x3

    if-ne p2, v2, :cond_0

    .line 1382
    invoke-interface {v1}, Lcom/android/systemui/pluginlock/PluginLockMediator;->getPluginLockWallpaper()Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1384
    invoke-virtual {v1, v0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->reset(Z)V

    .line 1389
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "which"

    .line 1390
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "status"

    .line 1391
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "key"

    .line 1392
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1393
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mDelegateApp:Lcom/android/systemui/pluginlock/PluginLockDelegateApp;

    if-eqz p0, :cond_1

    .line 1394
    invoke-virtual {p0, v0}, Lcom/android/systemui/pluginlock/PluginLockDelegateApp;->onSemBackupStatusChanged(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 1397
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$onUserSwitchComplete$2()V
    .locals 2

    const-string v0, "PluginLockManager"

    const-string v1, "onUserSwitchComplete for owner"

    .line 363
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 364
    invoke-direct {p0, v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->setLatestPluginInstance(Z)V

    .line 365
    iput-boolean v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mIsSwitchingToSub:Z

    return-void
.end method

.method private synthetic lambda$onUserSwitchComplete$3(I)V
    .locals 2

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUserSwitchComplete for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PluginLockManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 370
    iput-boolean p1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mIsSwitchingToSub:Z

    return-void
.end method

.method private synthetic lambda$setPluginInstanceState$4()V
    .locals 1

    const/4 v0, 0x0

    .line 603
    invoke-virtual {p0, v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->notifyWallpaperChanged(I)V

    return-void
.end method

.method private migration(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V
    .locals 6

    .line 275
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getDataVersion()I

    move-result v0

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[migration] for ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PluginLockManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[migration] - savedVersion: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", currVersion:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ge v0, v3, :cond_1

    .line 283
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->getPluginLockValue(I)I

    move-result v0

    .line 284
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/systemui/util/SettingsHelper;->getPluginLockValue(I)I

    move-result v1

    .line 286
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[migration] - mainValue: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", subValue:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    if-ne v1, v4, :cond_1

    .line 289
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPolicy:Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getAllowedNumber()I

    move-result v4

    invoke-virtual {v1, v4, v0}, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->isSameInstance(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 290
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPolicy:Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;

    invoke-virtual {v1, v0}, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->isEnable(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "[migration] - start!"

    .line 293
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPolicy:Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;

    invoke-virtual {v1, v0}, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->isEnable(I)Z

    move-result v1

    invoke-virtual {p1, v3, v1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->setStateData(IZ)V

    .line 295
    iput-boolean v3, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mIsMigrating:Z

    .line 296
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0, v3, v0}, Lcom/android/systemui/util/SettingsHelper;->setPluginLockValue(II)V

    goto :goto_0

    :cond_0
    const-string p0, "[migration] - not activated plugin"

    .line 299
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private notifyPluginLockModeChanged(Lcom/samsung/systemui/splugins/pluginlock/PluginLock;IZ)V
    .locals 1

    if-eqz p1, :cond_1

    .line 871
    invoke-interface {p1}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getBasicManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 873
    :try_start_0
    sget-boolean p0, Lcom/android/systemui/LsRune;->PLUGIN_LOCK_MULTIPLE_ACTIVATION:Z

    if-eqz p0, :cond_0

    .line 874
    invoke-interface {p1}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getBasicManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    move-result-object p0

    invoke-interface {p0, p2, p3}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;->onPluginLockModeChanged(IZ)V

    goto :goto_0

    .line 876
    :cond_0
    invoke-interface {p1}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getBasicManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    move-result-object p0

    invoke-interface {p0, p3}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;->onPluginLockModeChanged(Z)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 879
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "notifyPluginLockMode, "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/AbstractMethodError;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "PluginLockManager"

    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    invoke-interface {p1}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getBasicManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    move-result-object p0

    invoke-interface {p0, p3}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;->onPluginLockModeChanged(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private putPluginInstanceToMap(Ljava/lang/String;Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mLockPluginMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mLockPluginMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mLockPluginMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPolicy:Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;

    invoke-virtual {v0, p2}, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->setCategory(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    .line 382
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "putPluginInstanceToMap, size "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mLockPluginMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", packageName "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PluginLockManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private resetConfigs()V
    .locals 0

    .line 804
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->resetConfigs()V

    return-void
.end method

.method private setLatestPluginInstance(IZ)V
    .locals 10

    .line 823
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isCurrentOwner()Z

    move-result v0

    .line 824
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLatestPluginInstance map size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mLockPluginMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isCurrentOwner:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PluginLockManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    .line 832
    iget-object v3, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mLockPluginMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v4

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 833
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    invoke-virtual {v7}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 836
    sget-boolean v8, Lcom/android/systemui/LsRune;->PLUGIN_LOCK_MULTIPLE_ACTIVATION:Z

    if-eqz v8, :cond_2

    invoke-virtual {v7, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->getTimeStamps(I)Ljava/lang/Long;

    move-result-object v7

    goto :goto_1

    :cond_2
    invoke-virtual {v7}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->getTimeStamp()Ljava/lang/Long;

    move-result-object v7

    :goto_1
    if-eqz v7, :cond_1

    .line 837
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v8, v0, v8

    if-gez v8, :cond_1

    .line 838
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    move-object v5, v6

    goto :goto_0

    :cond_3
    if-eqz v5, :cond_5

    .line 845
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getAllowedNumber()I

    move-result p2

    .line 846
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/util/SettingsHelper;->getPluginLockValue(I)I

    move-result v0

    .line 847
    rem-int/lit8 v0, v0, 0xa

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    const/4 v1, 0x2

    .line 849
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setLatestPluginInstance() set value:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p2, v1

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/util/SettingsHelper;->setPluginLockValue(II)V

    goto :goto_2

    :cond_5
    if-eqz p2, :cond_6

    .line 853
    invoke-direct {p0, p1, v4}, Lcom/android/systemui/pluginlock/PluginLockManager;->setPluginInstance(ILcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    .line 854
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/util/SettingsHelper;->setPluginLockValue(II)V

    goto :goto_2

    .line 856
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mDelegateApp:Lcom/android/systemui/pluginlock/PluginLockDelegateApp;

    if-eqz p0, :cond_7

    .line 857
    invoke-virtual {p0, v4}, Lcom/android/systemui/pluginlock/PluginLockDelegateApp;->setBasicManager(Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;)V

    :cond_7
    :goto_2
    return-void
.end method

.method private setLatestPluginInstance(Z)V
    .locals 4

    .line 817
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mScreenList:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    .line 818
    invoke-direct {p0, v3, p1}, Lcom/android/systemui/pluginlock/PluginLockManager;->setLatestPluginInstance(IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setPluginInstance(ILcom/android/systemui/pluginlock/PluginLockInstanceState;)V
    .locals 1

    const/4 v0, 0x0

    .line 666
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->setPluginInstance(ILcom/android/systemui/pluginlock/PluginLockInstanceState;Z)V

    return-void
.end method

.method private setPluginInstance(ILcom/android/systemui/pluginlock/PluginLockInstanceState;Z)V
    .locals 5

    .line 670
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPluginInstance() screen:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PluginLockManager"

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p2, :cond_5

    const/4 p3, 0x0

    .line 672
    iput-object p3, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    .line 673
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    if-eqz v1, :cond_2

    .line 674
    sget-boolean v2, Lcom/android/systemui/LsRune;->PLUGIN_LOCK_MULTIPLE_ACTIVATION:Z

    if-eqz v2, :cond_0

    .line 675
    invoke-virtual {v1, p1, v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->setStateData(IZ)V

    goto :goto_0

    .line 677
    :cond_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->setTimeStamp(Z)V

    :goto_0
    if-eqz v2, :cond_1

    .line 679
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    invoke-virtual {v1, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->isEnabledOtherScreen(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 680
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->destroy()V

    .line 684
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {v1, v0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->updateWindowSecureState(Z)V

    .line 686
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mDelegateApp:Lcom/android/systemui/pluginlock/PluginLockDelegateApp;

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/android/systemui/LsRune;->PLUGIN_LOCK_MULTIPLE_ACTIVATION:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    if-eqz v0, :cond_3

    .line 687
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->isEnabledOtherScreen(I)Z

    move-result p1

    if-nez p1, :cond_4

    .line 688
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mDelegateApp:Lcom/android/systemui/pluginlock/PluginLockDelegateApp;

    invoke-virtual {p1, p3}, Lcom/android/systemui/pluginlock/PluginLockDelegateApp;->setBasicManager(Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;)V

    .line 691
    :cond_4
    iput-object p3, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    goto/16 :goto_4

    .line 694
    :cond_5
    iput-object p2, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 695
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getPluginLockInstance()Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    .line 697
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPluginInstance() mInstanceState: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_a

    .line 700
    iget-object p3, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPolicy:Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getAllowedNumber()I

    move-result v1

    invoke-virtual {p3, v1}, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->isDefaultInstance(I)Z

    move-result p3

    const/4 v1, 0x1

    if-eqz p3, :cond_7

    iget-object p3, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    invoke-virtual {p3, v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->hasEnabledPlugin(I)Z

    move-result p3

    if-nez p3, :cond_7

    iget-object p3, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 701
    invoke-virtual {p3, v1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->hasEnabledPlugin(I)Z

    move-result p3

    if-nez p3, :cond_7

    .line 702
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mScreenList:[I

    array-length p3, p1

    :goto_1
    if-ge v0, p3, :cond_9

    aget v3, p1, v0

    .line 703
    sget-boolean v4, Lcom/android/systemui/LsRune;->PLUGIN_LOCK_MULTIPLE_ACTIVATION:Z

    if-eqz v4, :cond_6

    .line 704
    iget-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    invoke-virtual {v4, v3, v1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->setStateData(IZ)V

    goto :goto_2

    .line 706
    :cond_6
    iget-object v3, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    invoke-virtual {v3, v1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->setTimeStamp(Z)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 710
    :cond_7
    sget-boolean p3, Lcom/android/systemui/LsRune;->PLUGIN_LOCK_MULTIPLE_ACTIVATION:Z

    if-eqz p3, :cond_8

    .line 711
    iget-object p3, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    invoke-virtual {p3, p1, v1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->setStateData(IZ)V

    goto :goto_3

    .line 713
    :cond_8
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    invoke-virtual {p1, v1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->setTimeStamp(Z)V

    .line 717
    :cond_9
    :goto_3
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setPluginInstance() set timestamp true for "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v2, p3}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    :cond_a
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mDelegateSysUi:Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;

    if-eqz p1, :cond_b

    .line 721
    iget-object p3, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    invoke-virtual {p1, p3}, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->setPluginLockInstanceState(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    .line 724
    :cond_b
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    if-eqz p1, :cond_c

    invoke-interface {p1}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getBasicManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 725
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    invoke-interface {p1}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getBasicManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    move-result-object p1

    iget-object p3, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mDelegateSysUi:Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;

    invoke-interface {p1, p3}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;->setCallback(Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager$Callback;)V

    .line 728
    :cond_c
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    iget-object p3, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    invoke-interface {p1, p3}, Lcom/android/systemui/pluginlock/PluginLockMediator;->setPluginLock(Lcom/samsung/systemui/splugins/pluginlock/PluginLock;)V

    .line 730
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mDelegateApp:Lcom/android/systemui/pluginlock/PluginLockDelegateApp;

    if-eqz p1, :cond_d

    iget-object p3, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    if-eqz p3, :cond_d

    .line 731
    invoke-interface {p3}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getBasicManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/android/systemui/pluginlock/PluginLockDelegateApp;->setBasicManager(Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;)V

    .line 734
    :cond_d
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p1}, Lcom/android/systemui/pluginlock/PluginLockMediator;->onBarStateChanged()V

    .line 736
    :goto_4
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0, p2}, Lcom/android/systemui/pluginlock/PluginLockMediator;->setInstanceState(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    return-void
.end method

.method private updateEnabledState(IZ)V
    .locals 5

    if-eqz p2, :cond_0

    .line 1357
    iget v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mCurrentPluginValue:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/util/SettingsHelper;->getPluginLockValue(I)I

    move-result v0

    .line 1358
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateEnabledState getPluginLockValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PluginLockManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x2710

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lt v0, v1, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v4

    :goto_1
    if-nez p2, :cond_2

    .line 1361
    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockManager;->isEnabledFromSettingHelper(I)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v3

    goto :goto_2

    :cond_2
    move p1, v4

    .line 1363
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateEnabledState() isDynamicMode = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isEnabledFromSetting = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    move v3, v4

    .line 1366
    :goto_3
    iput-boolean v3, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mIsDynamicEnabled:Z

    return-void
.end method

.method private updatePluginLockMode(IZZ)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    if-eqz v3, :cond_0

    .line 387
    iget v4, v0, Lcom/android/systemui/pluginlock/PluginLockManager;->mCurrentPluginValue:I

    goto :goto_0

    :cond_0
    iget-object v4, v0, Lcom/android/systemui/pluginlock/PluginLockManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v4, v1}, Lcom/android/systemui/util/SettingsHelper;->getPluginLockValue(I)I

    move-result v4

    .line 388
    :goto_0
    iget-boolean v5, v0, Lcom/android/systemui/pluginlock/PluginLockManager;->mIsDynamicEnabled:Z

    .line 390
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isCurrentOwner()Z

    move-result v6

    const/16 v7, 0x7530

    const-string v8, "PluginLockManager"

    if-nez v6, :cond_1

    if-eq v4, v7, :cond_1

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePluginLockMode ignore, screen: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pluginValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 395
    :cond_1
    invoke-direct {v0, v1, v3}, Lcom/android/systemui/pluginlock/PluginLockManager;->updateEnabledState(IZ)V

    .line 397
    iget-object v6, v0, Lcom/android/systemui/pluginlock/PluginLockManager;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updatePluginLockMode()\n screen:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "\n isOwnerProcess: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isOwnerProcess()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, "\n isCurrentOwner: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isCurrentOwner()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, "\n isForcedDisable:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, "\n isEnabled:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, "\n pluginValue:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "\n wasDynamicLockEnabled: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, "\n mIsDynamicEnabled: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, v0, Lcom/android/systemui/pluginlock/PluginLockManager;->mIsDynamicEnabled:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 397
    invoke-virtual {v6, v8, v9}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    if-eqz v2, :cond_2

    if-eqz v4, :cond_2

    .line 407
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isGoingToRescueParty()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 408
    iget-object v9, v0, Lcom/android/systemui/pluginlock/PluginLockManager;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    const-string/jumbo v10, "updatePluginLockMode, getting disabled by the rescue party"

    invoke-virtual {v9, v8, v10}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    iget-object v9, v0, Lcom/android/systemui/pluginlock/PluginLockManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v9, v1, v6}, Lcom/android/systemui/util/SettingsHelper;->setPluginLockValue(II)V

    :cond_2
    const-string v9, ", number:"

    const/4 v10, 0x1

    if-eqz v2, :cond_f

    .line 413
    iget-object v2, v0, Lcom/android/systemui/pluginlock/PluginLockManager;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {v2, v10}, Lcom/android/systemui/pluginlock/PluginLockMediator;->setLockscreenEnabled(Z)V

    .line 414
    iget-object v2, v0, Lcom/android/systemui/pluginlock/PluginLockManager;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {v2}, Lcom/android/systemui/pluginlock/PluginLockMediator;->registerUpdateMonitor()V

    .line 415
    iget-object v2, v0, Lcom/android/systemui/pluginlock/PluginLockManager;->mLockPluginMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 418
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 419
    iget-object v11, v0, Lcom/android/systemui/pluginlock/PluginLockManager;->mLockPluginMap:Ljava/util/HashMap;

    invoke-virtual {v11, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    if-nez v7, :cond_4

    goto :goto_2

    .line 423
    :cond_4
    iget-object v11, v0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPolicy:Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;

    invoke-virtual {v7}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getAllowedNumber()I

    move-result v12

    invoke-virtual {v11, v4, v12}, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->isSameInstance(II)Z

    move-result v11

    if-nez v11, :cond_3

    iget-object v11, v0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPolicy:Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;

    .line 424
    invoke-virtual {v7}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getAllowedNumber()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->isDefaultInstance(I)Z

    move-result v11

    if-nez v11, :cond_3

    iget-object v11, v0, Lcom/android/systemui/pluginlock/PluginLockManager;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    if-eqz v11, :cond_3

    .line 425
    invoke-virtual {v11, v1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->isEnabled(I)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 426
    iget-object v11, v0, Lcom/android/systemui/pluginlock/PluginLockManager;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "updatePluginLockMode, enable, set timestamp 0 for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    invoke-virtual {v7}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getAllowedNumber()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 426
    invoke-virtual {v11, v8, v12}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    sget-boolean v11, Lcom/android/systemui/LsRune;->PLUGIN_LOCK_MULTIPLE_ACTIVATION:Z

    if-eqz v11, :cond_5

    .line 429
    invoke-virtual {v7, v1, v6}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->setStateData(IZ)V

    goto :goto_1

    .line 431
    :cond_5
    invoke-virtual {v7, v6}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->setTimeStamp(Z)V

    goto :goto_1

    .line 436
    :cond_6
    :goto_2
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 437
    iget-object v6, v0, Lcom/android/systemui/pluginlock/PluginLockManager;->mLockPluginMap:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    if-nez v6, :cond_8

    goto/16 :goto_b

    .line 441
    :cond_8
    iget-object v7, v0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPolicy:Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;

    invoke-virtual {v6}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getAllowedNumber()I

    move-result v11

    invoke-virtual {v7, v4, v11}, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->isSameInstance(II)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 442
    iget-object v2, v0, Lcom/android/systemui/pluginlock/PluginLockManager;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updatePluginLockMode, enable, screen: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", mScreenType: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v0, Lcom/android/systemui/pluginlock/PluginLockManager;->mScreenType:I

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", key:"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    invoke-virtual {v6}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getPluginLockInstance()Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    move-result-object v2

    .line 447
    sget-boolean v3, Lcom/android/systemui/LsRune;->PLUGIN_LOCK_MULTIPLE_ACTIVATION:Z

    if-eqz v3, :cond_b

    iget v3, v0, Lcom/android/systemui/pluginlock/PluginLockManager;->mScreenType:I

    if-ne v1, v3, :cond_9

    goto :goto_3

    .line 458
    :cond_9
    invoke-virtual {v6, v1, v10}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->setStateData(IZ)V

    .line 462
    iget-object v3, v0, Lcom/android/systemui/pluginlock/PluginLockManager;->mDelegateApp:Lcom/android/systemui/pluginlock/PluginLockDelegateApp;

    if-eqz v3, :cond_a

    if-eqz v2, :cond_a

    .line 463
    invoke-interface {v2}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getBasicManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/systemui/pluginlock/PluginLockDelegateApp;->setPanelView(Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;)V

    :cond_a
    if-eqz v2, :cond_e

    .line 468
    invoke-interface {v2}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getBasicManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 469
    invoke-interface {v2}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getBasicManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    move-result-object v3

    iget-object v5, v0, Lcom/android/systemui/pluginlock/PluginLockManager;->mDelegateSysUi:Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;

    invoke-interface {v3, v5}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;->setCallback(Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager$Callback;)V

    goto :goto_4

    .line 448
    :cond_b
    :goto_3
    invoke-direct {v0, v1, v6}, Lcom/android/systemui/pluginlock/PluginLockManager;->setPluginInstance(ILcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    .line 450
    iget-boolean v3, v0, Lcom/android/systemui/pluginlock/PluginLockManager;->mIsDynamicEnabled:Z

    if-nez v3, :cond_c

    if-eqz v5, :cond_d

    .line 451
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->resetDynamicLock()V

    .line 454
    :cond_d
    iget-object v3, v0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPolicy:Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;

    invoke-virtual {v6}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getAllowedNumber()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->isDualDisplayInstance(I)Z

    move-result v3

    .line 455
    invoke-static {v3}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->setDualDisplayPlugin(Z)V

    .line 473
    :cond_e
    :goto_4
    invoke-direct {v0, v2, v1, v10}, Lcom/android/systemui/pluginlock/PluginLockManager;->notifyPluginLockModeChanged(Lcom/samsung/systemui/splugins/pluginlock/PluginLock;IZ)V

    goto/16 :goto_b

    :cond_f
    if-eq v4, v7, :cond_11

    .line 478
    sget-boolean v2, Lcom/android/systemui/LsRune;->PLUGIN_LOCK_MULTIPLE_ACTIVATION:Z

    if-eqz v2, :cond_10

    iget-object v2, v0, Lcom/android/systemui/pluginlock/PluginLockManager;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    if-eqz v2, :cond_10

    .line 480
    invoke-virtual {v2, v1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->isEnabledOtherScreen(I)Z

    move-result v2

    if-nez v2, :cond_11

    .line 481
    :cond_10
    iget-object v2, v0, Lcom/android/systemui/pluginlock/PluginLockManager;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {v2}, Lcom/android/systemui/pluginlock/PluginLockMediator;->unregisterUpdateMonitor()V

    .line 483
    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->resetConfigs()V

    if-eqz v5, :cond_14

    .line 485
    iget-boolean v2, v0, Lcom/android/systemui/pluginlock/PluginLockManager;->mIsDynamicEnabled:Z

    if-nez v2, :cond_14

    .line 486
    iget-object v2, v0, Lcom/android/systemui/pluginlock/PluginLockManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v2

    if-nez v2, :cond_13

    iget-object v2, v0, Lcom/android/systemui/pluginlock/PluginLockManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 487
    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isUltraPowerSavingMode()Z

    move-result v2

    if-nez v2, :cond_13

    iget-boolean v2, v0, Lcom/android/systemui/pluginlock/PluginLockManager;->mIsSwitchingToSub:Z

    if-eqz v2, :cond_12

    goto :goto_5

    :cond_12
    move v2, v6

    goto :goto_6

    :cond_13
    :goto_5
    move v2, v10

    .line 488
    :goto_6
    iget-object v5, v0, Lcom/android/systemui/pluginlock/PluginLockManager;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {v5, v2}, Lcom/android/systemui/pluginlock/PluginLockMediator;->resetDynamicLockData(Z)V

    .line 490
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->resetDynamicLock()V

    .line 493
    invoke-static {v6}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->setDualDisplayPlugin(Z)V

    .line 496
    iget-object v2, v0, Lcom/android/systemui/pluginlock/PluginLockManager;->mLockPluginMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v5, v6

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 497
    iget-object v12, v0, Lcom/android/systemui/pluginlock/PluginLockManager;->mLockPluginMap:Ljava/util/HashMap;

    invoke-virtual {v12, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    if-nez v12, :cond_15

    return-void

    :cond_15
    const/16 v13, 0x4e20

    if-eqz v4, :cond_16

    if-eq v4, v13, :cond_16

    if-eq v4, v7, :cond_16

    .line 501
    iget-object v14, v0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPolicy:Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;

    .line 504
    invoke-virtual {v12}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getAllowedNumber()I

    move-result v15

    invoke-virtual {v14, v4, v15}, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->isSameInstance(II)Z

    move-result v14

    if-eqz v14, :cond_1d

    .line 506
    :cond_16
    iget-object v14, v0, Lcom/android/systemui/pluginlock/PluginLockManager;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updatePluginLockMode, disable, key:"

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    invoke-virtual {v12}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getAllowedNumber()I

    move-result v10

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 506
    invoke-virtual {v14, v8, v10}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    invoke-virtual {v12}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getPluginLockInstance()Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    move-result-object v10

    invoke-direct {v0, v10, v1, v6}, Lcom/android/systemui/pluginlock/PluginLockManager;->notifyPluginLockModeChanged(Lcom/samsung/systemui/splugins/pluginlock/PluginLock;IZ)V

    if-eq v4, v13, :cond_1c

    if-ne v4, v7, :cond_17

    goto :goto_9

    :cond_17
    const-string/jumbo v10, "updatePluginLockMode, disable, set timestamp 0 for "

    if-nez v4, :cond_1a

    .line 516
    invoke-virtual {v12}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getPluginLockTimeStamp()J

    move-result-wide v13

    const-wide/16 v16, 0x0

    cmp-long v11, v13, v16

    if-lez v11, :cond_18

    .line 517
    iget-object v11, v0, Lcom/android/systemui/pluginlock/PluginLockManager;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    invoke-virtual {v12}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getAllowedNumber()I

    move-result v10

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 517
    invoke-virtual {v11, v8, v10}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    :cond_18
    sget-boolean v10, Lcom/android/systemui/LsRune;->PLUGIN_LOCK_MULTIPLE_ACTIVATION:Z

    if-eqz v10, :cond_19

    .line 521
    invoke-virtual {v12, v1, v6}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->setStateData(IZ)V

    goto :goto_a

    .line 523
    :cond_19
    invoke-virtual {v12, v6}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->setTimeStamp(Z)V

    goto :goto_a

    :cond_1a
    if-nez v3, :cond_1d

    .line 527
    iget-object v11, v0, Lcom/android/systemui/pluginlock/PluginLockManager;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    invoke-virtual {v12}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getAllowedNumber()I

    move-result v10

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 527
    invoke-virtual {v11, v8, v10}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    sget-boolean v10, Lcom/android/systemui/LsRune;->PLUGIN_LOCK_MULTIPLE_ACTIVATION:Z

    if-eqz v10, :cond_1b

    .line 530
    invoke-virtual {v12, v1, v6}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->setStateData(IZ)V

    goto :goto_8

    .line 532
    :cond_1b
    invoke-virtual {v12, v6}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->setTimeStamp(Z)V

    .line 534
    :goto_8
    invoke-direct {v0, v1, v6}, Lcom/android/systemui/pluginlock/PluginLockManager;->setLatestPluginInstance(IZ)V

    goto :goto_a

    :cond_1c
    :goto_9
    const/4 v5, 0x1

    :cond_1d
    :goto_a
    const/4 v10, 0x1

    goto/16 :goto_7

    :cond_1e
    if-eqz v5, :cond_1f

    .line 542
    iget-object v1, v0, Lcom/android/systemui/pluginlock/PluginLockManager;->mDelegateApp:Lcom/android/systemui/pluginlock/PluginLockDelegateApp;

    if-eqz v1, :cond_1f

    const/4 v2, 0x0

    .line 543
    invoke-virtual {v1, v2}, Lcom/android/systemui/pluginlock/PluginLockDelegateApp;->setBasicManager(Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;)V

    .line 548
    :cond_1f
    :goto_b
    iput v4, v0, Lcom/android/systemui/pluginlock/PluginLockManager;->mCurrentPluginValue:I

    .line 549
    iget-object v0, v0, Lcom/android/systemui/pluginlock/PluginLockManager;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    const-string/jumbo v1, "updatePluginLockMode done"

    invoke-virtual {v0, v8, v1}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/io/FileDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p1, "PluginLockManager"

    const-string p2, "\n\nPluginLockManager event:\n"

    .line 1438
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "------ Legacy --------------------------------------------------------------\n"

    .line 1439
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    invoke-virtual {p3}, Lcom/android/systemui/pluginlock/PluginLockUtils;->getDumpLegacy()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "------ New -----------------------------------------------------------------\n"

    .line 1441
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockUtils;->getDump()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "----------------------------------------------------------------------------\n"

    .line 1443
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public fillWallpaperData(IIILjava/lang/String;)V
    .locals 7

    .line 973
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    if-eqz v0, :cond_0

    .line 974
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fillWallpaperData screen:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "PluginLockManager"

    invoke-static {v2, v0, v1}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 975
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {v0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->getPluginLockWallpaper()Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 977
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mContext:Landroid/content/Context;

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->fillData(Landroid/content/Context;IIILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getBitmapFromPath(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 1255
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lcom/android/systemui/pluginlock/utils/BitmapUtils;->getBitmapFromPath(Landroid/content/Context;Ljava/lang/String;ZZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getBitmapFromUri(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 1

    .line 1259
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lcom/android/systemui/pluginlock/utils/BitmapUtils;->getBitmapFromUri(Landroid/content/Context;Landroid/net/Uri;ZZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getDynamicLockData()Ljava/lang/String;
    .locals 0

    .line 813
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->getDynamicLockData()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFbeSemWallpaperColors()Landroid/app/SemWallpaperColors;
    .locals 1

    .line 1019
    iget v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mScreenType:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->getFbeSemWallpaperColors(I)Landroid/app/SemWallpaperColors;

    move-result-object p0

    return-object p0
.end method

.method public getFbeSemWallpaperColors(I)Landroid/app/SemWallpaperColors;
    .locals 3

    const/4 v0, 0x1

    .line 1023
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->getFbeFile(IZ)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 1025
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1026
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    .line 1029
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1031
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_0
    if-eqz v0, :cond_1

    .line 1035
    :try_start_1
    new-instance p0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {p0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1036
    :try_start_2
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_0

    .line 1038
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1039
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1041
    :cond_0
    :try_start_3
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catchall_0
    move-exception v1

    .line 1035
    :try_start_4
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    :try_start_5
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception p0

    .line 1042
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 1046
    :goto_3
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_4

    :catch_2
    move-exception p0

    .line 1048
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 1053
    :cond_1
    :goto_4
    :try_start_7
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1054
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1055
    invoke-static {p0}, Landroid/app/SemWallpaperColors;->fromXml(Ljava/lang/String;)Landroid/app/SemWallpaperColors;

    move-result-object p0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    return-object p0

    :catch_3
    move-exception p0

    .line 1058
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1061
    :cond_2
    invoke-static {}, Landroid/app/SemWallpaperColors;->getBlankWallpaperColors()Landroid/app/SemWallpaperColors;

    move-result-object p0

    return-object p0
.end method

.method public getFbeWallpaper()Landroid/graphics/Bitmap;
    .locals 1

    .line 1239
    iget v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mScreenType:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->getFbeWallpaper(I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getFbeWallpaper(I)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    .line 1243
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->getFbeFile(IZ)Ljava/io/File;

    move-result-object v0

    const-string v1, "PluginLockManager"

    if-eqz v0, :cond_0

    .line 1245
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFbeWallpaper screen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", path: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1247
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockManager;->getBitmapFromPath(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "getFbeWallpaper null"

    .line 1250
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getFbeWallpaperPath()Ljava/lang/String;
    .locals 1

    .line 1007
    iget v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mScreenType:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->getFbeWallpaperPath(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFbeWallpaperPath(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1011
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->getFbeFile(IZ)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1013
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public getHandlerExecutor()Lcom/android/systemui/pluginlock/PluginLockManager$HandlerExecutor;
    .locals 0

    .line 1119
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mHandlerExecutor:Lcom/android/systemui/pluginlock/PluginLockManager$HandlerExecutor;

    return-object p0
.end method

.method public getHomeWallpaperBitmap(I)Landroid/graphics/Bitmap;
    .locals 0

    .line 1073
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->getPluginLockHomeWallpaper()Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1075
    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->getWallpaperBitmap(I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLockStarItemLocationInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1403
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediator;->getLockStarItemLocationInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPluginLock()Lcom/samsung/systemui/splugins/pluginlock/PluginLock;
    .locals 0

    .line 662
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    return-object p0
.end method

.method public getShortcutTaskState(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "Dnd"

    .line 932
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 933
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mTaskDnd:Lcom/android/systemui/pluginlock/component/PluginLockShortcutDnd;

    if-nez v0, :cond_0

    .line 934
    new-instance v0, Lcom/android/systemui/pluginlock/component/PluginLockShortcutDnd;

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/systemui/pluginlock/component/PluginLockShortcutDnd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mTaskDnd:Lcom/android/systemui/pluginlock/component/PluginLockShortcutDnd;

    .line 936
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mTaskDnd:Lcom/android/systemui/pluginlock/component/PluginLockShortcutDnd;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockShortcutDnd;->isEnabled()Z

    move-result p0

    goto :goto_0

    :cond_1
    const-string v0, "Flashlight"

    .line 938
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 939
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mTaskFlashLight:Lcom/android/systemui/pluginlock/component/PluginLockShortcutFlashLight;

    if-nez v0, :cond_2

    .line 940
    new-instance v0, Lcom/android/systemui/pluginlock/component/PluginLockShortcutFlashLight;

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/systemui/pluginlock/component/PluginLockShortcutFlashLight;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mTaskFlashLight:Lcom/android/systemui/pluginlock/component/PluginLockShortcutFlashLight;

    .line 942
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mTaskFlashLight:Lcom/android/systemui/pluginlock/component/PluginLockShortcutFlashLight;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockShortcutFlashLight;->isEnabled()Z

    move-result p0

    goto :goto_0

    :cond_3
    move p0, v1

    .line 944
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getShortcutTaskState [taskName] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",[isEnable] "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "PluginLockManager"

    invoke-static {v1, p1, v0}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p0
.end method

.method public getSubFbeWallpaperType()I
    .locals 3

    .line 1218
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isGoingToRescueParty()Z

    move-result v0

    const/4 v1, -0x2

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 1222
    invoke-direct {p0, v2, v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->getFbeFile(IZ)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 1223
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1224
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v2

    if-eqz p0, :cond_3

    const-string/jumbo v0, "video"

    .line 1226
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p0, 0x17

    return p0

    :cond_1
    const-string v0, "gif"

    .line 1228
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 p0, 0x16

    return p0

    :cond_2
    const-string v0, "image"

    .line 1230
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/16 p0, 0x15

    return p0

    :cond_3
    return v1
.end method

.method public getWallpaperBitmap()Landroid/graphics/Bitmap;
    .locals 0

    .line 1065
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->getPluginLockWallpaper()Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1067
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getWallpaperBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWallpaperPath()Ljava/lang/String;
    .locals 0

    .line 991
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->getPluginLockWallpaper()Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 993
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getWallpaperPath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWallpaperType()I
    .locals 0

    .line 983
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->getPluginLockWallpaper()Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 985
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getWallpaperType()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getWallpaperUpdateStyle()I
    .locals 0

    .line 1081
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->getPluginLockWallpaper()Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1083
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getUpdateStyle()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getWallpaperUri()Landroid/net/Uri;
    .locals 0

    .line 999
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->getPluginLockWallpaper()Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1001
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getWallpaperUri()Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isCustomPackApplied()Z
    .locals 1

    .line 1282
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {v0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->getPluginLockWallpaper()Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    move-result-object v0

    .line 1283
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isDynamicLockEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isCustomPack()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDynamicLockEnabled()Z
    .locals 1

    .line 1263
    iget-boolean v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mIsDynamicEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isGoingToRescueParty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDynamicWallpaperEnabled()Z
    .locals 1

    .line 1267
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {v0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->getPluginLockWallpaper()Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    move-result-object v0

    .line 1268
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isDynamicLockEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isDynamicWallpaper()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDynamicWallpaperEnabled(I)Z
    .locals 1

    .line 1272
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {v0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->getPluginLockWallpaper()Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    move-result-object v0

    .line 1273
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isDynamicLockEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isDynamicWallpaper(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFbeAvailable()Z
    .locals 1

    .line 1320
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isFbeRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isFbeWallpaperAvailable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFbeAvailable(I)Z
    .locals 1

    .line 1324
    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockManager;->isFbeRequired(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockManager;->isFbeWallpaperAvailable(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFbeRequired()Z
    .locals 1

    .line 1328
    iget v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mScreenType:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isFbeRequired(I)Z

    move-result p0

    return p0
.end method

.method public isFbeRequired(I)Z
    .locals 1

    .line 1332
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/util/SettingsHelper;->getPluginLockValue(I)I

    move-result v0

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 1333
    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper;->getPluginLockValue(I)I

    move-result p0

    const/16 p1, 0x7530

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isFbeWallpaperAvailable()Z
    .locals 1

    .line 1194
    iget v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mScreenType:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isFbeWallpaperAvailable(I)Z

    move-result p0

    return p0
.end method

.method public isFbeWallpaperAvailable(I)Z
    .locals 5

    const/4 v0, 0x0

    .line 1198
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->getFbeFile(IZ)Ljava/io/File;

    move-result-object p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 1199
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 1200
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isFbeWallpaperAvailable "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const-string p1, "null"

    :goto_1
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "PluginLockManager"

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_2

    .line 1201
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isGoingToRescueParty()Z

    move-result p0

    if-nez p0, :cond_2

    move v0, v1

    :cond_2
    return v0
.end method

.method public isFbeWallpaperVideo()Z
    .locals 1

    .line 1205
    iget v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mScreenType:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isFbeWallpaperVideo(I)Z

    move-result p0

    return p0
.end method

.method public isFbeWallpaperVideo(I)Z
    .locals 3

    const/4 v0, 0x0

    .line 1209
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->getFbeFile(IZ)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1210
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1211
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aget-object p1, p1, v1

    if-eqz p1, :cond_0

    const-string/jumbo v2, "video"

    .line 1212
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isGoingToRescueParty()Z

    move-result p0

    if-nez p0, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public isMultiPackApplied()Z
    .locals 1

    .line 1277
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {v0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->getPluginLockWallpaper()Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    move-result-object v0

    .line 1278
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isDynamicLockEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isMultiPack()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isServiceWallpaperApplied()Z
    .locals 1

    .line 1287
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {v0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->getPluginLockWallpaper()Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    move-result-object v0

    .line 1288
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isDynamicLockEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isServiceWallpaper()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isVideoWallpaperEnabled()Z
    .locals 1

    .line 1292
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {v0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->getPluginLockWallpaper()Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    move-result-object v0

    .line 1293
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isDynamicLockEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isVideoWallpaper()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isWallpaperSrcBitmap()Z
    .locals 0

    .line 1301
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->getWallpaperBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isWallpaperSrcPath()Z
    .locals 0

    .line 1297
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->getWallpaperPath()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isWallpaperSrcUri()Z
    .locals 0

    .line 1305
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->getWallpaperUri()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public notifyWallpaperChanged(I)V
    .locals 7

    .line 886
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isDynamicLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 887
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    iget-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/android/systemui/pluginlock/PluginLockUtils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v3

    .line 889
    iget-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyWallpaperChanged(), enabled:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", desktopMode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", mIsSwitchingToSub: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mIsSwitchingToSub:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", screen:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "PluginLockManager"

    invoke-virtual {v4, v6, v5}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    iget-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {v4}, Lcom/android/systemui/pluginlock/PluginLockMediator;->getPluginLockWallpaper()Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    move-result-object v4

    if-eqz v4, :cond_4

    if-eqz v0, :cond_4

    if-nez v3, :cond_4

    .line 893
    iget-boolean v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mIsSwitchingToSub:Z

    if-nez v0, :cond_4

    .line 895
    invoke-virtual {v4}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isStickyRecoverType()Z

    move-result v0

    if-nez v0, :cond_3

    .line 897
    sget-boolean v0, Lcom/android/systemui/LsRune;->LOCKUI_SUB_DISPLAY_LOCK:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 899
    invoke-virtual {v4, v1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->setWholeRecoverRequired(Z)V

    const/4 v0, -0x1

    .line 900
    invoke-virtual {v4, v0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->setRecoverRequestedScreen(I)V

    goto :goto_1

    .line 902
    :cond_1
    invoke-virtual {v4, v2}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->setWholeRecoverRequired(Z)V

    .line 903
    invoke-virtual {v4, p1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->setRecoverRequestedScreen(I)V

    .line 908
    :cond_2
    :goto_1
    invoke-virtual {v4}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->recover()V

    .line 911
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mDelegateApp:Lcom/android/systemui/pluginlock/PluginLockDelegateApp;

    if-eqz v0, :cond_4

    .line 912
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {v0, v1}, Lcom/android/systemui/pluginlock/PluginLockMediator;->recoverItem(I)V

    .line 914
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    const-string v1, "onLockWallpaperChanged() called"

    invoke-virtual {v0, v6, v1}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mDelegateApp:Lcom/android/systemui/pluginlock/PluginLockDelegateApp;

    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/PluginLockDelegateApp;->onWallpaperChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 917
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    const-string v0, "onLockWallpaperChanged() exception catch"

    invoke-virtual {p0, v6, v0}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 922
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mWallpaperUpdateCallback:Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;

    if-eqz p0, :cond_4

    .line 923
    invoke-interface {p0, v2}, Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;->onWallpaperUpdate(Z)V

    :cond_4
    :goto_2
    return-void
.end method

.method public onCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V
    .locals 2

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCoverStateChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->isCoverUiWithWallpaper(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 340
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eq v0, p1, :cond_1

    .line 341
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 342
    iget-boolean p1, p1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 343
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->onFolderStateChanged(Z)V

    :cond_1
    return-void
.end method

.method public onFolderStateChanged(Z)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    :cond_0
    move v2, v1

    goto :goto_0

    .line 1124
    :cond_1
    sget-boolean v2, Lcom/android/systemui/LsRune;->LOCKUI_SUB_DISPLAY_LOCK:Z

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    if-eqz v2, :cond_0

    :cond_2
    move v2, v0

    .line 1125
    :goto_0
    iput v2, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mScreenType:I

    .line 1127
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PluginLock:onFolderStateChanged, opened: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mScreenType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mScreenType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PluginLockManager"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    sget-boolean v2, Lcom/android/systemui/LsRune;->PLUGIN_LOCK_MULTIPLE_ACTIVATION:Z

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    .line 1132
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mLockPluginMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 1133
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1134
    iget-object v6, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mLockPluginMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    if-eqz v5, :cond_3

    .line 1137
    iget v6, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mScreenType:I

    invoke-virtual {v5, v6}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    if-eq v5, v6, :cond_3

    iget v6, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mScreenType:I

    invoke-virtual {v5, v6}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->isRecentInstance(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1138
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PluginLock:onFolderStateChanged, newState found: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    move-object v5, v4

    .line 1147
    :goto_1
    sget-boolean v2, Lcom/android/systemui/LsRune;->PLUGIN_LOCK_MULTIPLE_ACTIVATION:Z

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isDynamicLockEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1149
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    if-eqz v2, :cond_5

    .line 1150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PluginLock:onFolderStateChanged, old: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    invoke-virtual {v6}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {v2, p1, v1}, Lcom/android/systemui/pluginlock/PluginLockMediator;->onFolderStateChanged(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v2

    .line 1154
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1161
    :cond_5
    :goto_2
    iget v2, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mScreenType:I

    invoke-static {v2}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->setScreenTypeChanged(I)V

    .line 1162
    iget v2, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mScreenType:I

    invoke-static {v2}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->setScreenTypeChanged(I)V

    .line 1163
    iget v2, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mScreenType:I

    invoke-static {v2}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->setScreenTypeChanged(I)V

    .line 1166
    sget-boolean v2, Lcom/android/systemui/LsRune;->PLUGIN_LOCK_MULTIPLE_ACTIVATION:Z

    if-eqz v2, :cond_8

    .line 1167
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PluginLock:onFolderStateChanged, will be switched, newState: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_6

    const-string v2, "PluginLock:onFolderStateChanged, changed to new state"

    .line 1169
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    iget v2, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mScreenType:I

    invoke-direct {p0, v2, v5, v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->setPluginInstance(ILcom/android/systemui/pluginlock/PluginLockInstanceState;Z)V

    goto :goto_3

    .line 1171
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    if-eqz v2, :cond_7

    iget v5, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mScreenType:I

    invoke-virtual {v2, v5}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->isRecentInstance(I)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "PluginLock:onFolderStateChanged, instance reset"

    .line 1172
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    iget v2, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mScreenType:I

    invoke-direct {p0, v2, v4}, Lcom/android/systemui/pluginlock/PluginLockManager;->setPluginInstance(ILcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    goto :goto_3

    :cond_7
    const-string v2, "PluginLock:onFolderStateChanged, instance maintained"

    .line 1175
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    :goto_3
    iget v2, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mScreenType:I

    invoke-direct {p0, v2, v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->updateEnabledState(IZ)V

    .line 1181
    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isDynamicLockEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1183
    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    if-eqz v1, :cond_9

    .line 1184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFolderStateChanged, new: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0, p1, v0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->onFolderStateChanged(ZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p0

    .line 1188
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    :goto_4
    return-void
.end method

.method public onPluginConnected(Lcom/samsung/systemui/splugins/pluginlock/PluginLock;Landroid/content/Context;)V
    .locals 3

    .line 307
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isOwnerProcess()Z

    move-result v0

    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPluginConnected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isOwnerProcess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PluginLockManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    return-void

    .line 315
    :cond_0
    new-instance v0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    invoke-direct {v0, p1, p2, v1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;-><init>(Lcom/samsung/systemui/splugins/pluginlock/PluginLock;Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockUtils;)V

    .line 317
    sget-boolean p1, Lcom/android/systemui/LsRune;->PLUGIN_LOCK_MULTIPLE_ACTIVATION:Z

    if-eqz p1, :cond_1

    .line 318
    invoke-direct {p0, v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->migration(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    .line 322
    :cond_1
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->setPluginInstanceState(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 324
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onPluginDisconnected(Lcom/samsung/systemui/splugins/pluginlock/PluginLock;I)V
    .locals 2

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPluginDisconnected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 332
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/pluginlock/PluginLockManager;->removeInstance(ILcom/samsung/systemui/splugins/pluginlock/PluginLock;)V

    :cond_0
    return-void
.end method

.method public onRootViewAttached(Landroid/view/ViewGroup;)V
    .locals 2

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRootViewAttached : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mRootView:Landroid/view/ViewGroup;

    .line 271
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mDelegateApp:Lcom/android/systemui/pluginlock/PluginLockDelegateApp;

    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockDelegateApp;->onRootViewAttached(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public onSemBackupStatusChanged(III)V
    .locals 2

    .line 1375
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mHandlerExecutor:Lcom/android/systemui/pluginlock/PluginLockManager$HandlerExecutor;

    new-instance v1, Lcom/android/systemui/pluginlock/PluginLockManager$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/systemui/pluginlock/PluginLockManager$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/pluginlock/PluginLockManager;III)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/pluginlock/PluginLockManager$HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 4

    .line 359
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUserSwitchComplete, from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PluginLockManager"

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    if-nez p1, :cond_0

    .line 362
    new-instance v1, Lcom/android/systemui/pluginlock/PluginLockManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/systemui/pluginlock/PluginLockManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/pluginlock/PluginLockManager;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 368
    :cond_0
    new-instance v1, Lcom/android/systemui/pluginlock/PluginLockManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/pluginlock/PluginLockManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/pluginlock/PluginLockManager;I)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 373
    :goto_0
    iput p1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mUserId:I

    return-void
.end method

.method public onUserSwitching(I)V
    .locals 3

    .line 350
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUserSwitching, userId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PluginLockManager"

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 352
    iput-boolean p1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mIsSwitchingToSub:Z

    .line 353
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->disableByUser()V

    :cond_0
    return-void
.end method

.method public registerSystemUIViewCallback(Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;)V
    .locals 0

    .line 1407
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediator;->registerStateCallback(Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;)V

    return-void
.end method

.method public removeInstance(ILcom/samsung/systemui/splugins/pluginlock/PluginLock;)V
    .locals 13

    .line 740
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeInstance() reason "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 745
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mLockPluginMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 746
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 747
    invoke-virtual {v5}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getPluginLockInstance()Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    move-result-object v7

    if-ne v7, p2, :cond_0

    .line 749
    iget-object v7, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "disconnected, reason: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", package:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    iget-object v7, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mScreenList:[I

    array-length v8, v7

    move v9, v3

    :goto_1
    if-ge v9, v8, :cond_6

    aget v10, v7, v9

    .line 752
    sget-boolean v11, Lcom/android/systemui/LsRune;->PLUGIN_LOCK_MULTIPLE_ACTIVATION:Z

    if-eqz v11, :cond_1

    invoke-virtual {v5, v10}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->isRecentInstance(I)Z

    move-result v12

    if-eqz v12, :cond_5

    goto :goto_2

    .line 753
    :cond_1
    invoke-virtual {v5}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->isRecentInstance()Z

    move-result v12

    if-eqz v12, :cond_5

    :goto_2
    if-nez p1, :cond_4

    if-eqz v11, :cond_2

    .line 756
    invoke-virtual {v5, v10, v3}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->setStateData(IZ)V

    goto :goto_3

    .line 758
    :cond_2
    invoke-virtual {v5, v3}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->setTimeStamp(Z)V

    .line 762
    :goto_3
    invoke-virtual {v5}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/systemui/pluginlock/PluginLockManager;->isPluginLockPackage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 763
    iget-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "plugin Package removed"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v1, v11}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    invoke-virtual {v5}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mRemovedPackageName:Ljava/lang/String;

    :cond_3
    move v4, v6

    .line 767
    :cond_4
    invoke-direct {p0, p2, v10, v3}, Lcom/android/systemui/pluginlock/PluginLockManager;->notifyPluginLockModeChanged(Lcom/samsung/systemui/splugins/pluginlock/PluginLock;IZ)V

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 771
    :cond_6
    invoke-virtual {v5}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 776
    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 777
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mLockPluginMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 779
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "removeInstance() pkgName:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", state: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", map size: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mLockPluginMap:Ljava/util/HashMap;

    .line 780
    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 779
    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_b

    .line 783
    iget-object v5, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mScreenList:[I

    array-length v7, v5

    move v8, v3

    :goto_5
    if-ge v8, v7, :cond_a

    aget v9, v5, v8

    .line 784
    sget-boolean v10, Lcom/android/systemui/LsRune;->PLUGIN_LOCK_MULTIPLE_ACTIVATION:Z

    if-eqz v10, :cond_8

    invoke-virtual {v2, v9}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->isRecentInstance(I)Z

    move-result v9

    if-eqz v9, :cond_9

    goto :goto_6

    :cond_8
    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->isRecentInstance()Z

    move-result v9

    if-eqz v9, :cond_9

    :goto_6
    const/4 v9, 0x0

    .line 785
    iput-object v9, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    .line 786
    iput-object v9, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 787
    iget-object v10, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {v10, v3}, Lcom/android/systemui/pluginlock/PluginLockMediator;->updateWindowSecureState(Z)V

    .line 788
    iget-object v10, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mDelegateApp:Lcom/android/systemui/pluginlock/PluginLockDelegateApp;

    invoke-virtual {v10, v9}, Lcom/android/systemui/pluginlock/PluginLockDelegateApp;->setBasicManager(Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;)V

    .line 789
    iget-object v10, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mDelegateSysUi:Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;

    invoke-virtual {v10, v9}, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->setPluginLockInstanceState(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 792
    :cond_a
    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->destroy()V

    .line 794
    :cond_b
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mLockPluginMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 796
    :cond_c
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz v4, :cond_d

    .line 799
    invoke-direct {p0, v6}, Lcom/android/systemui/pluginlock/PluginLockManager;->setLatestPluginInstance(Z)V

    :cond_d
    return-void
.end method

.method public removeShortcutTaskListener()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "PluginLockManager"

    const-string/jumbo v2, "removeShortcutTaskListener"

    .line 961
    invoke-static {v1, v2, v0}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 962
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mTaskDnd:Lcom/android/systemui/pluginlock/component/PluginLockShortcutDnd;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 963
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/component/PluginLockShortcutDnd;->removeListener()V

    .line 964
    iput-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mTaskDnd:Lcom/android/systemui/pluginlock/component/PluginLockShortcutDnd;

    .line 966
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mTaskFlashLight:Lcom/android/systemui/pluginlock/component/PluginLockShortcutFlashLight;

    if-eqz v0, :cond_1

    .line 967
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/component/PluginLockShortcutFlashLight;->removeListener()V

    .line 968
    iput-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mTaskFlashLight:Lcom/android/systemui/pluginlock/component/PluginLockShortcutFlashLight;

    :cond_1
    return-void
.end method

.method public removeSystemUIViewCallback(Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;)V
    .locals 0

    .line 1411
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediator;->removeStateCallback(Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;)V

    return-void
.end method

.method public resetDynamicLock()V
    .locals 2

    const-string v0, "PluginLockManager"

    const-string/jumbo v1, "resetDynamicLock()"

    .line 808
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->resetDynamicLock()V

    return-void
.end method

.method public setPluginInstanceState(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V
    .locals 13

    .line 556
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mScreenList:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    const/4 v6, 0x1

    const-string v7, "PluginLockManager"

    if-ge v3, v1, :cond_6

    aget v8, v0, v3

    .line 560
    iget-object v9, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v9, v8}, Lcom/android/systemui/util/SettingsHelper;->getPluginLockValue(I)I

    move-result v9

    if-nez v4, :cond_1

    const/16 v4, 0x4e20

    if-ne v9, v4, :cond_0

    move v4, v6

    goto :goto_1

    :cond_0
    move v4, v2

    :cond_1
    :goto_1
    if-nez v5, :cond_3

    const/16 v5, 0x7530

    if-ne v9, v5, :cond_2

    move v5, v6

    goto :goto_2

    :cond_2
    move v5, v2

    .line 570
    :cond_3
    :goto_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setPluginInstanceState() settingValue:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    invoke-virtual {p1, v8}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->hasEnabledPlugin(I)Z

    move-result v10

    if-nez v10, :cond_5

    rem-int/lit8 v10, v9, 0xa

    if-lez v10, :cond_5

    .line 573
    iget-object v10, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setPluginInstanceState(): abnormal case detected: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v7, v11}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getAllowedNumber()I

    move-result v10

    .line 576
    iget-object v11, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPolicy:Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;

    invoke-virtual {v11, v9, v10}, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->isSameInstance(II)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 577
    iget-object v9, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setPluginInstanceState(): "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " will have a timestamp"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v7, v10}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    sget-boolean v7, Lcom/android/systemui/LsRune;->PLUGIN_LOCK_MULTIPLE_ACTIVATION:Z

    if-eqz v7, :cond_4

    .line 580
    invoke-virtual {p1, v8, v6}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->setStateData(IZ)V

    goto :goto_3

    .line 582
    :cond_4
    invoke-virtual {p1, v6}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->setTimeStamp(Z)V

    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 588
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPluginInstanceState() getPackageName "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/pluginlock/PluginLockManager;->putPluginInstanceToMap(Ljava/lang/String;Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    .line 594
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mWallpaperUpdateCallback:Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPolicy:Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getAllowedNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->isDefaultInstance(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 595
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mWallpaperUpdateCallback:Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;

    invoke-interface {v0}, Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;->onReady()V

    .line 599
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo v1, "tss_activated"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v6, :cond_7

    .line 601
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    const-string v3, "TSS Activated"

    invoke-virtual {v0, v7, v3}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mCr:Landroid/content/ContentResolver;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 603
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/systemui/pluginlock/PluginLockManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/systemui/pluginlock/PluginLockManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/pluginlock/PluginLockManager;)V

    const-wide/16 v8, 0x1f4

    invoke-virtual {v0, v1, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 607
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connected: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_9

    .line 609
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isPowerSavingMode()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    const-string/jumbo p0, "setPluginInstanceState() skip, disabled by mode"

    .line 610
    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_9
    if-eqz v5, :cond_a

    .line 615
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isCurrentOwner()Z

    move-result v0

    if-nez v0, :cond_a

    const-string/jumbo p1, "setPluginInstanceState() skip, disabled by user"

    .line 616
    invoke-static {v7, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->registerUpdateMonitor()V

    return-void

    .line 621
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mRemovedPackageName:Ljava/lang/String;

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isPluginLockPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 622
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mRemovedPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 623
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Re install after deleting package "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mRemovedPackageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mWallpaperUpdateCallback:Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;

    if-eqz v0, :cond_b

    .line 625
    invoke-interface {v0}, Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;->onDataCleared()V

    :cond_b
    const/4 v0, 0x0

    .line 627
    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mRemovedPackageName:Ljava/lang/String;

    .line 631
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mScreenList:[I

    array-length v1, v0

    :goto_4
    if-ge v2, v1, :cond_13

    aget v3, v0, v2

    .line 632
    sget-boolean v4, Lcom/android/systemui/LsRune;->PLUGIN_LOCK_MULTIPLE_ACTIVATION:Z

    if-eqz v4, :cond_d

    invoke-virtual {p1, v3}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->isRecentInstance(I)Z

    move-result v5

    if-eqz v5, :cond_12

    goto :goto_5

    :cond_d
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->isRecentInstance()Z

    move-result v5

    if-eqz v5, :cond_12

    :goto_5
    if-eqz v4, :cond_e

    .line 633
    iget v4, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mScreenType:I

    if-ne v4, v3, :cond_f

    .line 634
    :cond_e
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 635
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getPluginLockInstance()Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    .line 638
    :cond_f
    iget-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v4, v3}, Lcom/android/systemui/util/SettingsHelper;->getPluginLockValue(I)I

    move-result v4

    .line 639
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getAllowedNumber()I

    move-result v5

    .line 641
    iget-object v8, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPolicy:Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;

    invoke-virtual {v8, v4, v5}, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->isSameInstance(II)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 642
    rem-int/lit8 v8, v4, 0xa

    if-ne v8, v6, :cond_10

    const/4 v8, 0x2

    goto :goto_6

    :cond_10
    move v8, v6

    :goto_6
    add-int/2addr v5, v8

    goto :goto_7

    :cond_11
    add-int/lit8 v5, v5, 0x1

    .line 647
    :goto_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setPluginInstanceState screen:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", now:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", new:"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    iget-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v4, v3, v5}, Lcom/android/systemui/util/SettingsHelper;->setPluginLockValue(II)V

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_13
    return-void
.end method

.method public setWallpaperUpdateCallback(Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;)V
    .locals 0

    .line 864
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mWallpaperUpdateCallback:Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;

    .line 865
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mDelegateSysUi:Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;

    if-eqz p0, :cond_0

    .line 866
    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->setWallpaperUpdateCallback(Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;)V

    :cond_0
    return-void
.end method

.method public updateLockStarData(Landroid/os/Bundle;)V
    .locals 2

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateLockStarData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    if-eqz p0, :cond_0

    .line 263
    invoke-interface {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediator;->onEventReceived(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public updateShortcutTaskState(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Dnd"

    .line 949
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 950
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mTaskDnd:Lcom/android/systemui/pluginlock/component/PluginLockShortcutDnd;

    if-eqz p0, :cond_1

    .line 951
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockShortcutDnd;->excute()V

    goto :goto_0

    :cond_0
    const-string v0, "Flashlight"

    .line 953
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 954
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mTaskFlashLight:Lcom/android/systemui/pluginlock/component/PluginLockShortcutFlashLight;

    if-eqz p0, :cond_1

    .line 955
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockShortcutFlashLight;->excute()V

    :cond_1
    :goto_0
    return-void
.end method
