.class public Lcom/android/systemui/qs/tiles/BlueLightFilterTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "BlueLightFilterTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;,
        Lcom/android/systemui/qs/tiles/BlueLightFilterTile$Feature;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# static fields
.field private static final BLUELIGHTFILTER_SETTINGS:Landroid/content/Intent;

.field private static final EYECOMFORT_SETTINGS:Landroid/content/Intent;


# instance fields
.field COLOR_ADJUSTMENT_FEATURE:Lcom/android/systemui/qs/tiles/BlueLightFilterTile$Feature;

.field COLOR_LENS_FEATURE:Lcom/android/systemui/qs/tiles/BlueLightFilterTile$Feature;

.field GRAYSCALE_FEATURE:Lcom/android/systemui/qs/tiles/BlueLightFilterTile$Feature;

.field NEGATIVE_COLORS_FEATURE:Lcom/android/systemui/qs/tiles/BlueLightFilterTile$Feature;

.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

.field private mDetailListening:Z

.field private mDetailSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private final mDetailSettingsValueList:[Landroid/net/Uri;

.field private final mFeatureEnabled:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mFeatureSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private final mFeatureSettingsValueList:[Landroid/net/Uri;

.field private final mFeatures:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/qs/tiles/BlueLightFilterTile$Feature;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field private mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mListening:Z

.field private mLocationOnDialog:Landroidx/appcompat/app/AlertDialog;

.field private mSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private final mSettingsValueList:[Landroid/net/Uri;

.field private mToasMsg:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$-QjE3Y1t40OBwtFWvrmAlmCs2Yk(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->lambda$handleClick$0(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 83
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$BlueLightFilterSettingsActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->BLUELIGHTFILTER_SETTINGS:Landroid/content/Intent;

    .line 85
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v3, "com.android.settings.Settings$EyeComfortSettingsActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->EYECOMFORT_SETTINGS:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Landroid/os/Looper;Landroid/os/Handler;Landroid/content/res/Resources;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/util/SettingsHelper;)V
    .locals 11

    move-object v9, p0

    move-object/from16 v10, p12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    .line 201
    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V

    const/4 v0, 0x0

    .line 100
    iput-object v0, v9, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mLocationOnDialog:Landroidx/appcompat/app/AlertDialog;

    .line 110
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, v9, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatureEnabled:Ljava/util/LinkedHashMap;

    .line 111
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, v9, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatures:Ljava/util/LinkedHashMap;

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/net/Uri;

    const-string v2, "greyscale_mode"

    .line 120
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "high_contrast"

    .line 121
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "color_blind"

    .line 122
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "color_lens_switch"

    .line 123
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    iput-object v1, v9, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatureSettingsValueList:[Landroid/net/Uri;

    new-array v1, v5, [Landroid/net/Uri;

    const-string v2, "blue_light_filter"

    .line 126
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "blue_light_filter_adaptive_mode"

    .line 127
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v1, v4

    iput-object v1, v9, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mSettingsValueList:[Landroid/net/Uri;

    new-array v2, v4, [Landroid/net/Uri;

    const-string v4, "blue_light_filter_opacity"

    .line 130
    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v2, v3

    iput-object v2, v9, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mDetailSettingsValueList:[Landroid/net/Uri;

    .line 138
    new-instance v2, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$1;-><init>(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)V

    iput-object v2, v9, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->GRAYSCALE_FEATURE:Lcom/android/systemui/qs/tiles/BlueLightFilterTile$Feature;

    .line 150
    new-instance v2, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$2;-><init>(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)V

    iput-object v2, v9, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->NEGATIVE_COLORS_FEATURE:Lcom/android/systemui/qs/tiles/BlueLightFilterTile$Feature;

    .line 162
    new-instance v2, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$3;-><init>(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)V

    iput-object v2, v9, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->COLOR_ADJUSTMENT_FEATURE:Lcom/android/systemui/qs/tiles/BlueLightFilterTile$Feature;

    .line 174
    new-instance v2, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$4;-><init>(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)V

    iput-object v2, v9, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->COLOR_LENS_FEATURE:Lcom/android/systemui/qs/tiles/BlueLightFilterTile$Feature;

    .line 212
    new-instance v2, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$5;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$5;-><init>(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)V

    iput-object v2, v9, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    .line 225
    new-instance v2, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$6;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$6;-><init>(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)V

    iput-object v2, v9, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mDetailSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    .line 441
    new-instance v2, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$7;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$7;-><init>(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)V

    iput-object v2, v9, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatureSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    .line 203
    new-instance v2, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;Lcom/android/systemui/qs/tiles/BlueLightFilterTile$1;)V

    iput-object v2, v9, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    move-object/from16 v0, p8

    .line 204
    iput-object v0, v9, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 205
    iput-object v10, v9, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    move-object/from16 v0, p10

    .line 206
    iput-object v0, v9, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v0, p11

    .line 207
    iput-object v0, v9, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 208
    iget-object v0, v9, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v10, v0, v1}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 209
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->addFeature()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Lcom/android/systemui/util/SettingsHelper;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-object p0
.end method

.method static synthetic access$1000()Z
    .locals 1

    .line 73
    sget-boolean v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Ljava/lang/String;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Ljava/util/LinkedHashMap;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatures:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Ljava/util/LinkedHashMap;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatureEnabled:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;Landroidx/appcompat/app/AlertDialog;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mLocationOnDialog:Landroidx/appcompat/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;Z)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->setMode(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;I)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->showLocationOnDialog(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)V
    .locals 0

    .line 73
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Ljava/lang/String;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Lcom/android/systemui/statusbar/policy/KeyguardStateController;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Lcom/android/systemui/qs/QSHost;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Lcom/android/systemui/plugins/ActivityStarter;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;I)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->sendIntent(I)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Ljava/lang/String;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4300()Z
    .locals 1

    .line 73
    sget-boolean v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->DEBUG:Z

    return v0
.end method

.method static synthetic access$4400(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Ljava/lang/String;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$4600(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$4700(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$4800(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$4900(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$5100(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$5200(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$5300(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$5400(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$5500(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$5600(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$5700(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$5800(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$5900(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Ljava/lang/String;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$6000(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$6100(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$6200(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$6300(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$6400(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$6500(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$6600(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$6700(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;Ljava/lang/Object;)V
    .locals 0

    .line 73
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Z
    .locals 0

    .line 73
    iget-boolean p0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mDetailListening:Z

    return p0
.end method

.method private addFeature()V
    .locals 4

    .line 415
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatureEnabled:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 416
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatures:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 418
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatureSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatureSettingsValueList:[Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    const-string v0, "greyscale_mode"

    .line 421
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 422
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatureEnabled:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->GRAYSCALE_FEATURE:Lcom/android/systemui/qs/tiles/BlueLightFilterTile$Feature;

    invoke-interface {v3}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$Feature;->isEnabled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatures:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->GRAYSCALE_FEATURE:Lcom/android/systemui/qs/tiles/BlueLightFilterTile$Feature;

    invoke-virtual {v1, v0, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "high_contrast"

    .line 426
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 427
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatureEnabled:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->NEGATIVE_COLORS_FEATURE:Lcom/android/systemui/qs/tiles/BlueLightFilterTile$Feature;

    invoke-interface {v3}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$Feature;->isEnabled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatures:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->NEGATIVE_COLORS_FEATURE:Lcom/android/systemui/qs/tiles/BlueLightFilterTile$Feature;

    invoke-virtual {v1, v0, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "color_blind"

    .line 431
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 432
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatureEnabled:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->COLOR_ADJUSTMENT_FEATURE:Lcom/android/systemui/qs/tiles/BlueLightFilterTile$Feature;

    invoke-interface {v3}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$Feature;->isEnabled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatures:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->COLOR_ADJUSTMENT_FEATURE:Lcom/android/systemui/qs/tiles/BlueLightFilterTile$Feature;

    invoke-virtual {v1, v0, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "color_lens_switch"

    .line 436
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 437
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatureEnabled:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->COLOR_LENS_FEATURE:Lcom/android/systemui/qs/tiles/BlueLightFilterTile$Feature;

    invoke-interface {v3}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$Feature;->isEnabled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatures:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->COLOR_LENS_FEATURE:Lcom/android/systemui/qs/tiles/BlueLightFilterTile$Feature;

    invoke-virtual {v1, v0, p0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private isFeatureEnabled()Z
    .locals 6

    .line 402
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatureEnabled:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 403
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatureEnabled:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 404
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->blue_light_disable_reason:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatures:Ljava/util/LinkedHashMap;

    .line 405
    invoke-virtual {v5, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$Feature;

    invoke-interface {v1}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$Feature;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->quick_settings_eyecomfortshield_detail_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mToasMsg:Ljava/lang/String;

    return v2

    :cond_1
    const-string v0, ""

    .line 410
    iput-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mToasMsg:Ljava/lang/String;

    return v2
.end method

.method private synthetic lambda$handleClick$0(Landroid/view/View;)V
    .locals 0

    .line 301
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->handleClick(Landroid/view/View;)V

    return-void
.end method

.method private sendIntent(I)V
    .locals 4

    .line 393
    sget-boolean v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendIntent( key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ) BLUE_LIGHT_SETTING"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 395
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.bluelightfilter"

    const-string v3, "com.samsung.android.bluelightfilter.BlueLightFilterService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "BLUE_LIGHT_FILTER_SERVICE_TYPE"

    .line 396
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 397
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 398
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    return-void
.end method

.method private setMode(Z)V
    .locals 3

    .line 386
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    const-string v1, "blue_light_filter"

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/util/SettingsHelper;->setBlueLightFilterMode(Ljava/lang/String;I)V

    if-eqz p1, :cond_0

    const/16 p1, 0x15

    goto :goto_0

    :cond_0
    const/16 p1, 0x16

    .line 389
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->sendIntent(I)V

    return-void
.end method

.method private showLocationOnDialog(I)V
    .locals 3

    .line 462
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$style;->Theme_AppCompat_DayNight_Dialog_Alert:I

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x1

    .line 463
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->sec_blue_light_filter_dlg_turn_on_location_title:I

    .line 464
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->sec_blue_light_filter_dlg_turn_on_location:I

    .line 465
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->dlg_cancel:I

    new-instance v2, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$11;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$11;-><init>(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;I)V

    .line 466
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->sec_dlg_turn_on:I

    new-instance v2, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$10;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$10;-><init>(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;I)V

    .line 478
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$9;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$9;-><init>(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;I)V

    .line 491
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$8;-><init>(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)V

    .line 504
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 512
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mLocationOnDialog:Landroidx/appcompat/app/AlertDialog;

    .line 513
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7d3

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    .line 514
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mLocationOnDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 515
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {p1}, Lcom/android/systemui/qs/QSHost;->collapsePanels()V

    .line 516
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mLocationOnDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 239
    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->destroy()V

    .line 240
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    .line 241
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatureSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    return-void
.end method

.method public getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 0

    .line 279
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    return-object p0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 1

    .line 336
    const-class v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {v0}, Lcom/android/systemui/knox/KnoxStateMonitor;->isBlueLightFilterTileBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    const/4 p0, 0x0

    return-object p0

    .line 340
    :cond_0
    sget-object p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->EYECOMFORT_SETTINGS:Landroid/content/Intent;

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x138d

    return p0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 356
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->quick_settings_eyecomfortshield_label:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected handleClick(Landroid/view/View;)V
    .locals 7

    .line 285
    const-class v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {v0}, Lcom/android/systemui/knox/KnoxStateMonitor;->isBlueLightFilterTileBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    return-void

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_mode"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 291
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "blue_light_filter_type"

    invoke-static {v4, v5, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 292
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isShowing()Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 293
    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSecure()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 294
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 295
    invoke-virtual {v4}, Lcom/android/systemui/util/SettingsHelper;->isLockFunctionsEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v0, :cond_2

    if-ne v3, v5, :cond_2

    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v4, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v4, v4, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-nez v4, :cond_2

    .line 299
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {v0}, Lcom/android/systemui/qs/QSHost;->forceCollapsePanels()V

    .line 300
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v1, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;Landroid/view/View;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    return-void

    .line 305
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    move-object v4, p1

    check-cast v4, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v4, v4, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    xor-int/2addr v1, v4

    .line 306
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget p1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-eqz p1, :cond_6

    .line 307
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->getMetricsCategory()I

    move-result v4

    xor-int/lit8 v6, v1, 0x1

    invoke-static {p1, v4, v6}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 308
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleClick "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_5

    .line 309
    sget-boolean p1, Lcom/android/systemui/QpRune;->QUICK_TILE_BLUELIGHT_FILTER_ADAPTIVE_MODE:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isAdaptiveBluelight()Z

    move-result p1

    if-nez p1, :cond_5

    :cond_3
    if-ne v3, v5, :cond_5

    if-nez v1, :cond_4

    .line 311
    invoke-direct {p0, v1}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->setMode(Z)V

    goto :goto_1

    .line 313
    :cond_4
    invoke-direct {p0, v2}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->showLocationOnDialog(I)V

    goto :goto_1

    .line 316
    :cond_5
    invoke-direct {p0, v1}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->setMode(Z)V

    goto :goto_1

    .line 318
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mToasMsg:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 319
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mToasMsg:Ljava/lang/String;

    invoke-static {p1, p0, v2}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_7
    :goto_1
    return-void
.end method

.method protected handleLongClick(Landroid/view/View;)V
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget v0, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-nez v0, :cond_1

    .line 326
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mToasMsg:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 327
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mToasMsg:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void

    .line 331
    :cond_1
    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleLongClick(Landroid/view/View;)V

    return-void
.end method

.method protected handleSecondaryClick(Landroid/view/View;)V
    .locals 1

    .line 345
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget p1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-nez p1, :cond_1

    .line 346
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mToasMsg:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 347
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mToasMsg:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x1

    .line 351
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showDetail(Z)V

    return-void
.end method

.method public handleSetListening(Z)V
    .locals 1

    .line 246
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 247
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mListening:Z

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 3

    .line 363
    instance-of v0, p2, Ljava/lang/Boolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    const-string v0, "blue_light_filter"

    invoke-virtual {p2, v0}, Lcom/android/systemui/util/SettingsHelper;->getBlueLightFilterMode(Ljava/lang/String;)I

    move-result p2

    if-ne p2, v2, :cond_1

    move p2, v2

    goto :goto_0

    :cond_1
    move p2, v1

    .line 365
    :goto_0
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 366
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->isFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 367
    iput v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    goto :goto_2

    :cond_2
    if-eqz p2, :cond_3

    const/4 p2, 0x2

    goto :goto_1

    :cond_3
    move p2, v2

    .line 369
    :goto_1
    iput p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 371
    :goto_2
    iput-boolean v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    .line 373
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->quick_settings_eyecomfortshield_label:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 374
    sget-boolean p2, Lcom/android/systemui/QpRune;->QUICK_TILE_BLUELIGHT_FILTER_ADAPTIVE_MODE:Z

    if-eqz p2, :cond_4

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isAdaptiveBluelight()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 375
    sget p0, Lcom/android/systemui/R$drawable;->quick_panel_icon_eye_comfort_shield_adaptive:I

    invoke-static {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_3

    .line 377
    :cond_4
    sget p0, Lcom/android/systemui/R$drawable;->quick_panel_icon_eye_comfort_shield:I

    invoke-static {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    :goto_3
    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .line 72
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected handleUserSwitch(I)V
    .locals 2

    .line 257
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatureSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    .line 258
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->addFeature()V

    const/16 v0, 0x29

    .line 259
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->sendIntent(I)V

    .line 260
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    .line 261
    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleUserSwitch(I)V

    return-void
.end method

.method public isAvailable()Z
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getTileSpec()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/systemui/qs/QSHost;->shouldBeHiddenByKnox(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 0

    .line 252
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object p0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 72
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object p0

    return-object p0
.end method

.method public setDetailListening(Z)V
    .locals 3

    .line 266
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mDetailListening:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 267
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mDetailListening:Z

    .line 268
    sget-boolean v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDetailListening( listening:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p1, :cond_2

    .line 271
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mDetailSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mDetailSettingsValueList:[Landroid/net/Uri;

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    goto :goto_0

    .line 273
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mDetailSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {p1, p0}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    :goto_0
    return-void
.end method
