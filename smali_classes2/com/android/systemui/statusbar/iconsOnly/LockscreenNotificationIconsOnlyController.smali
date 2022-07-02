.class public Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;
.super Lcom/android/systemui/util/ViewController;
.source "LockscreenNotificationIconsOnlyController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/LockscreenNotificationManager$Callback;
.implements Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$NIOTouchHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/util/ViewController<",
        "Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;",
        ">;",
        "Lcom/android/systemui/statusbar/LockscreenNotificationManager$Callback;",
        "Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;"
    }
.end annotation


# static fields
.field private static final CLOCK_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

.field public static final TAG_FRESH_DRAWABLE:I

.field public static final TAG_IS_APP_COLOR:I

.field public static final TAG_IS_PERSONA:I

.field public static final TAG_SHADOW_BITMAP:I


# instance fields
.field private final CLOCK_INIT_VALUE:I

.field private final LOCK_SETTING_PALETTE_INFO_URI:Ljava/lang/String;

.field private final QUERY_CLOCK_PALETTE_COLOR:I

.field private final QUERY_CLOCK_PALETTE_WHITE_BG_COLOR:I

.field private final mAccessDBRunnable:Ljava/lang/Runnable;

.field private mAlphaByQsExpansion:F

.field private final mBgHandler:Landroid/os/Handler;

.field final mClickListener:Landroid/view/View$OnClickListener;

.field private final mClockColorObserver:Landroid/database/ContentObserver;

.field private mColorLocation:Ljava/lang/String;

.field private final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field private final mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

.field private final mContext:Landroid/content/Context;

.field private mCurrentNotificationType:I

.field private mDarkAmount:F

.field private mInitialY:I

.field protected mIsAlphaAnimating:Z

.field private mIsDozing:Z

.field private mIsLockStarEnabled:Z

.field private mIsMusicShown:Z

.field private mIsregisteredObserver:Z

.field private mLockStarGravity:I

.field private mLockStarpadding:I

.field private final mMainHandler:Landroid/os/Handler;

.field private final mMoreText:Landroid/widget/TextView;

.field private mNotificationIconData:Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;

.field private final mNotificationIconTransitionController:Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;

.field private final mPluginLockData:Lcom/android/systemui/pluginlock/PluginLockData;

.field private final mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

.field private mRefArea:J

.field private mSelectedColor:I

.field private mSelectedColorWhiteBG:I

.field private final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private final mShadeController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

.field private final mSystemUIWidgetCallback:Lcom/android/systemui/widget/SystemUIWidgetCallback;

.field private mTouchSlop:I

.field private mTracking:Z

.field private final mUpdateUIRunnable:Ljava/lang/Runnable;

.field private final mView:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

.field private final mWallpaperController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;


# direct methods
.method public static synthetic $r8$lambda$CJGL0cvi4URLGm1N-XczXd8HNrE(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->lambda$playShowingAnimation$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$S6-uJK2sYyGcWa5WoWIRFCVD3us(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->updateView()V

    return-void
.end method

.method public static synthetic $r8$lambda$vCQLtt_t8EbvIviHCEFx9L7_I3s(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->accessDB()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 76
    sget v0, Lcom/android/systemui/R$id;->tag_fresh_drawable:I

    sput v0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->TAG_FRESH_DRAWABLE:I

    .line 77
    sget v0, Lcom/android/systemui/R$id;->tag_is_persona:I

    sput v0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->TAG_IS_PERSONA:I

    .line 78
    sget v0, Lcom/android/systemui/R$id;->tag_is_appcolor:I

    sput v0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->TAG_IS_APP_COLOR:I

    .line 79
    sget v0, Lcom/android/systemui/R$id;->tag_shadow_bitmap:I

    sput v0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->TAG_SHADOW_BITMAP:I

    .line 84
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->CLOCK_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Landroid/os/Handler;Landroid/os/Handler;Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Lcom/android/systemui/pluginlock/PluginLockMediator;Lcom/android/systemui/pluginlock/PluginLockData;Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;Lcom/android/systemui/lockstar/PluginLockStarManager;)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p9

    move-object/from16 v4, p11

    .line 249
    invoke-direct {p0, p2}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    const/4 v5, -0x1

    .line 85
    iput v5, v0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->CLOCK_INIT_VALUE:I

    const/4 v6, 0x0

    .line 95
    iput v6, v0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mDarkAmount:F

    const/high16 v6, 0x3f800000    # 1.0f

    .line 96
    iput v6, v0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mAlphaByQsExpansion:F

    const/4 v6, 0x0

    .line 97
    iput-boolean v6, v0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mIsAlphaAnimating:Z

    .line 101
    iput-boolean v6, v0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mIsMusicShown:Z

    .line 110
    iput v5, v0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mLockStarpadding:I

    const/16 v7, 0x11

    .line 112
    iput v7, v0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mLockStarGravity:I

    const-string/jumbo v7, "top"

    .line 122
    iput-object v7, v0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mColorLocation:Ljava/lang/String;

    .line 124
    iput-boolean v6, v0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mIsLockStarEnabled:Z

    .line 131
    new-instance v7, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$1;

    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    invoke-direct {v7, p0, v8}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$1;-><init>(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;Landroid/os/Handler;)V

    iput-object v7, v0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mClockColorObserver:Landroid/database/ContentObserver;

    const-string v7, "content://com.samsung.android.app.clockpack.provider/lock_settings/lock_palette_info"

    .line 142
    iput-object v7, v0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->LOCK_SETTING_PALETTE_INFO_URI:Ljava/lang/String;

    const/4 v7, 0x5

    .line 143
    iput v7, v0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->QUERY_CLOCK_PALETTE_COLOR:I

    const/4 v7, 0x6

    .line 144
    iput v7, v0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->QUERY_CLOCK_PALETTE_WHITE_BG_COLOR:I

    .line 146
    iput v5, v0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mSelectedColor:I

    .line 147
    iput v5, v0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mSelectedColorWhiteBG:I

    .line 149
    new-instance v5, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;)V

    iput-object v5, v0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mUpdateUIRunnable:Ljava/lang/Runnable;

    .line 151
    new-instance v5, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;)V

    iput-object v5, v0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mAccessDBRunnable:Ljava/lang/Runnable;

    .line 153
    iput-boolean v6, v0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mIsregisteredObserver:Z

    .line 155
    new-instance v5, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$2;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$2;-><init>(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;)V

    iput-object v5, v0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    .line 177
    new-instance v5, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$3;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$3;-><init>(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;)V

    iput-object v5, v0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mSystemUIWidgetCallback:Lcom/android/systemui/widget/SystemUIWidgetCallback;

    .line 215
    new-instance v5, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$4;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$4;-><init>(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;)V

    iput-object v5, v0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mClickListener:Landroid/view/View$OnClickListener;

    .line 250
    iput-object v1, v0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mContext:Landroid/content/Context;

    .line 251
    iput-object v2, v0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mView:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    move-object v5, p6

    .line 252
    iput-object v5, v0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mMainHandler:Landroid/os/Handler;

    move-object/from16 v5, p7

    .line 253
    iput-object v5, v0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mBgHandler:Landroid/os/Handler;

    move-object v5, p3

    .line 254
    iput-object v5, v0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    move-object v6, p4

    .line 255
    iput-object v6, v0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mShadeController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    move-object v6, p5

    .line 256
    iput-object v6, v0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 257
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mMoreText:Landroid/widget/TextView;

    move-object/from16 v1, p8

    .line 258
    iput-object v1, v0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mWallpaperController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 259
    iput-object v3, v0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    move-object/from16 v1, p10

    .line 260
    iput-object v1, v0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mPluginLockData:Lcom/android/systemui/pluginlock/PluginLockData;

    move-object/from16 v1, p12

    .line 263
    invoke-virtual {p2, v1}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->setPluginLockStarManager(Lcom/android/systemui/lockstar/PluginLockStarManager;)V

    .line 264
    invoke-interface {v3, p0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->registerStateCallback(Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;)V

    .line 268
    iput-object v4, v0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mNotificationIconTransitionController:Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;

    .line 269
    invoke-virtual {v4, p2}, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->setLockscreenNotificationIconsOnlyContainer(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;)V

    .line 272
    invoke-virtual {p2, p3}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->setSettingsHelper(Lcom/android/systemui/util/SettingsHelper;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->getClockColor()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;)Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mView:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;)I
    .locals 0

    .line 74
    iget p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mTouchSlop:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;)Lcom/android/systemui/util/SettingsHelper;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;)Ljava/lang/String;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mColorLocation:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;)J
    .locals 2

    .line 74
    iget-wide v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mRefArea:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;J)J
    .locals 0

    .line 74
    iput-wide p1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mRefArea:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;)Lcom/android/systemui/wallpaper/KeyguardWallpaperController;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mWallpaperController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;)Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mNotificationIconTransitionController:Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;)Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mShadeController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;)Z
    .locals 0

    .line 74
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mTracking:Z

    return p0
.end method

.method static synthetic access$802(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;Z)Z
    .locals 0

    .line 74
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mTracking:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;)I
    .locals 0

    .line 74
    iget p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mInitialY:I

    return p0
.end method

.method static synthetic access$902(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;I)I
    .locals 0

    .line 74
    iput p1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mInitialY:I

    return p1
.end method

.method private accessDB()V
    .locals 7

    .line 752
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v0, "content://com.samsung.android.app.clockpack.provider/lock_settings/lock_palette_info"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 757
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-lez v2, :cond_1

    .line 758
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v2, 0x5

    .line 760
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 761
    iget v4, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mSelectedColor:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v5, "NIO"

    if-eq v4, v2, :cond_0

    .line 762
    :try_start_2
    iput v2, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mSelectedColor:I

    .line 764
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SelectedColor Changed."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    :cond_0
    const/4 v2, 0x6

    .line 767
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 768
    iget v4, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mSelectedColorWhiteBG:I

    if-eq v4, v2, :cond_1

    .line 769
    iput v2, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mSelectedColorWhiteBG:I

    .line 771
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SelectedColorWhteBG Changed."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    :cond_1
    if-eqz v1, :cond_2

    .line 775
    iget-object v1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mMainHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mUpdateUIRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 752
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 778
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 779
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method

.method private getClockColor()V
    .locals 2

    .line 784
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mBgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mAccessDBRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 785
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mBgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mAccessDBRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 787
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mBgHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mAccessDBRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private getCutoutHeight()I
    .locals 1

    .line 668
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mMoreText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 669
    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mMoreText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 671
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    move-result-object p0

    .line 672
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    .line 673
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private getNotificationStartPadding(Z)I
    .locals 2

    .line 642
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v0

    const/16 v1, 0x11

    if-eqz v0, :cond_3

    .line 643
    iget v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mLockStarGravity:I

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_0

    .line 644
    invoke-direct {p0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->getCutoutHeight()I

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mContext:Landroid/content/Context;

    .line 645
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$dimen;->keyguard_indication_dls_default_notification_center_start_land_tablet:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr p1, p0

    goto :goto_0

    .line 646
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$dimen;->keyguard_indication_dls_default_notification_center_start_tablet:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    :goto_0
    return p1

    :cond_1
    if-eqz p1, :cond_2

    .line 648
    invoke-direct {p0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->getCutoutHeight()I

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mContext:Landroid/content/Context;

    .line 649
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$dimen;->keyguard_indication_dls_default_notification_start_land_tablet:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr p1, p0

    goto :goto_1

    .line 650
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$dimen;->keyguard_indication_dls_default_notification_start_tablet:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    :goto_1
    return p1

    .line 653
    :cond_3
    iget v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mLockStarGravity:I

    if-ne v0, v1, :cond_5

    if-eqz p1, :cond_4

    .line 654
    invoke-direct {p0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->getCutoutHeight()I

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mContext:Landroid/content/Context;

    .line 655
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$dimen;->keyguard_indication_dls_default_notification_center_start_land:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr p1, p0

    goto :goto_2

    .line 656
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$dimen;->keyguard_indication_dls_default_notification_center_start:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    :goto_2
    return p1

    :cond_5
    if-eqz p1, :cond_6

    .line 658
    invoke-direct {p0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->getCutoutHeight()I

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mContext:Landroid/content/Context;

    .line 659
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$dimen;->keyguard_indication_dls_default_notification_start_land:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr p1, p0

    goto :goto_3

    .line 660
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$dimen;->keyguard_indication_dls_default_notification_start:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    :goto_3
    return p1
.end method

.method private synthetic lambda$playShowingAnimation$0()V
    .locals 1

    const/4 v0, 0x0

    .line 368
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mIsAlphaAnimating:Z

    return-void
.end method

.method private playShowingAnimation()V
    .locals 3

    .line 361
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mView:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const-string v0, "NIO"

    const-string/jumbo v1, "playShowingAnimation()"

    .line 364
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mView:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 v0, 0x1

    .line 366
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mIsAlphaAnimating:Z

    .line 367
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mView:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 368
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mView:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private registerClockColorObserver()V
    .locals 4

    .line 791
    invoke-direct {p0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->getClockColor()V

    .line 793
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.samsung.android.app.clockpack.provider/lock_settings/lock_palette_info"

    .line 794
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mClockColorObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 795
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mIsregisteredObserver:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 797
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NIO"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private setMoreText(I)V
    .locals 4

    .line 468
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mMoreText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->over_flow_number:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 472
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->updateTextAppearance()V

    .line 473
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mMoreText:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 474
    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mMoreText:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private unregisterClockColorObserver()V
    .locals 2

    .line 802
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mIsregisteredObserver:Z

    if-eqz v0, :cond_0

    .line 804
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mClockColorObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 805
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mIsregisteredObserver:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 807
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NIO"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private updateContainerAlpha()V
    .locals 2

    .line 588
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mIsAlphaAnimating:Z

    if-eqz v0, :cond_1

    .line 589
    iget v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mAlphaByQsExpansion:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    return-void

    .line 592
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateContainerAlpha() - canceled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mAlphaByQsExpansion:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NIO"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mView:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 v0, 0x0

    .line 594
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mIsAlphaAnimating:Z

    .line 596
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mView:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    iget p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mAlphaByQsExpansion:F

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    return-void
.end method

.method private updateRefArea()V
    .locals 5

    .line 601
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mIsLockStarEnabled:Z

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mColorLocation:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->convertFlag(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    .line 604
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mIsMusicShown:Z

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x40

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x20

    .line 607
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateRefArea "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mRefArea:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NIO"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    iput-wide v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mRefArea:J

    .line 609
    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mView:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->setRefArea(J)V

    return-void
.end method

.method private updateView()V
    .locals 3

    .line 741
    iget v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mSelectedColor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 742
    iget-object v2, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mView:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->setSelctedClockColor(I)V

    .line 745
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mSelectedColorWhiteBG:I

    if-eq v0, v1, :cond_1

    .line 746
    iget-object v1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mView:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->setSelctedClockColorWhiteBG(I)V

    .line 748
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mView:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->updateChildProperty()V

    return-void
.end method


# virtual methods
.method public calculateAlphaByQsExpansion(FZII)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p2, :cond_2

    int-to-float p2, p4

    sub-float/2addr p1, p2

    sub-int/2addr p3, p4

    int-to-float p2, p3

    div-float/2addr p1, p2

    .line 566
    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    cmpl-float p2, p1, v1

    if-nez p2, :cond_0

    move p1, v0

    goto :goto_1

    :cond_0
    const p2, 0x3e99999a    # 0.3f

    cmpl-float p2, p1, p2

    if-lez p2, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    const/high16 p2, 0x40400000    # 3.0f

    mul-float/2addr p1, p2

    .line 572
    :goto_0
    invoke-static {v1, v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result p1

    goto :goto_1

    :cond_2
    move p1, v1

    .line 578
    :goto_1
    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mAlphaByQsExpansion:F

    .line 580
    invoke-direct {p0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->updateContainerAlpha()V

    return-void
.end method

.method public createImageViewIconArray(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/LockscreenNotificationInfo;",
            ">;)V"
        }
    .end annotation

    .line 315
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mNotificationIconData:Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;

    if-nez v0, :cond_0

    .line 316
    new-instance v0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;

    iget-object v1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mNotificationIconData:Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mNotificationIconData:Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;

    sget v1, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->TAG_FRESH_DRAWABLE:I

    sget v2, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->TAG_IS_APP_COLOR:I

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->setTagKeys(II)V

    .line 320
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mNotificationIconData:Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->getIconArraySize()I

    move-result v0

    if-lez v0, :cond_1

    .line 321
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mNotificationIconData:Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->clearAllImageViewIcon()V

    :cond_1
    const/4 v0, 0x0

    .line 324
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 326
    const-class v1, Lcom/android/systemui/facewidget/FaceWidgetController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/facewidget/FaceWidgetController;

    invoke-interface {v1}, Lcom/android/systemui/facewidget/FaceWidgetController;->getNotificationManager()Lcom/android/systemui/facewidget/FaceWidgetNotificationController;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 327
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/systemui/facewidget/FaceWidgetNotificationController;->isFaceWidgetMusicNotification(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "NIO"

    const-string/jumbo v2, "skip to show. FaceWidget music already show"

    .line 328
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 333
    :cond_2
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->getStatusBarIcon()Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object v1

    .line 334
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    .line 335
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 336
    iget-object v4, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mNotificationIconData:Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->setKey(Ljava/lang/String;)V

    .line 338
    iget-object v3, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mNotificationIconData:Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v1, v2, v4}, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->createImageViewIcon(Lcom/android/systemui/statusbar/StatusBarIconView;Landroid/service/notification/StatusBarNotification;Landroid/widget/ImageView$ScaleType;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 340
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mNotificationIconData:Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->updateNotificationPreviewList(Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;)V

    return-void
.end method

.method public getCallbockInLockscreenNotificationManager()Lcom/android/systemui/statusbar/LockscreenNotificationManager$Callback;
    .locals 0

    return-object p0
.end method

.method public getIconContainer()Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;
    .locals 0

    .line 559
    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mView:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    return-object p0
.end method

.method public getNotificationIconsOnlyContainerHeight()I
    .locals 0

    .line 232
    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mView:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p0

    return p0
.end method

.method public isIconContainerVisibility()Z
    .locals 1

    .line 543
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mView:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    if-eqz v0, :cond_0

    .line 544
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mView:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    .line 545
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isIconsOnlyInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 549
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->isIconContainerVisibility()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mView:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isIconsOnlyTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 553
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->isIconContainerVisibility()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mTracking:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mView:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    .line 555
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onLockStarEnabled(Z)V
    .locals 4

    const-string v0, "NIO"

    const-string/jumbo v1, "onLockStarEnabled() "

    .line 615
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mIsLockStarEnabled:Z

    if-eqz p1, :cond_1

    .line 618
    iget-object p1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    const-string/jumbo v0, "notification_icon_only"

    invoke-interface {p1, v0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->getLockStarItemLocationInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string/jumbo v0, "none"

    .line 619
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "top"

    .line 620
    :goto_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mColorLocation:Ljava/lang/String;

    .line 622
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->updateRefArea()V

    .line 623
    iget-object p1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mSystemUIWidgetCallback:Lcom/android/systemui/widget/SystemUIWidgetCallback;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->removeSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    .line 624
    iget-object p1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mSystemUIWidgetCallback:Lcom/android/systemui/widget/SystemUIWidgetCallback;

    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mColorLocation:Ljava/lang/String;

    .line 625
    invoke-static {p0}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->convertFlag(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    const-wide/16 v2, 0x400

    or-long/2addr v0, v2

    .line 624
    invoke-static {p1, v0, v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->registerSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;J)V

    return-void
.end method

.method public onNotificationInfoUpdated(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/LockscreenNotificationInfo;",
            ">;)V"
        }
    .end annotation

    .line 311
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->createImageViewIconArray(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onNotificationTypeChanged(I)V
    .locals 1

    .line 304
    iput p1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mCurrentNotificationType:I

    .line 305
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mView:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->setNIOType(I)V

    .line 306
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->updateIconContainerVisibility()V

    return-void
.end method

.method public onUiInfoRequested(Z)Landroid/os/Bundle;
    .locals 2

    .line 633
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 634
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->getNotificationStartPadding(Z)I

    move-result p1

    const-string/jumbo v1, "nio_start"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 635
    iget p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mLockStarGravity:I

    const-string/jumbo p1, "nio_gravity"

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method protected onViewAttached()V
    .locals 5

    .line 277
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mTouchSlop:I

    .line 278
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 279
    invoke-direct {p0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->updateRefArea()V

    .line 280
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mView:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    new-instance v1, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$NIOTouchHandler;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$NIOTouchHandler;-><init>(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->setOnTouchHandler(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$NIOTouchHandler;)V

    .line 281
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mView:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 282
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mView:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    iget-object v1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mView:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 284
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mView:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->init()V

    .line 285
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mView:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    iget-object v1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mWallpaperController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getHints()Landroid/app/SemWallpaperColors;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mRefArea:J

    invoke-virtual {v1, v2, v3}, Landroid/app/SemWallpaperColors;->getColorThemeColor(J)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->setColorTheme(I)V

    .line 286
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mView:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    iget-object v1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->minimized_notification_talkback_description_open:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 287
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mSystemUIWidgetCallback:Lcom/android/systemui/widget/SystemUIWidgetCallback;

    iget-wide v1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mRefArea:J

    const-wide/16 v3, 0x2

    or-long/2addr v1, v3

    const-wide/16 v3, 0x400

    or-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->registerSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;J)V

    .line 290
    invoke-direct {p0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->registerClockColorObserver()V

    return-void
.end method

.method protected onViewDetached()V
    .locals 2

    .line 295
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mSystemUIWidgetCallback:Lcom/android/systemui/widget/SystemUIWidgetCallback;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->removeSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    .line 296
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 297
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mView:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->setOnTouchHandler(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$NIOTouchHandler;)V

    .line 298
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mView:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    invoke-direct {p0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->unregisterClockColorObserver()V

    return-void
.end method

.method public setDarkAmount(F)V
    .locals 0

    .line 584
    iput p1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mDarkAmount:F

    return-void
.end method

.method public setDozing(Z)V
    .locals 0

    .line 448
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mIsDozing:Z

    return-void
.end method

.method public setMusicShown(Z)V
    .locals 4

    .line 452
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mIsMusicShown:Z

    .line 453
    invoke-direct {p0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->updateRefArea()V

    .line 454
    iget-object p1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mSystemUIWidgetCallback:Lcom/android/systemui/widget/SystemUIWidgetCallback;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->removeSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    .line 455
    iget-object p1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mSystemUIWidgetCallback:Lcom/android/systemui/widget/SystemUIWidgetCallback;

    iget-wide v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mRefArea:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    const-wide/16 v2, 0x400

    or-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->registerSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;J)V

    return-void
.end method

.method public updateIconContainerVisibility()V
    .locals 5

    .line 344
    iget v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mCurrentNotificationType:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 345
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mIsDozing:Z

    const/16 v3, 0x8

    if-nez v2, :cond_4

    iget v2, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mDarkAmount:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v4

    if-nez v2, :cond_1

    goto :goto_2

    .line 348
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mNotificationIconTransitionController:Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;

    .line 349
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->isTransformAnimating()Z

    move-result v2

    if-nez v2, :cond_5

    if-eqz v0, :cond_2

    .line 351
    iget v2, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mDarkAmount:F

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-lez v2, :cond_2

    .line 352
    invoke-direct {p0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->playShowingAnimation()V

    .line 355
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mView:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3

    .line 346
    :cond_4
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mView:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_5
    :goto_3
    return-void
.end method

.method public updateNotificationIconsOnlyPosition(ILcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;)V
    .locals 7

    .line 479
    const-class v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    if-eqz v0, :cond_0

    .line 481
    invoke-virtual {v0}, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->getFaceWidgetSidePadding()Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetSidePadding;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 484
    :goto_0
    iget-boolean v1, p2, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->isCenterAlignClockType:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mView:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    sub-int v1, p1, v1

    div-int/lit8 v1, v1, 0x2

    goto :goto_2

    :cond_1
    if-nez v0, :cond_2

    move v1, v2

    goto :goto_1

    .line 485
    :cond_2
    invoke-interface {v0}, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetSidePadding;->getClockSidePadding()I

    move-result v1

    :goto_1
    iget v3, p2, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockX:I

    add-int/2addr v1, v3

    .line 486
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mView:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    iget-boolean v3, p2, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->isCenterAlignClockType:Z

    if-nez v3, :cond_4

    .line 487
    iget-object v1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mView:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    sub-int v1, p1, v1

    if-nez v0, :cond_3

    move v3, v2

    goto :goto_3

    :cond_3
    invoke-interface {v0}, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetSidePadding;->getClockSidePadding()I

    move-result v3

    :goto_3
    sub-int/2addr v1, v3

    if-eqz v0, :cond_4

    .line 488
    invoke-interface {v0}, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetSidePadding;->needToSidePaddingForClock()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isInDisplayFpSensorPositionHigh()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mContext:Landroid/content/Context;

    .line 489
    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    if-ne v0, v4, :cond_4

    .line 490
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getInDisplayFingerprintImageSize()I

    move-result v0

    sub-int/2addr v1, v0

    .line 494
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mPluginLockData:Lcom/android/systemui/pluginlock/PluginLockData;

    invoke-interface {v0}, Lcom/android/systemui/pluginlock/PluginLockData;->isAvailable()Z

    move-result v0

    const v3, 0x800005

    const v4, 0x800003

    const/16 v5, 0x11

    if-eqz v0, :cond_8

    .line 495
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mPluginLockData:Lcom/android/systemui/pluginlock/PluginLockData;

    const/4 v6, 0x3

    invoke-interface {v0, v6}, Lcom/android/systemui/pluginlock/PluginLockData;->getGravity(I)I

    move-result v0

    if-eq v0, v5, :cond_7

    if-eq v0, v4, :cond_6

    if-eq v0, v3, :cond_5

    goto :goto_4

    .line 503
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mView:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    .line 504
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mPluginLockData:Lcom/android/systemui/pluginlock/PluginLockData;

    invoke-interface {v1, v6}, Lcom/android/systemui/pluginlock/PluginLockData;->getPaddingEnd(I)I

    move-result v1

    add-int/2addr v0, v1

    sub-int v1, p1, v0

    goto :goto_4

    .line 500
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mPluginLockData:Lcom/android/systemui/pluginlock/PluginLockData;

    invoke-interface {p1, v6}, Lcom/android/systemui/pluginlock/PluginLockData;->getPaddingStart(I)I

    move-result v1

    goto :goto_4

    .line 497
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mView:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    sub-int/2addr p1, v0

    div-int/lit8 v1, p1, 0x2

    .line 507
    :goto_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mView:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 508
    iget v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget v3, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mLockStarGravity:I

    if-eq v0, v3, :cond_b

    .line 509
    iput v3, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 510
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mView:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5

    .line 513
    :cond_8
    iput v1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mLockStarpadding:I

    .line 514
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mView:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    sub-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    .line 515
    iget v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mLockStarpadding:I

    if-ne v0, p1, :cond_9

    .line 516
    iput v5, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mLockStarGravity:I

    goto :goto_5

    .line 517
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mView:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getX()F

    move-result v0

    int-to-float p1, p1

    cmpg-float p1, v0, p1

    if-gez p1, :cond_a

    .line 518
    iput v4, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mLockStarGravity:I

    goto :goto_5

    .line 520
    :cond_a
    iput v3, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mLockStarGravity:I

    .line 524
    :cond_b
    :goto_5
    iget p1, p2, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->iconTypeTranslationY:F

    float-to-int p1, p1

    .line 527
    invoke-virtual {p3}, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->isBeingDragged()Z

    move-result p2

    if-eqz p2, :cond_c

    .line 528
    invoke-virtual {p3}, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->getDistance()F

    move-result p2

    float-to-int p2, p2

    div-int/lit8 p2, p2, 0x4

    add-int/2addr p1, p2

    .line 531
    :cond_c
    invoke-virtual {p3}, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->getRestoreRunning()Z

    move-result p2

    if-nez p2, :cond_d

    .line 533
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->getIconContainer()Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    move-result-object p2

    sget-object p3, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->Y:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    int-to-float p1, p1

    sget-object v0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->CLOCK_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-static {p2, p3, p1, v0, v2}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    .line 536
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->getIconContainer()Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->X:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    int-to-float p2, v1

    invoke-static {p0, p1, p2, v0, v2}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    :cond_d
    return-void
.end method

.method public updateNotificationPreviewList(Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;)V
    .locals 6

    .line 376
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->getIconArraySize()I

    move-result v0

    .line 379
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 380
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_0

    .line 383
    invoke-virtual {p1, v4}, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->getIconArrayChild(I)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 385
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    move v0, v3

    .line 387
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mView:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 388
    iget-object v4, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mView:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 389
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    instance-of v5, v4, Landroid/widget/ImageView;

    if-nez v5, :cond_2

    .line 390
    :cond_1
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 394
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 395
    iget-object v4, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mView:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->removeView(Landroid/view/View;)V

    goto :goto_2

    :cond_4
    if-lez p1, :cond_e

    const/4 v0, 0x4

    if-gt p1, v0, :cond_8

    move v0, v3

    :goto_3
    if-ge v0, p1, :cond_6

    .line 401
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 402
    invoke-virtual {v2}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_5

    .line 403
    iget-object v4, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mView:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->addView(Landroid/view/View;)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    if-ge v3, p1, :cond_e

    .line 408
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mView:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge v3, v0, :cond_e

    .line 409
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mView:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 410
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-ne v0, v2, :cond_7

    goto :goto_5

    .line 414
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mView:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->removeView(Landroid/view/View;)V

    .line 415
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mView:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->addView(Landroid/view/View;I)V

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_8
    move v2, v3

    :goto_6
    if-ge v2, v0, :cond_a

    .line 419
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 420
    invoke-virtual {v4}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-nez v5, :cond_9

    .line 421
    iget-object v5, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mView:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->addView(Landroid/view/View;)V

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_a
    :goto_7
    const/4 v0, 0x3

    if-ge v3, v0, :cond_c

    .line 427
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mView:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 428
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-ne v0, v2, :cond_b

    goto :goto_8

    .line 432
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mView:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->removeView(Landroid/view/View;)V

    .line 433
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mView:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->addView(Landroid/view/View;I)V

    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 436
    :cond_c
    iget-object v1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mView:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_9
    if-lt v1, v0, :cond_d

    .line 437
    iget-object v2, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mView:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->removeView(Landroid/view/View;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    :cond_d
    sub-int/2addr p1, v0

    .line 441
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->setMoreText(I)V

    .line 442
    iget-object p1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mView:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mMoreText:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->addView(Landroid/view/View;)V

    :cond_e
    return-void
.end method

.method public updateTextAppearance()V
    .locals 2

    .line 461
    iget v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mCurrentNotificationType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 462
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mMoreText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 463
    sget v0, Lcom/android/systemui/R$style;->small_notification_preview_more_text_style:I

    goto :goto_1

    .line 464
    :cond_1
    sget v0, Lcom/android/systemui/R$style;->notification_preview_more_text_style:I

    .line 462
    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    return-void
.end method
