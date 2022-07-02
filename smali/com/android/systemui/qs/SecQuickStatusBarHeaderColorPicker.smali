.class public Lcom/android/systemui/qs/SecQuickStatusBarHeaderColorPicker;
.super Ljava/lang/Object;
.source "SecQuickStatusBarHeaderColorPicker.java"


# instance fields
.field private mBgBrightnessValue:I

.field private mBgColor:I

.field private mFontBrightnessValue:I

.field private mFontColor:I

.field private mFontColorIntensity:F

.field private mIsDarkBgColor:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 37
    iput v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderColorPicker;->mFontBrightnessValue:I

    .line 41
    iput p2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderColorPicker;->mBgColor:I

    .line 42
    invoke-direct {p0, p2}, Lcom/android/systemui/qs/SecQuickStatusBarHeaderColorPicker;->getBrightnessValue(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderColorPicker;->mBgBrightnessValue:I

    .line 43
    invoke-direct {p0, p2}, Lcom/android/systemui/qs/SecQuickStatusBarHeaderColorPicker;->isDarkColorByBrightnessValue(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderColorPicker;->mIsDarkBgColor:Z

    .line 45
    iput p3, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderColorPicker;->mFontColor:I

    .line 46
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/SecQuickStatusBarHeaderColorPicker;->calculateFontColorIntensity(Landroid/content/Context;)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderColorPicker;->mFontColorIntensity:F

    .line 48
    invoke-direct {p0}, Lcom/android/systemui/qs/SecQuickStatusBarHeaderColorPicker;->printLog()V

    return-void
.end method

.method private calculateFontColorIntensity(Landroid/content/Context;)F
    .locals 3

    .line 69
    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->isOpenTheme(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    .line 70
    iget p1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderColorPicker;->mFontColor:I

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/SecQuickStatusBarHeaderColorPicker;->getBrightnessValue(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderColorPicker;->mFontBrightnessValue:I

    const/16 v2, 0x32

    if-ge p1, v2, :cond_0

    return v1

    :cond_0
    const/16 v2, 0xc8

    if-le p1, v2, :cond_1

    return v0

    .line 77
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQuickStatusBarHeaderColorPicker;->isDarkPanelBgColor()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0
.end method

.method private getBrightnessValue(I)I
    .locals 7

    shr-int/lit8 p0, p1, 0x10

    and-int/lit16 p0, p0, 0xff

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 p1, p1, 0xff

    mul-int/2addr p0, p0

    int-to-double v1, p0

    const-wide v3, 0x3fced916872b020cL    # 0.241

    mul-double/2addr v1, v3

    mul-int/2addr v0, v0

    int-to-double v3, v0

    const-wide v5, 0x3fe61cac083126e9L    # 0.691

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    mul-int/2addr p1, p1

    int-to-double p0, p1

    const-wide v3, 0x3fb16872b020c49cL    # 0.068

    mul-double/2addr p0, v3

    add-double/2addr v1, p0

    .line 84
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method private isDarkColorByBrightnessValue(I)Z
    .locals 0

    const/16 p0, 0x82

    if-ge p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private printLog()V
    .locals 2

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BgColor:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderColorPicker;->mBgColor:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", BgBrightnessValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderColorPicker;->mBgBrightnessValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", IsDarkBgColor:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderColorPicker;->mIsDarkBgColor:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", FontColor:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderColorPicker;->mFontColor:I

    .line 95
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", FontBrightnessValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderColorPicker;->mFontBrightnessValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", FontColorIntensity:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderColorPicker;->mFontColorIntensity:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 98
    iget p0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderColorPicker;->mFontColorIntensity:F

    const/4 v1, 0x0

    invoke-static {v1, p0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "(White)"

    goto :goto_0

    :cond_0
    const-string p0, "(Black)"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SecQuickStatusBarHeaderColorPicker"

    .line 92
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getColorIntensity()F
    .locals 0

    .line 56
    iget p0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderColorPicker;->mFontColorIntensity:F

    return p0
.end method

.method public isDarkPanelBgColor()Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderColorPicker;->mIsDarkBgColor:Z

    return p0
.end method
