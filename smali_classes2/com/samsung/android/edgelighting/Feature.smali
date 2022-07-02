.class public Lcom/samsung/android/edgelighting/Feature;
.super Ljava/lang/Object;
.source "Feature.java"


# static fields
.field public static final FEATURE_IS_CANVAS:Z

.field public static final FEATURE_IS_FOLDABLE:Z

.field public static final FEATURE_IS_TABLET:Z

.field public static final FEATURE_IS_TABLET_DEVICE:Z

.field public static final FEATURE_IS_TOP:Z

.field public static final FEATURE_WINNER:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_SUBDISPLAY_POLICY"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LOCKSCREEN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/edgelighting/Feature;->FEATURE_WINNER:Z

    .line 17
    invoke-static {}, Lcom/samsung/android/edgelighting/Feature;->isTabletModel()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/edgelighting/Feature;->FEATURE_IS_TABLET:Z

    .line 19
    invoke-static {}, Lcom/samsung/android/edgelighting/Feature;->isTopModel()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/edgelighting/Feature;->FEATURE_IS_TOP:Z

    .line 21
    invoke-static {}, Lcom/samsung/android/edgelighting/Feature;->isCanvas()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/edgelighting/Feature;->FEATURE_IS_CANVAS:Z

    .line 23
    invoke-static {}, Lcom/samsung/android/edgelighting/Feature;->isFoldable()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/edgelighting/Feature;->FEATURE_IS_FOLDABLE:Z

    .line 25
    invoke-static {}, Lcom/samsung/android/edgelighting/Feature;->isTablet()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/edgelighting/Feature;->FEATURE_IS_TABLET_DEVICE:Z

    return-void
.end method

.method private static isCanvas()Z
    .locals 3

    const-string/jumbo v0, "ro.product.device"

    .line 38
    invoke-static {v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 40
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "c1"

    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "c2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private static isFoldable()Z
    .locals 2

    .line 48
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_FOLDABLE_TYPE_FOLD"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isTablet()Z
    .locals 2

    const-string/jumbo v0, "ro.build.characteristics"

    .line 52
    invoke-static {v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "tablet"

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isTabletModel()Z
    .locals 2

    const-string/jumbo v0, "ro.build.characteristics"

    .line 33
    invoke-static {v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v1, "tablet"

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/edgelighting/Feature;->FEATURE_IS_TOP:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isTopModel()Z
    .locals 2

    .line 28
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_CONFIG_EDGE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "TOP"

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
