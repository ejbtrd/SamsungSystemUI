.class public Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;
.super Ljava/lang/Object;
.source "IndicatorScaleGardener.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# static fields
.field private static DEBUG:Z = false

.field private static final RID_END_MARGIN_SIGNAL:I

.field private static final RID_ICON_RATIO:I

.field private static final RID_TEXT_SIZE:I

.field private static TAG:Ljava/lang/String; = "[IndicatorGarden]ScaleGardener"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mScaleModel:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->DEBUG:Z

    .line 49
    sget v0, Lcom/android/systemui/R$dimen;->indicator_garden_scale_icon_ratio:I

    sput v0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->RID_ICON_RATIO:I

    .line 50
    sget v0, Lcom/android/systemui/R$dimen;->indicator_garden_scale_text_size:I

    sput v0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->RID_TEXT_SIZE:I

    .line 51
    sget v0, Lcom/android/systemui/R$dimen;->indicator_garden_scale_signal_cluster_battery_end_margin:I

    sput v0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->RID_END_MARGIN_SIGNAL:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->mContext:Landroid/content/Context;

    .line 44
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->makeScaleModel()Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->mScaleModel:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;

    .line 45
    const-class p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public static shouldBeScaleLogicApplied(Landroid/content/Context;)Z
    .locals 0

    .line 81
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmFactory;->isCenterDisplayCutOut(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getScaleModel()Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;
    .locals 0

    .line 64
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->makeScaleModel()Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;

    move-result-object p0

    return-object p0
.end method

.method protected makeScaleModel()Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;
    .locals 4

    .line 55
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->RID_ICON_RATIO:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    .line 57
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->RID_TEXT_SIZE:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 58
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->RID_END_MARGIN_SIGNAL:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 59
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v3, 0x10504c5

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 60
    new-instance v3, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;

    invoke-direct {v3, v0, v1, v2, p0}, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;-><init>(FIII)V

    return-object v3

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 5

    .line 69
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->makeScaleModel()Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;

    move-result-object v0

    .line 70
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 71
    sget-object v1, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDensityOrFontScaleChanged() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->mScaleModel:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;

    if-eqz v3, :cond_0

    const-string/jumbo v4, "prv:"

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;->getLogString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string/jumbo v3, "prv is null"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "next:"

    .line 73
    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;->getLogString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", folderOpen:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 74
    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v3}, Lcom/android/systemui/keyguard/DisplayLifecycle;->isFolderOpened()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_1
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->mScaleModel:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;

    return-void
.end method

.method public updateScale()V
    .locals 0

    .line 89
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->onDensityOrFontScaleChanged()V

    return-void
.end method
