.class public Lcom/android/systemui/settings/brightness/BrightnessController;
.super Ljava/lang/Object;
.source "BrightnessController.java"

# interfaces
.implements Lcom/android/systemui/settings/brightness/ToggleSlider$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/settings/brightness/BrightnessController$Factory;,
        Lcom/android/systemui/settings/brightness/BrightnessController$BrightnessObserver;,
        Lcom/android/systemui/settings/brightness/BrightnessController$BrightnessStateChangeCallback;
    }
.end annotation


# static fields
.field private static final BRIGHTNESS_FOR_VR_FLOAT_URI:Landroid/net/Uri;

.field public static final BRIGHTNESS_MODE_URI:Landroid/net/Uri;

.field private static final HIGH_BRIGHTNESS_MODE_ENTER_URI:Landroid/net/Uri;

.field public static final SCREEN_DISPLAY_OUTDOOR_MODE_URI:Landroid/net/Uri;

.field private static final SCREEN_PERSONAL_AUTO_BRIGHTNESS_CONTROL_URI:Landroid/net/Uri;

.field private static final SYSTEM_BRIGHTNESS_ENABLED_URI:Landroid/net/Uri;

.field private static final USING_HIGH_BRIGHTNESS_DIALOG_URI:Landroid/net/Uri;


# instance fields
.field private volatile mAutomatic:Z

.field private final mBackgroundHandler:Landroid/os/Handler;

.field private mBrightnessDialog:Lcom/android/systemui/settings/brightness/BrightnessDialog;

.field private mBrightnessLogger:Lcom/android/systemui/settings/brightness/BrightnessLogger;

.field private mBrightnessMax:F

.field private mBrightnessMin:F

.field private final mBrightnessObserver:Lcom/android/systemui/settings/brightness/BrightnessController$BrightnessObserver;

.field private mChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/settings/brightness/BrightnessController$BrightnessStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mControl:Lcom/android/systemui/settings/brightness/ToggleSlider;

.field private mControlValueInitialized:Z

.field private mDetailTag:Ljava/lang/String;

.field private final mDisplayId:I

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mExternalChange:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mHighBrightnessModeEnterRunnable:Ljava/lang/Runnable;

.field private volatile mIsVrModeEnabled:Z

.field private mListening:Z

.field private final mMaximumBacklight:F

.field private final mMaximumBacklightForVr:F

.field private final mMinimumBacklight:F

.field private final mMinimumBacklightForVr:F

.field private final mOutdoorModeRunnable:Ljava/lang/Runnable;

.field private mSliderAnimationDuration:I

.field private mSliderAnimator:Landroid/animation/ValueAnimator;

.field private final mStartListeningRunnable:Ljava/lang/Runnable;

.field private final mStopListeningRunnable:Ljava/lang/Runnable;

.field private final mSystemBrightnessEnabledRunnable:Ljava/lang/Runnable;

.field private final mUpdateModeRunnable:Ljava/lang/Runnable;

.field private final mUpdateSliderRunnable:Ljava/lang/Runnable;

.field private final mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

.field private final mUsingHighBrightnessDialogRunnable:Ljava/lang/Runnable;

.field private final mVrManager:Landroid/service/vr/IVrManager;

.field private final mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;


# direct methods
.method public static synthetic $r8$lambda$WP6RiPtwyjjuHP_x2-_F9MKSWIo(Lcom/android/systemui/settings/brightness/BrightnessController;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/settings/brightness/BrightnessController;->lambda$animateSliderTo$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "shown_max_brightness_dialog"

    .line 93
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/settings/brightness/BrightnessController;->USING_HIGH_BRIGHTNESS_DIALOG_URI:Landroid/net/Uri;

    const-string/jumbo v0, "pms_notification_panel_brightness_adjustment"

    .line 95
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/settings/brightness/BrightnessController;->SYSTEM_BRIGHTNESS_ENABLED_URI:Landroid/net/Uri;

    const-string v0, "brightness_pms_marker_screen"

    .line 97
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/settings/brightness/BrightnessController;->SCREEN_PERSONAL_AUTO_BRIGHTNESS_CONTROL_URI:Landroid/net/Uri;

    const-string v0, "high_brightness_mode_pms_enter"

    .line 99
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/settings/brightness/BrightnessController;->HIGH_BRIGHTNESS_MODE_ENTER_URI:Landroid/net/Uri;

    const-string v0, "display_outdoor_mode"

    .line 103
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/settings/brightness/BrightnessController;->SCREEN_DISPLAY_OUTDOOR_MODE_URI:Landroid/net/Uri;

    const-string/jumbo v0, "screen_brightness_mode"

    .line 106
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/settings/brightness/BrightnessController;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    const-string/jumbo v0, "screen_brightness_for_vr_float"

    .line 108
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/settings/brightness/BrightnessController;->BRIGHTNESS_FOR_VR_FLOAT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/settings/brightness/ToggleSlider;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 3

    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 113
    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mDetailTag:Ljava/lang/String;

    .line 133
    new-instance v0, Lcom/android/systemui/settings/brightness/BrightnessController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/brightness/BrightnessController$1;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;)V

    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 156
    iput v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mBrightnessMin:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 157
    iput v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mBrightnessMax:F

    const/4 v0, 0x0

    .line 168
    iput v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mSliderAnimationDuration:I

    .line 254
    new-instance v0, Lcom/android/systemui/settings/brightness/BrightnessController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/brightness/BrightnessController$2;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;)V

    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mStartListeningRunnable:Ljava/lang/Runnable;

    .line 290
    new-instance v0, Lcom/android/systemui/settings/brightness/BrightnessController$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/brightness/BrightnessController$3;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;)V

    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mStopListeningRunnable:Ljava/lang/Runnable;

    .line 317
    new-instance v0, Lcom/android/systemui/settings/brightness/BrightnessController$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/brightness/BrightnessController$4;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;)V

    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mUpdateModeRunnable:Ljava/lang/Runnable;

    .line 333
    new-instance v0, Lcom/android/systemui/settings/brightness/BrightnessController$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/brightness/BrightnessController$5;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;)V

    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mUpdateSliderRunnable:Ljava/lang/Runnable;

    .line 350
    new-instance v0, Lcom/android/systemui/settings/brightness/BrightnessController$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/brightness/BrightnessController$6;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;)V

    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    .line 358
    new-instance v0, Lcom/android/systemui/settings/brightness/BrightnessController$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/brightness/BrightnessController$7;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;)V

    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mHandler:Landroid/os/Handler;

    .line 659
    new-instance v1, Lcom/android/systemui/settings/brightness/BrightnessController$12;

    invoke-direct {v1, p0}, Lcom/android/systemui/settings/brightness/BrightnessController$12;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;)V

    iput-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mUsingHighBrightnessDialogRunnable:Ljava/lang/Runnable;

    .line 672
    new-instance v1, Lcom/android/systemui/settings/brightness/BrightnessController$13;

    invoke-direct {v1, p0}, Lcom/android/systemui/settings/brightness/BrightnessController$13;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;)V

    iput-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mSystemBrightnessEnabledRunnable:Ljava/lang/Runnable;

    .line 686
    new-instance v1, Lcom/android/systemui/settings/brightness/BrightnessController$14;

    invoke-direct {v1, p0}, Lcom/android/systemui/settings/brightness/BrightnessController$14;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;)V

    iput-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mOutdoorModeRunnable:Ljava/lang/Runnable;

    .line 696
    new-instance v1, Lcom/android/systemui/settings/brightness/BrightnessController$15;

    invoke-direct {v1, p0}, Lcom/android/systemui/settings/brightness/BrightnessController$15;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;)V

    iput-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mHighBrightnessModeEnterRunnable:Ljava/lang/Runnable;

    .line 404
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mContext:Landroid/content/Context;

    .line 405
    iput-object p2, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mControl:Lcom/android/systemui/settings/brightness/ToggleSlider;

    .line 407
    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Looper;

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    .line 408
    new-instance v1, Lcom/android/systemui/settings/brightness/BrightnessController$8;

    invoke-direct {v1, p0, p3}, Lcom/android/systemui/settings/brightness/BrightnessController$8;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    iput-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    .line 415
    new-instance p3, Lcom/android/systemui/settings/brightness/BrightnessController$BrightnessObserver;

    invoke-direct {p3, p0, v0}, Lcom/android/systemui/settings/brightness/BrightnessController$BrightnessObserver;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mBrightnessObserver:Lcom/android/systemui/settings/brightness/BrightnessController$BrightnessObserver;

    .line 417
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result p3

    iput p3, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mDisplayId:I

    .line 418
    const-class p3, Landroid/os/PowerManager;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/PowerManager;

    const/4 v0, 0x5

    .line 419
    invoke-virtual {p3, v0}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mMinimumBacklightForVr:F

    const/4 v0, 0x6

    .line 421
    invoke-virtual {p3, v0}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mMaximumBacklightForVr:F

    .line 424
    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const-string/jumbo p1, "vrmanager"

    .line 425
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/service/vr/IVrManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mVrManager:Landroid/service/vr/IVrManager;

    .line 429
    invoke-virtual {p3}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mMinimumBacklight:F

    .line 430
    invoke-virtual {p3}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mMaximumBacklight:F

    sub-float/2addr p3, p1

    float-to-int p0, p3

    .line 431
    invoke-interface {p2, p0}, Lcom/android/systemui/settings/brightness/ToggleSlider;->setMax(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/settings/brightness/BrightnessController;)Ljava/lang/String;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mDetailTag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/settings/brightness/BrightnessController;)Ljava/lang/Runnable;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mUpdateSliderRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1000()Landroid/net/Uri;
    .locals 1

    .line 65
    sget-object v0, Lcom/android/systemui/settings/brightness/BrightnessController;->SCREEN_PERSONAL_AUTO_BRIGHTNESS_CONTROL_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/settings/brightness/BrightnessController;)Ljava/lang/Runnable;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mOutdoorModeRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1200()Landroid/net/Uri;
    .locals 1

    .line 65
    sget-object v0, Lcom/android/systemui/settings/brightness/BrightnessController;->HIGH_BRIGHTNESS_MODE_ENTER_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/settings/brightness/BrightnessController;)Ljava/lang/Runnable;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mHighBrightnessModeEnterRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/settings/brightness/BrightnessController;)Landroid/content/Context;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/systemui/settings/brightness/BrightnessController;)Landroid/hardware/display/DisplayManager$DisplayListener;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/systemui/settings/brightness/BrightnessController;)Landroid/os/Handler;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/systemui/settings/brightness/BrightnessController;)Landroid/hardware/display/DisplayManager;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/systemui/settings/brightness/BrightnessController;)Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mListening:Z

    return p0
.end method

.method static synthetic access$1802(Lcom/android/systemui/settings/brightness/BrightnessController;Z)Z
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mListening:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/systemui/settings/brightness/BrightnessController;)Landroid/service/vr/IVrManager;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mVrManager:Landroid/service/vr/IVrManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/settings/brightness/BrightnessController;)Landroid/os/Handler;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/systemui/settings/brightness/BrightnessController;)Landroid/service/vr/IVrStateCallbacks;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/systemui/settings/brightness/BrightnessController;)Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mIsVrModeEnabled:Z

    return p0
.end method

.method static synthetic access$2102(Lcom/android/systemui/settings/brightness/BrightnessController;Z)Z
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mIsVrModeEnabled:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/systemui/settings/brightness/BrightnessController;)Lcom/android/systemui/settings/brightness/BrightnessController$BrightnessObserver;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mBrightnessObserver:Lcom/android/systemui/settings/brightness/BrightnessController$BrightnessObserver;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/android/systemui/settings/brightness/BrightnessController;)Lcom/android/systemui/settings/CurrentUserTracker;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    return-object p0
.end method

.method static synthetic access$2402(Lcom/android/systemui/settings/brightness/BrightnessController;Z)Z
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mAutomatic:Z

    return p1
.end method

.method static synthetic access$2502(Lcom/android/systemui/settings/brightness/BrightnessController;F)F
    .locals 0

    .line 65
    iput p1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mBrightnessMax:F

    return p1
.end method

.method static synthetic access$2602(Lcom/android/systemui/settings/brightness/BrightnessController;F)F
    .locals 0

    .line 65
    iput p1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mBrightnessMin:F

    return p1
.end method

.method static synthetic access$2702(Lcom/android/systemui/settings/brightness/BrightnessController;Z)Z
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mExternalChange:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/android/systemui/settings/brightness/BrightnessController;FZ)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/settings/brightness/BrightnessController;->updateSlider(FZ)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/systemui/settings/brightness/BrightnessController;)Lcom/android/systemui/settings/brightness/ToggleSlider;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mControl:Lcom/android/systemui/settings/brightness/ToggleSlider;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/settings/brightness/BrightnessController;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/android/systemui/settings/brightness/BrightnessController;->notifyCallbacks()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/systemui/settings/brightness/BrightnessController;Z)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/android/systemui/settings/brightness/BrightnessController;->updateVrMode(Z)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/systemui/settings/brightness/BrightnessController;)Lcom/android/systemui/settings/brightness/BrightnessLogger;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mBrightnessLogger:Lcom/android/systemui/settings/brightness/BrightnessLogger;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/android/systemui/settings/brightness/BrightnessController;)I
    .locals 0

    .line 65
    iget p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mDisplayId:I

    return p0
.end method

.method static synthetic access$400(Lcom/android/systemui/settings/brightness/BrightnessController;)Ljava/lang/Runnable;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mUpdateModeRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$500()Landroid/net/Uri;
    .locals 1

    .line 65
    sget-object v0, Lcom/android/systemui/settings/brightness/BrightnessController;->BRIGHTNESS_FOR_VR_FLOAT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$600()Landroid/net/Uri;
    .locals 1

    .line 65
    sget-object v0, Lcom/android/systemui/settings/brightness/BrightnessController;->USING_HIGH_BRIGHTNESS_DIALOG_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/settings/brightness/BrightnessController;)Ljava/lang/Runnable;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mUsingHighBrightnessDialogRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$800()Landroid/net/Uri;
    .locals 1

    .line 65
    sget-object v0, Lcom/android/systemui/settings/brightness/BrightnessController;->SYSTEM_BRIGHTNESS_ENABLED_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/settings/brightness/BrightnessController;)Ljava/lang/Runnable;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mSystemBrightnessEnabledRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method private animateSliderTo(I)V
    .locals 4

    .line 591
    iget-boolean v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mControlValueInitialized:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mControl:Lcom/android/systemui/settings/brightness/ToggleSlider;

    invoke-interface {v0, p1}, Lcom/android/systemui/settings/brightness/ToggleSlider;->setValue(I)V

    .line 594
    iput-boolean v1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mControlValueInitialized:Z

    .line 596
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 597
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 599
    iget-object v2, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mControl:Lcom/android/systemui/settings/brightness/ToggleSlider;

    invoke-interface {v2}, Lcom/android/systemui/settings/brightness/ToggleSlider;->getValue()I

    move-result v2

    const/4 v3, 0x0

    aput v2, v0, v3

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    .line 600
    new-instance v1, Lcom/android/systemui/settings/brightness/BrightnessController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/settings/brightness/BrightnessController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 606
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/settings/brightness/BrightnessController$11;

    invoke-direct {v1, p0}, Lcom/android/systemui/settings/brightness/BrightnessController$11;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 615
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mControl:Lcom/android/systemui/settings/brightness/ToggleSlider;

    .line 616
    invoke-interface {v0}, Lcom/android/systemui/settings/brightness/ToggleSlider;->getValue()I

    move-result v0

    sub-int/2addr v0, p1

    .line 615
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    mul-int/2addr p1, v3

    const v0, 0xffff

    div-int/2addr p1, v0

    .line 617
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    .line 618
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mControl:Lcom/android/systemui/settings/brightness/ToggleSlider;

    invoke-interface {v0}, Lcom/android/systemui/settings/brightness/ToggleSlider;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "brightness_dialog"

    if-eq v0, v1, :cond_2

    iget v3, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mSliderAnimationDuration:I

    :cond_2
    int-to-long v0, v3

    .line 617
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 621
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private synthetic lambda$animateSliderTo$0(Landroid/animation/ValueAnimator;)V
    .locals 1

    const/4 v0, 0x1

    .line 601
    iput-boolean v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mExternalChange:Z

    .line 602
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mControl:Lcom/android/systemui/settings/brightness/ToggleSlider;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/android/systemui/settings/brightness/ToggleSlider;->setValue(I)V

    const/4 p1, 0x0

    .line 603
    iput-boolean p1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mExternalChange:Z

    return-void
.end method

.method private notifyCallbacks()V
    .locals 3

    .line 625
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 627
    iget-object v2, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/settings/brightness/BrightnessController$BrightnessStateChangeCallback;

    invoke-interface {v2}, Lcom/android/systemui/settings/brightness/BrightnessController$BrightnessStateChangeCallback;->onBrightnessLevelChanged()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setBrightness(F)V
    .locals 1

    .line 546
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mDisplayId:I

    invoke-virtual {v0, p0, p1}, Landroid/hardware/display/DisplayManager;->setTemporaryBrightness(IF)V

    return-void
.end method

.method private updateSlider(FZ)V
    .locals 4

    if-eqz p2, :cond_0

    .line 560
    iget p2, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mMinimumBacklightForVr:F

    .line 561
    iget v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mMaximumBacklightForVr:F

    goto :goto_0

    .line 563
    :cond_0
    iget p2, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mMinimumBacklight:F

    .line 564
    iget v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mMaximumBacklight:F

    .line 568
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/settings/brightness/BrightnessController;->updateSliderAnimationDuration()V

    .line 569
    iget-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mBrightnessDialog:Lcom/android/systemui/settings/brightness/BrightnessDialog;

    const-string v2, "StatusBar.BrightnessController"

    if-eqz v1, :cond_1

    const-string/jumbo v1, "updateSlider() - BrightnessDialog resetTimer()"

    .line 570
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    iget-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mBrightnessDialog:Lcom/android/systemui/settings/brightness/BrightnessDialog;

    invoke-virtual {v1}, Lcom/android/systemui/settings/brightness/BrightnessDialog;->resetTimer()V

    :cond_1
    mul-float/2addr v0, p1

    sub-float/2addr v0, p2

    float-to-int v0, v0

    .line 574
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mDetailTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateSlider() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", brightnessValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", min = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    invoke-direct {p0, v0}, Lcom/android/systemui/settings/brightness/BrightnessController;->animateSliderTo(I)V

    return-void
.end method

.method private updateSliderAnimationDuration()V
    .locals 3

    .line 650
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_brightness_transition_time"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 652
    iget v1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mSliderAnimationDuration:I

    if-eq v1, v0, :cond_1

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 653
    :cond_0
    iput v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mSliderAnimationDuration:I

    .line 654
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StatusBar.BrightnessController"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mDetailTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSliderAnimationDuration() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mSliderAnimationDuration:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private updateVrMode(Z)V
    .locals 1

    .line 550
    iget-boolean v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mIsVrModeEnabled:Z

    if-eq v0, p1, :cond_0

    .line 551
    iput-boolean p1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mIsVrModeEnabled:Z

    .line 552
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mUpdateSliderRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public checkRestrictionAndSetEnabled()V
    .locals 2

    .line 522
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/settings/brightness/BrightnessController$10;

    invoke-direct {v1, p0}, Lcom/android/systemui/settings/brightness/BrightnessController$10;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onChanged(ZIZ)V
    .locals 4

    .line 464
    iget-boolean v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mExternalChange:Z

    if-eqz v0, :cond_0

    return-void

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 467
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 474
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mIsVrModeEnabled:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x1f2

    .line 476
    iget v1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mMinimumBacklightForVr:F

    .line 477
    iget v2, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mMaximumBacklightForVr:F

    goto :goto_1

    .line 479
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mAutomatic:Z

    if-eqz v0, :cond_3

    const/16 v0, 0xdb

    goto :goto_0

    :cond_3
    const/16 v0, 0xda

    .line 482
    :goto_0
    iget v1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mMinimumBacklight:F

    .line 483
    iget v2, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mMaximumBacklight:F

    :goto_1
    int-to-float p2, p2

    add-float/2addr p2, v1

    div-float/2addr p2, v2

    if-eqz p3, :cond_4

    .line 491
    iget-object p3, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mContext:Landroid/content/Context;

    const/high16 v1, 0x447a0000    # 1000.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 492
    invoke-static {v3, v1, v3, v2, p2}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 491
    invoke-static {p3, v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 497
    :cond_4
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "StatusBar.BrightnessController"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mDetailTag:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onChanged() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    invoke-direct {p0, p2}, Lcom/android/systemui/settings/brightness/BrightnessController;->setBrightness(F)V

    if-nez p1, :cond_5

    .line 501
    new-instance p1, Lcom/android/systemui/settings/brightness/BrightnessController$9;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/settings/brightness/BrightnessController$9;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController;F)V

    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 516
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/settings/brightness/BrightnessController$BrightnessStateChangeCallback;

    .line 517
    invoke-interface {p1}, Lcom/android/systemui/settings/brightness/BrightnessController$BrightnessStateChangeCallback;->onBrightnessLevelChanged()V

    goto :goto_2

    :cond_6
    return-void
.end method

.method public onPanelColorChanged()V
    .locals 1

    .line 712
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public registerCallbacks()V
    .locals 1

    .line 453
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mStartListeningRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setBrightnessDialog(Lcom/android/systemui/settings/brightness/BrightnessDialog;)V
    .locals 0

    .line 717
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mBrightnessDialog:Lcom/android/systemui/settings/brightness/BrightnessDialog;

    return-void
.end method

.method public unregisterCallbacks()V
    .locals 2

    .line 458
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mStopListeningRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 459
    iput-boolean v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mControlValueInitialized:Z

    return-void
.end method
