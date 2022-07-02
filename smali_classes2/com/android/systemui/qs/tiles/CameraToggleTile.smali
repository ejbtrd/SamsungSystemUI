.class public Lcom/android/systemui/qs/tiles/CameraToggleTile;
.super Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile;
.source "CameraToggleTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/CameraToggleTile$CameraToggleDetailAdapter;
    }
.end annotation


# instance fields
.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private final mDetailAdapter:Lcom/android/systemui/qs/tiles/CameraToggleTile$CameraToggleDetailAdapter;

.field private final mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field protected mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;


# direct methods
.method public static synthetic $r8$lambda$UtRBYTAzb02VNYRl3lbeOYsaQac()Ljava/lang/Boolean;
    .locals 1

    invoke-static {}, Lcom/android/systemui/qs/tiles/CameraToggleTile;->lambda$isAvailable$0()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected constructor <init>(Lcom/android/systemui/qs/QSHost;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;)V
    .locals 13

    move-object v11, p0

    move-object/from16 v12, p9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    .line 77
    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile;-><init>(Lcom/android/systemui/qs/QSHost;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;)V

    .line 80
    new-instance v0, Lcom/android/systemui/qs/tiles/CameraToggleTile$CameraToggleDetailAdapter;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/CameraToggleTile$CameraToggleDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/CameraToggleTile;)V

    iput-object v0, v11, Lcom/android/systemui/qs/tiles/CameraToggleTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/CameraToggleTile$CameraToggleDetailAdapter;

    .line 81
    iput-object v12, v11, Lcom/android/systemui/qs/tiles/CameraToggleTile;->mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    move-object/from16 v0, p10

    .line 82
    iput-object v0, v11, Lcom/android/systemui/qs/tiles/CameraToggleTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object/from16 v0, p7

    .line 83
    iput-object v0, v11, Lcom/android/systemui/qs/tiles/CameraToggleTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 84
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-interface {v12, v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/CameraToggleTile;)Landroid/content/Context;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/CameraToggleTile;)Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/CameraToggleTile;)Landroid/content/Context;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/CameraToggleTile;)Lcom/android/systemui/statusbar/policy/KeyguardStateController;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CameraToggleTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/CameraToggleTile;)Lcom/android/systemui/plugins/ActivityStarter;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CameraToggleTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/CameraToggleTile;)Ljava/lang/String;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/CameraToggleTile;)Landroid/content/Context;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private static synthetic lambda$isAvailable$0()Ljava/lang/Boolean;
    .locals 3

    const-string/jumbo v0, "privacy"

    const-string v1, "camera_toggle_enabled"

    const/4 v2, 0x1

    .line 90
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CameraToggleTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/CameraToggleTile$CameraToggleDetailAdapter;

    return-object p0
.end method

.method public getIconRes(Z)I
    .locals 0

    .line 103
    sget p0, Lcom/android/systemui/R$drawable;->quick_panel_icon_cameraaccess:I

    return p0
.end method

.method public getRestriction()Ljava/lang/String;
    .locals 0

    const-string p0, "disallow_camera_toggle"

    return-object p0
.end method

.method public getSensorId()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 116
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->sec_quick_settings_camera_label:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isAvailable()Z
    .locals 1

    .line 89
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CameraToggleTile;->mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;->supportsSensorToggle(I)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/systemui/qs/tiles/CameraToggleTile$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/systemui/qs/tiles/CameraToggleTile$$ExternalSyntheticLambda0;

    .line 90
    invoke-static {p0}, Lcom/android/systemui/DejankUtils;->whitelistIpcs(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
