.class public Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;
.super Ljava/lang/Object;
.source "KeyguardWallpaperEventHandler.java"


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mEventConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private final mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private mSettingsValueList:[Landroid/net/Uri;

.field private final mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/util/SettingsHelper;)V
    .locals 3

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$1;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/16 v0, 0x9

    new-array v0, v0, [Landroid/net/Uri;

    const-string/jumbo v1, "minimal_battery_use"

    .line 57
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "ultra_powersaving_mode"

    .line 58
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "emergency_mode"

    .line 59
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "lockscreen_wallpaper"

    .line 60
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "lockscreen_wallpaper_sub"

    .line 61
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "lock_adaptive_color"

    .line 62
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "lockscreen_wallpaper_transparent"

    .line 63
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "sub_display_lockscreen_wallpaper_transparency"

    .line 64
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "wallpapertheme_state"

    .line 65
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->mSettingsValueList:[Landroid/net/Uri;

    .line 120
    new-instance v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$2;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 199
    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$3;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;)V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    .line 225
    new-instance v2, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$4;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;)V

    iput-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    .line 75
    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->mContext:Landroid/content/Context;

    .line 76
    invoke-virtual {p2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 77
    invoke-virtual {p3, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 79
    iput-object p4, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 80
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iget-object p2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->mSettingsValueList:[Landroid/net/Uri;

    invoke-virtual {p4, p1, p2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 83
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->registerOpenThemeChangeReceiver()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;ILjava/lang/Object;II)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->sendMessage(ILjava/lang/Object;II)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;)Landroid/content/Context;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;)Lcom/android/systemui/util/SettingsHelper;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-object p0
.end method

.method private registerOpenThemeChangeReceiver()V
    .locals 2

    .line 91
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.android.theme.themecenter.THEME_APPLY_START"

    .line 92
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.theme.themecenter.THEME_APPLY"

    .line 93
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.theme.themecenter.THEME_REAPPLY"

    .line 94
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private sendMessage(ILjava/lang/Object;II)V
    .locals 2

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendMessage(), what = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , obj = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " , arg1 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , arg2 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardWallpaperEventHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->mEventConsumer:Ljava/util/function/Consumer;

    if-eqz v0, :cond_3

    .line 102
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 103
    iput p1, v0, Landroid/os/Message;->what:I

    if-eqz p2, :cond_0

    .line 106
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    :cond_0
    const/4 p1, -0x1

    if-eq p3, p1, :cond_1

    .line 109
    iput p3, v0, Landroid/os/Message;->arg1:I

    :cond_1
    if-eq p4, p1, :cond_2

    .line 113
    iput p4, v0, Landroid/os/Message;->arg2:I

    .line 116
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->mEventConsumer:Ljava/util/function/Consumer;

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public setEventReceiver(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/os/Message;",
            ">;)V"
        }
    .end annotation

    .line 87
    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->mEventConsumer:Ljava/util/function/Consumer;

    return-void
.end method
