.class public Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmFactory;
.super Ljava/lang/Object;
.source "IndicatorGardenAlgorithmFactory.java"


# static fields
.field private static CONFIG_NAME:Ljava/lang/String; = "config_mainBuiltInDisplayCutout"

.field private static SPECNAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected static isCenterDisplayCutOut(Landroid/content/Context;)Z
    .locals 3

    .line 87
    invoke-static {}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmFactory;->isSidelingCenterCutout()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    .line 92
    :try_start_0
    sget-object v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmFactory;->SPECNAME:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 93
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "@left"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "@right"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, p0

    :goto_0
    move p0, v0

    :catch_0
    return p0
.end method

.method protected static isDualSideDisplayCutOut(Landroid/content/Context;)Z
    .locals 1

    .line 101
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmFactory;->isLeftDisplayCutOut(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmFactory;->isRightDisplayCutOut(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isLeftDisplayCutOut(Landroid/content/Context;)Z
    .locals 2

    .line 105
    invoke-static {}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmFactory;->isSidelingCenterCutout()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    .line 110
    :cond_0
    :try_start_0
    sget-object p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmFactory;->SPECNAME:Ljava/lang/String;

    if-eqz p0, :cond_1

    .line 111
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "@left"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    move v0, p0

    :catch_0
    :cond_1
    return v0
.end method

.method public static isRightDisplayCutOut(Landroid/content/Context;)Z
    .locals 2

    .line 119
    invoke-static {}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmFactory;->isSidelingCenterCutout()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    .line 124
    :cond_0
    :try_start_0
    sget-object p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmFactory;->SPECNAME:Ljava/lang/String;

    if-eqz p0, :cond_1

    .line 125
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "@right"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    move v0, p0

    :catch_0
    :cond_1
    return v0
.end method

.method public static isSidelingCenterCutout()Z
    .locals 2

    .line 160
    sget-object v0, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_SPECIAL_ALGORITHM:Ljava/lang/String;

    const-string v1, "SidelingCenterCutout"

    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isUnderDisplayCamera(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    .line 136
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "config_mainBuiltInDisplayCutoutForUDC"

    const-string/jumbo v3, "string"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    .line 137
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 138
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    move v0, p0

    :catch_0
    :cond_1
    return v0
.end method

.method public static makeAlgorithm(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;
    .locals 2

    .line 34
    const-class v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->isNoCutout()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    new-instance p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmNoCutout;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmNoCutout;-><init>()V

    goto :goto_0

    .line 36
    :cond_0
    invoke-static {}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmFactory;->isSidelingCenterCutout()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->isShowingMainDisplay()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    new-instance p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmSidelingCenterCutout;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmSidelingCenterCutout;-><init>()V

    goto :goto_0

    .line 38
    :cond_1
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmFactory;->isCenterDisplayCutOut(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 39
    new-instance p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmCenterCutout;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmCenterCutout;-><init>()V

    goto :goto_0

    .line 40
    :cond_2
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmFactory;->isDualSideDisplayCutOut(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 41
    new-instance p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmDualSideCutout;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmDualSideCutout;-><init>()V

    goto :goto_0

    .line 42
    :cond_3
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmFactory;->isLeftDisplayCutOut(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 43
    new-instance p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmLeftCutout;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmLeftCutout;-><init>()V

    goto :goto_0

    .line 44
    :cond_4
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmFactory;->isRightDisplayCutOut(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 45
    new-instance p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmRightCutout;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmRightCutout;-><init>()V

    goto :goto_0

    .line 47
    :cond_5
    new-instance p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmNoCutout;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmNoCutout;-><init>()V

    :goto_0
    return-object p0
.end method

.method public static shouldBeCalculatedByDualScreen()Z
    .locals 2

    .line 165
    sget-object v0, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_SPECIAL_ALGORITHM:Ljava/lang/String;

    const-string v1, "DualScreen"

    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method protected static updateAlgorithmConfigNameAndSpecString(Landroid/content/Context;Z)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "config_mainBuiltInDisplayCutout"

    goto :goto_0

    :cond_0
    const-string p1, "config_subBuiltInDisplayCutout"

    .line 54
    :goto_0
    sput-object p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmFactory;->CONFIG_NAME:Ljava/lang/String;

    .line 55
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmFactory;->updateSpecString(Landroid/content/Context;)V

    return-void
.end method

.method protected static updateSpecString(Landroid/content/Context;)V
    .locals 4

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmFactory;->CONFIG_NAME:Ljava/lang/String;

    const-string/jumbo v2, "string"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    sput-object p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmFactory;->SPECNAME:Ljava/lang/String;

    return-void
.end method
