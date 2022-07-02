.class public Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;
.super Ljava/lang/Object;
.source "IndicatorGardenPresenter.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$CallStateListener;,
        Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$GardenAsyncTask;
    }
.end annotation


# static fields
.field public static final DEBUG:Z


# instance fields
.field private mAlgorithm:Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;

.field private mCallStateListener:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$CallStateListener;

.field private mContext:Landroid/content/Context;

.field private mDisplayObserver:Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;

.field private mIndicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

.field protected mInputProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

.field private mIsMainDisplay:Z

.field private mNoCutout:Z

.field private mSmallestScreenWidthDp:I


# direct methods
.method public static synthetic $r8$lambda$bIC2LvHw3SO3a119BIifzOXQOxc(Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->lambda$new$0(Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vZykj_bHLqJYSAxGmvTxSI86MLg(Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->lambda$new$1()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 59
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isEngOrUTBinary()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 120
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mIsMainDisplay:Z

    .line 121
    new-instance v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$1;-><init>(Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mDisplayObserver:Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;

    const/4 v1, 0x0

    .line 179
    iput v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mSmallestScreenWidthDp:I

    .line 370
    new-instance v2, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$CallStateListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$CallStateListener;-><init>(Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$1;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mCallStateListener:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$CallStateListener;

    .line 67
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mContext:Landroid/content/Context;

    .line 68
    new-instance v2, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-direct {v2, p1, v3}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;-><init>(Landroid/content/Context;Landroid/view/DisplayCutout;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mInputProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    .line 69
    const-class p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    new-instance v2, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;)V

    new-array v3, v0, [Landroid/net/Uri;

    const-string v4, "display_cutout_hide_notch"

    .line 70
    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v3, v1

    .line 69
    invoke-virtual {p1, v2, v3}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 71
    const-class p1, Lcom/android/systemui/tuner/TunerService;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/tuner/TunerService;

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p1, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 72
    const-class p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 74
    invoke-static {}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmFactory;->shouldBeCalculatedByDualScreen()Z

    move-result p1

    if-nez p1, :cond_0

    sget-boolean p1, Lcom/android/systemui/BasicRune;->BASIC_FOLDERBLE_TYPE_FOLD:Z

    if-eqz p1, :cond_1

    .line 76
    :cond_0
    const-class p1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mDisplayObserver:Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;

    invoke-virtual {p1, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 78
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mContext:Landroid/content/Context;

    .line 79
    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->isSubDisplay(Landroid/content/Context;)Z

    move-result v1

    xor-int/2addr v0, v1

    .line 78
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmFactory;->updateAlgorithmConfigNameAndSpecString(Landroid/content/Context;Z)V

    .line 80
    sget-object p1, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 87
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mCallStateListener:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$CallStateListener;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$CallStateListener;->registerReceiver(Landroid/content/Context;)V

    .line 89
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->createIndicatorScaleGardener()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;)Z
    .locals 0

    .line 55
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mIsMainDisplay:Z

    return p0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;Z)Z
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mIsMainDisplay:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;)Landroid/content/Context;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;)Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mAlgorithm:Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;)Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mAlgorithm:Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;

    return-object p1
.end method

.method private createIndicatorScaleGardener()V
    .locals 2

    .line 330
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 331
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->shouldBeScaleLogicApplied()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 332
    new-instance v0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mIndicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

    :cond_1
    return-void
.end method

.method public static getInstance()Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;
    .locals 1

    .line 94
    const-class v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    return-object v0
.end method

.method private synthetic lambda$new$0(Landroid/net/Uri;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->updateAlgorithm()V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 2

    .line 81
    sget-boolean v0, Lcom/android/systemui/BasicRune;->BASIC_FOLDERBLE_TYPE_FOLD:Z

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mContext:Landroid/content/Context;

    .line 83
    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->isSubDisplay(Landroid/content/Context;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 82
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmFactory;->updateAlgorithmConfigNameAndSpecString(Landroid/content/Context;Z)V

    .line 85
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->updateAlgorithm()V

    return-void
.end method

.method private updateAlgorithm()V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 105
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmFactory;->makeAlgorithm(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mAlgorithm:Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;

    :cond_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string p1, "[IndicatorGarden]Presenter"

    .line 312
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 313
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mAlgorithm:Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 314
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mInputProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    if-eqz p1, :cond_0

    .line 315
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mInputProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getDumpString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public excludeCutoutArea()Z
    .locals 5

    .line 360
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mInputProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 361
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getDpCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 362
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mInputProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getRotation()I

    move-result v3

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    .line 363
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->isShowingMainDisplay()Z

    move-result v4

    if-eqz v0, :cond_2

    if-eqz v4, :cond_2

    if-eqz v3, :cond_2

    .line 364
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mInputProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->isRTL()Z

    move-result p0

    if-nez p0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public getInputProperty()Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mInputProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    return-object p0
.end method

.method public getScaleModel()Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;
    .locals 0

    .line 344
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mIndicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

    if-eqz p0, :cond_0

    .line 345
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->getScaleModel()Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public initIndicatorGarden(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)V
    .locals 1

    const/4 v0, 0x0

    .line 143
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->updateGardenWithNewModel(Lcom/android/systemui/statusbar/phone/IndicatorGarden;Z)V

    return-void
.end method

.method public isNoCutout()Z
    .locals 0

    .line 173
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mNoCutout:Z

    return p0
.end method

.method public isShowingMainDisplay()Z
    .locals 0

    .line 136
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mIsMainDisplay:Z

    return p0
.end method

.method protected makeGardenModel(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mAlgorithm:Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mInputProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    if-eqz p0, :cond_0

    .line 255
    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->makeGardenModel(Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;Lcom/android/systemui/statusbar/phone/IndicatorGarden;)Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onChangedCoverDefaultSidePadding(Lcom/android/systemui/statusbar/phone/IndicatorGarden;I)V
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mInputProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->onChangedCoverDefaultSidePadding(I)V

    .line 217
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->updateGardenWithNewModel(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)V

    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mInputProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->onGardenDensityOrFontScaleChanged()V

    .line 225
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mIndicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

    if-eqz p0, :cond_1

    .line 226
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->onDensityOrFontScaleChanged()V

    :cond_1
    return-void
.end method

.method public onGardenApplyWindowInsets(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 151
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mInputProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    if-eqz v0, :cond_2

    .line 152
    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGarden;->getGardenWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 153
    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGarden;->getGardenWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mInputProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGarden;->getGardenWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->setDpCutout(Landroid/view/DisplayCutout;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "[IndicatorGarden]Presenter"

    const-string/jumbo v1, "onGardenApplyWindowInsets() getRootWindowInsets is NULL!!"

    .line 159
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 162
    :goto_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mNoCutout:Z

    if-eq v1, v0, :cond_3

    .line 163
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mNoCutout:Z

    .line 164
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->updateAlgorithm()V

    .line 165
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mNoCutout:Z

    if-eqz v0, :cond_3

    .line 166
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mInputProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->setDpCutout(Landroid/view/DisplayCutout;)V

    .line 169
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->updateGardenWithNewModel(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)V

    return-void
.end method

.method public onGardenConfigurationChanged(Lcom/android/systemui/statusbar/phone/IndicatorGarden;Landroid/content/res/Configuration;)V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mInputProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->onGardenConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 185
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mSmallestScreenWidthDp:I

    iget v1, p2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v0, v1, :cond_3

    .line 186
    iput v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mSmallestScreenWidthDp:I

    .line 187
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mInputProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    if-eqz v0, :cond_2

    .line 188
    sget-boolean v0, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_SUPPORT_INDICATOR_PADDING_FOLDABLE:Z

    if-eqz v0, :cond_1

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSmallestScreenWidthDp garden "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " changed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "[IndicatorGarden]Presenter"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->resetDeviceDensity()V

    .line 192
    :cond_1
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mInputProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->updateDimenResources()V

    .line 194
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->updateScale()V

    .line 196
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->updateGardenWithNewModel(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)V

    return-void
.end method

.method public onGardenOnLayout(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)V
    .locals 0

    .line 204
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->updateGardenWithNewModel(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)V

    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onTuningChanged(key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", newValue:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "[IndicatorGarden]Presenter"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->updateAlgorithm()V

    return-void
.end method

.method public shouldBeScaleLogicApplied()Z
    .locals 0

    .line 338
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mContext:Landroid/content/Context;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 339
    :cond_0
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->shouldBeScaleLogicApplied(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method protected updateGardenWithNewModel(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)V
    .locals 1

    const/4 v0, 0x0

    .line 235
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->updateGardenWithNewModel(Lcom/android/systemui/statusbar/phone/IndicatorGarden;Z)V

    return-void
.end method

.method protected updateGardenWithNewModel(Lcom/android/systemui/statusbar/phone/IndicatorGarden;Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 242
    new-instance p2, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$GardenAsyncTask;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$GardenAsyncTask;-><init>(Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;Lcom/android/systemui/statusbar/phone/IndicatorGarden;)V

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$GardenAsyncTask;->submitTask()V

    goto :goto_0

    .line 244
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->makeGardenModel(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;

    move-result-object p0

    .line 245
    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/phone/IndicatorGarden;->updateGarden(Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;)V

    :goto_0
    return-void
.end method

.method public updateScale()V
    .locals 0

    .line 353
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mIndicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

    if-eqz p0, :cond_0

    .line 354
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->updateScale()V

    :cond_0
    return-void
.end method
