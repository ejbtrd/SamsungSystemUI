.class public Lcom/android/systemui/volume/util/ConfigurationWrapper;
.super Ljava/lang/Object;
.source "ConfigurationWrapper.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDensity:I

.field private mDisplayType:I

.field private mFontScale:F

.field private mLocale:Ljava/util/Locale;

.field private mNightMode:Z

.field private mOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/systemui/volume/util/ConfigurationWrapper;->mContext:Landroid/content/Context;

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/volume/util/ConfigurationWrapper;->mOrientation:I

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, p0, Lcom/android/systemui/volume/util/ConfigurationWrapper;->mDensity:I

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    iput v0, p0, Lcom/android/systemui/volume/util/ConfigurationWrapper;->mFontScale:F

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/android/systemui/volume/util/ConfigurationWrapper;->mLocale:Ljava/util/Locale;

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    iput v0, p0, Lcom/android/systemui/volume/util/ConfigurationWrapper;->mDisplayType:I

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/volume/util/ConfigurationWrapper;->mNightMode:Z

    return-void
.end method


# virtual methods
.method public isDensityOrFontScaleChanged()Z
    .locals 7

    .line 38
    iget-object v0, p0, Lcom/android/systemui/volume/util/ConfigurationWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 39
    iget-object v1, p0, Lcom/android/systemui/volume/util/ConfigurationWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 40
    iget-object v2, p0, Lcom/android/systemui/volume/util/ConfigurationWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 41
    iget-object v3, p0, Lcom/android/systemui/volume/util/ConfigurationWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v3, 0x30

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x20

    if-ne v3, v6, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    .line 43
    :goto_0
    iget v6, p0, Lcom/android/systemui/volume/util/ConfigurationWrapper;->mDensity:I

    if-ne v0, v6, :cond_2

    iget v6, p0, Lcom/android/systemui/volume/util/ConfigurationWrapper;->mFontScale:F

    cmpl-float v6, v1, v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/volume/util/ConfigurationWrapper;->mLocale:Ljava/util/Locale;

    if-ne v2, v6, :cond_2

    iget-boolean v6, p0, Lcom/android/systemui/volume/util/ConfigurationWrapper;->mNightMode:Z

    if-eq v3, v6, :cond_1

    goto :goto_1

    :cond_1
    return v5

    .line 44
    :cond_2
    :goto_1
    iput v0, p0, Lcom/android/systemui/volume/util/ConfigurationWrapper;->mDensity:I

    .line 45
    iput v1, p0, Lcom/android/systemui/volume/util/ConfigurationWrapper;->mFontScale:F

    .line 46
    iput-object v2, p0, Lcom/android/systemui/volume/util/ConfigurationWrapper;->mLocale:Ljava/util/Locale;

    .line 47
    iput-boolean v3, p0, Lcom/android/systemui/volume/util/ConfigurationWrapper;->mNightMode:Z

    return v4
.end method

.method public isDisplayTypeChanged()Z
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/android/systemui/volume/util/ConfigurationWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 55
    iget v1, p0, Lcom/android/systemui/volume/util/ConfigurationWrapper;->mDisplayType:I

    if-eq v0, v1, :cond_0

    .line 56
    iput v0, p0, Lcom/android/systemui/volume/util/ConfigurationWrapper;->mDisplayType:I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isOrientationChanged()Z
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/android/systemui/volume/util/ConfigurationWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 30
    iget v1, p0, Lcom/android/systemui/volume/util/ConfigurationWrapper;->mOrientation:I

    if-eq v0, v1, :cond_0

    .line 31
    iput v0, p0, Lcom/android/systemui/volume/util/ConfigurationWrapper;->mOrientation:I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
