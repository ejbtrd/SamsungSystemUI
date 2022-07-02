.class public Lcom/android/systemui/SamsungBatteryMeterDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SamsungBatteryMeterDrawable.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mBatteryFrameDarkColor:I

.field private final mBatteryFrameLightColor:I

.field private final mBatteryFramePaint:Landroid/graphics/Paint;

.field private mBatteryHealth:I

.field private mBatteryHeightForPrivacyIndicator:I

.field private final mBatteryLevelBackgroundDarkColor:I

.field private final mBatteryLevelBackgroundLightColor:I

.field private final mBatteryLevelBackgroundPaint:Landroid/graphics/Paint;

.field private mBatteryLevelColor:I

.field private final mBatteryLevelPaint:Landroid/graphics/Paint;

.field private final mBatteryLightningBoltDarkColor:I

.field private final mBatteryLightningBoltDarkPaint:Landroid/graphics/Paint;

.field private final mBatteryLightningBoltLightColor:I

.field private final mBatteryLightningBoltLightPaint:Landroid/graphics/Paint;

.field private mBatteryOnline:I

.field private mBatteryStatus:I

.field private mCharging:Z

.field private mColors:[I

.field private final mContext:Landroid/content/Context;

.field private final mCriticalLevel:I

.field private mFlagBlinkingNeeded:Z

.field private mFlagDrawIconTurn:Z

.field private mFrameOver95:Landroid/graphics/drawable/Drawable;

.field private mFrameUnder15:Landroid/graphics/drawable/Drawable;

.field private mHeight:I

.field private mIconTint:I

.field private mIntrinsicHeight:I

.field private mIntrinsicWidth:I

.field private mInvalidString:Ljava/lang/String;

.field private mInvalidTextHeight:F

.field private mInvalidTextPaint:Landroid/graphics/Paint;

.field private mIsDirectPowerMode:Z

.field private mLevel:I

.field private mOldDarkIntensity:F

.field private mPluggedIn:Z

.field private final mPostInvalidateHandler:Landroid/os/Handler;

.field private mWarningString:Ljava/lang/String;

.field private mWarningTextHeight:F

.field private final mWarningTextPaint:Landroid/graphics/Paint;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isEngOrUTBinary()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 7

    .line 151
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 p2, 0x0

    .line 82
    iput-boolean p2, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mIsDirectPowerMode:Z

    const/4 v0, 0x1

    .line 94
    iput v0, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mBatteryStatus:I

    const/4 v1, -0x1

    .line 97
    iput v1, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mIconTint:I

    .line 98
    iput v1, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mLevel:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 102
    iput v1, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mOldDarkIntensity:F

    .line 116
    iput-boolean v0, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mFlagDrawIconTurn:Z

    .line 118
    iput-boolean p2, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mFlagBlinkingNeeded:Z

    .line 120
    iput v0, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mBatteryHealth:I

    .line 122
    new-instance p2, Lcom/android/systemui/SamsungBatteryMeterDrawable$1;

    .line 123
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p2, p0, v1}, Lcom/android/systemui/SamsungBatteryMeterDrawable$1;-><init>(Lcom/android/systemui/SamsungBatteryMeterDrawable;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mPostInvalidateHandler:Landroid/os/Handler;

    const-string p2, "X"

    .line 141
    iput-object p2, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mInvalidString:Ljava/lang/String;

    .line 145
    iput v0, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mBatteryOnline:I

    .line 152
    iput-object p1, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mContext:Landroid/content/Context;

    .line 153
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 155
    invoke-direct {p0}, Lcom/android/systemui/SamsungBatteryMeterDrawable;->initColors()V

    const/4 v1, 0x4

    .line 157
    iput v1, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mCriticalLevel:I

    .line 159
    sget v1, Lcom/android/systemui/R$string;->battery_meter_very_low_overlay_symbol:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mWarningString:Ljava/lang/String;

    .line 160
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    const-string/jumbo v2, "sans-serif"

    .line 161
    invoke-static {v2, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    .line 162
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 163
    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 164
    iget-object v3, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mColors:[I

    array-length v4, v3

    if-le v4, v0, :cond_0

    .line 165
    aget v3, v3, v0

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 169
    :cond_0
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mInvalidTextPaint:Landroid/graphics/Paint;

    const v3, -0x17cbf7

    .line 170
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 171
    iget-object v1, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mInvalidTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 172
    iget-object v1, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mInvalidTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 175
    invoke-direct {p0}, Lcom/android/systemui/SamsungBatteryMeterDrawable;->loadDimens()V

    .line 178
    sget v1, Lcom/android/systemui/R$color;->status_bar_battery_frame_light_color:I

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mBatteryFrameLightColor:I

    .line 179
    sget v3, Lcom/android/systemui/R$color;->status_bar_battery_frame_dark_color:I

    invoke-virtual {p2, v3, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mBatteryFrameDarkColor:I

    .line 180
    iput v1, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mBatteryLevelColor:I

    .line 181
    sget v3, Lcom/android/systemui/R$color;->status_bar_battery_level_background_light_color:I

    invoke-virtual {p2, v3, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mBatteryLevelBackgroundLightColor:I

    .line 182
    sget v4, Lcom/android/systemui/R$color;->status_bar_battery_level_background_dark_color:I

    invoke-virtual {p2, v4, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mBatteryLevelBackgroundDarkColor:I

    .line 183
    sget v4, Lcom/android/systemui/R$color;->status_bar_battery_lightning_bolt_light_color:I

    invoke-virtual {p2, v4, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mBatteryLightningBoltLightColor:I

    .line 184
    sget v5, Lcom/android/systemui/R$color;->status_bar_battery_lightning_bolt_dark_color:I

    invoke-virtual {p2, v5, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mBatteryLightningBoltDarkColor:I

    .line 185
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mBatteryFramePaint:Landroid/graphics/Paint;

    .line 186
    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 187
    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 188
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mBatteryLevelPaint:Landroid/graphics/Paint;

    .line 189
    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setDither(Z)V

    const/4 v6, 0x0

    .line 190
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 191
    sget-object v6, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 192
    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 193
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 194
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mBatteryLevelBackgroundPaint:Landroid/graphics/Paint;

    .line 195
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 196
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 197
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 198
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mBatteryLightningBoltDarkPaint:Landroid/graphics/Paint;

    .line 199
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 200
    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 201
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mBatteryLightningBoltLightPaint:Landroid/graphics/Paint;

    .line 202
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 203
    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 205
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_battery_under_15:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mFrameUnder15:Landroid/graphics/drawable/Drawable;

    .line 206
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$drawable;->stat_sys_battery_over_95:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mFrameOver95:Landroid/graphics/drawable/Drawable;

    .line 208
    const-class p1, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 209
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {p1}, Lcom/android/systemui/knox/KnoxStateMonitor;->getBatteryLevelColourItem()[I

    move-result-object p1

    if-eqz p1, :cond_1

    .line 210
    invoke-virtual {p0}, Lcom/android/systemui/SamsungBatteryMeterDrawable;->updateStatusBarBatteryColour()V

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/SamsungBatteryMeterDrawable;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mFlagBlinkingNeeded:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/systemui/SamsungBatteryMeterDrawable;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mFlagDrawIconTurn:Z

    return p0
.end method

.method static synthetic access$102(Lcom/android/systemui/SamsungBatteryMeterDrawable;Z)Z
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mFlagDrawIconTurn:Z

    return p1
.end method

.method public static adjustAlpha(IF)I
    .locals 2

    .line 535
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 536
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 537
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 538
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    .line 539
    invoke-static {p1, v0, v1, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method private getColorForDarkIntensity(FII)I
    .locals 0

    .line 485
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private getColorForLevel(I)I
    .locals 4

    .line 412
    iget-boolean v0, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mPluggedIn:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mCharging:Z

    if-eqz v0, :cond_0

    .line 413
    iget p0, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mBatteryLevelColor:I

    return p0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 418
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mColors:[I

    array-length v3, v2

    if-ge v0, v3, :cond_3

    .line 419
    aget v1, v2, v0

    add-int/lit8 v3, v0, 0x1

    .line 420
    aget v3, v2, v3

    if-gt p1, v1, :cond_2

    .line 423
    array-length p1, v2

    add-int/lit8 p1, p1, -0x2

    if-ne v0, p1, :cond_1

    .line 424
    iget v1, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mIconTint:I

    goto :goto_1

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x2

    move v1, v3

    goto :goto_0

    .line 431
    :cond_3
    :goto_1
    const-class p1, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 432
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {p1}, Lcom/android/systemui/knox/KnoxStateMonitor;->getBatteryLevelColourItem()[I

    move-result-object p1

    if-eqz p1, :cond_4

    .line 433
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Knox change color of statusbar battery !! color = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SamsungBatteryMeterDrawable"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 438
    :cond_4
    iget p1, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mIconTint:I

    if-ne v1, p1, :cond_5

    iget v1, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mBatteryLevelColor:I

    :cond_5
    return v1
.end method

.method private getLinearGradientDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;IIFLandroid/graphics/LinearGradient;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 6

    .line 443
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    const/high16 p0, -0x1000000

    .line 444
    invoke-virtual {v5, p0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p0, 0x0

    .line 445
    invoke-virtual {v5, p0}, Landroid/graphics/Paint;->setDither(Z)V

    const/high16 v0, 0x41200000    # 10.0f

    .line 446
    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 447
    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 448
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 449
    invoke-virtual {v5, p6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 451
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 452
    invoke-virtual {p6, v0}, Landroid/graphics/LinearGradient;->getLocalMatrix(Landroid/graphics/Matrix;)Z

    int-to-float v3, p3

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, v3, v1

    int-to-float v4, p4

    div-float v1, v4, v1

    .line 453
    invoke-virtual {v0, p5, v2, v1}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 454
    invoke-virtual {p6, v0}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 455
    invoke-virtual {p2, p0, p0, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 457
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p4, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 458
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 459
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 460
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 462
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p2
.end method

.method private initColors()V
    .locals 9

    .line 215
    iget-object v0, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 216
    sget v1, Lcom/android/systemui/R$array;->batterymeter_color_levels:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 217
    sget v2, Lcom/android/systemui/R$array;->batterymeter_color_values:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 218
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    mul-int/lit8 v3, v2, 0x2

    .line 219
    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mColors:[I

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    .line 221
    iget-object v5, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mColors:[I

    mul-int/lit8 v6, v4, 0x2

    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    aput v7, v5, v6

    .line 222
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v5

    const/4 v7, 0x2

    if-ne v5, v7, :cond_0

    .line 223
    iget-object v5, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mColors:[I

    add-int/lit8 v6, v6, 0x1

    iget-object v7, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getThemeAttributeId(II)I

    move-result v8

    invoke-static {v7, v8}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v7

    aput v7, v5, v6

    goto :goto_1

    .line 225
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mColors:[I

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    aput v7, v5, v6

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 228
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 229
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private loadDimens()V
    .locals 3

    .line 588
    const-class v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    iget-object v1, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->status_bar_battery_icon_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mIntrinsicWidth:I

    .line 589
    iget-object v1, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->status_bar_battery_icon_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mIntrinsicHeight:I

    .line 592
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->shouldBeScaleLogicApplied()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 593
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->getScaleModel()Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 595
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;->getRatio()F

    move-result v0

    .line 596
    iget v1, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mIntrinsicWidth:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mIntrinsicWidth:I

    .line 597
    iget v1, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mIntrinsicHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mIntrinsicHeight:I

    .line 602
    :cond_0
    iget v0, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mIntrinsicWidth:I

    iget v1, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mIntrinsicHeight:I

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/android/systemui/SamsungBatteryMeterDrawable;->setBounds(IIII)V

    return-void
.end method

.method private updateLightningBoltColor(F)V
    .locals 2

    .line 527
    iget v0, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mBatteryLightningBoltLightColor:I

    iget v1, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mBatteryLightningBoltDarkColor:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/SamsungBatteryMeterDrawable;->getColorForDarkIntensity(FII)I

    move-result v0

    .line 528
    iget-object v1, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mBatteryLightningBoltLightPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 529
    iget v0, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mBatteryLightningBoltDarkColor:I

    iget v1, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mBatteryLightningBoltLightColor:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/SamsungBatteryMeterDrawable;->getColorForDarkIntensity(FII)I

    move-result p1

    .line 530
    iget-object p0, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mBatteryLightningBoltDarkPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 26

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 251
    iget-boolean v0, v7, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mIsDirectPowerMode:Z

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v9, 0x0

    if-nez v0, :cond_3

    iget v0, v7, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mBatteryStatus:I

    if-ne v0, v2, :cond_3

    iget v0, v7, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mBatteryHealth:I

    if-eq v0, v1, :cond_0

    const/4 v4, 0x7

    if-eq v0, v4, :cond_0

    const/16 v4, 0x8

    if-eq v0, v4, :cond_0

    const/4 v4, 0x6

    if-ne v0, v4, :cond_3

    .line 256
    :cond_0
    iput-boolean v3, v7, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mFlagBlinkingNeeded:Z

    .line 257
    sget-boolean v0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "battery icon blink for battery health... mFlagDrawIconTurn:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v7, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mFlagDrawIconTurn:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "SamsungBatteryMeterDrawable"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_1
    iget-object v0, v7, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mPostInvalidateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 261
    iget-object v0, v7, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mPostInvalidateHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 263
    :cond_2
    iget-boolean v0, v7, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mFlagDrawIconTurn:Z

    if-nez v0, :cond_4

    return-void

    .line 267
    :cond_3
    iput-boolean v9, v7, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mFlagBlinkingNeeded:Z

    .line 272
    :cond_4
    iget-boolean v0, v7, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mIsDirectPowerMode:Z

    if-eqz v0, :cond_5

    const/16 v0, 0x64

    goto :goto_0

    .line 274
    :cond_5
    iget v0, v7, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mBatteryOnline:I

    if-nez v0, :cond_6

    move v0, v9

    goto :goto_0

    .line 278
    :cond_6
    iget v0, v7, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mLevel:I

    :goto_0
    const/4 v4, -0x1

    if-ne v0, v4, :cond_7

    return-void

    .line 284
    :cond_7
    iget-object v4, v7, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mFrameOver95:Landroid/graphics/drawable/Drawable;

    new-instance v5, Landroid/graphics/BlendModeColorFilter;

    iget-object v6, v7, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mBatteryFramePaint:Landroid/graphics/Paint;

    .line 285
    invoke-virtual {v6}, Landroid/graphics/Paint;->getColor()I

    move-result v6

    sget-object v10, Landroid/graphics/BlendMode;->SRC_ATOP:Landroid/graphics/BlendMode;

    invoke-direct {v5, v6, v10}, Landroid/graphics/BlendModeColorFilter;-><init>(ILandroid/graphics/BlendMode;)V

    .line 284
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 286
    iget-object v4, v7, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mFrameOver95:Landroid/graphics/drawable/Drawable;

    iget v5, v7, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mWidth:I

    iget v6, v7, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mHeight:I

    invoke-virtual {v4, v9, v9, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/16 v4, 0x59

    const/16 v5, 0xff

    const/16 v6, 0x60

    if-ge v0, v6, :cond_8

    .line 288
    iget-object v10, v7, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mFrameOver95:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_1

    .line 290
    :cond_8
    iget-object v10, v7, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mFrameOver95:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 292
    :goto_1
    iget-object v10, v7, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mFrameUnder15:Landroid/graphics/drawable/Drawable;

    new-instance v11, Landroid/graphics/BlendModeColorFilter;

    .line 293
    iget v12, v7, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mCriticalLevel:I

    if-le v0, v12, :cond_9

    invoke-direct {v7, v0}, Lcom/android/systemui/SamsungBatteryMeterDrawable;->getColorForLevel(I)I

    move-result v12

    goto :goto_2

    :cond_9
    iget-object v12, v7, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mBatteryFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v12}, Landroid/graphics/Paint;->getColor()I

    move-result v12

    :goto_2
    sget-object v13, Landroid/graphics/BlendMode;->SRC_ATOP:Landroid/graphics/BlendMode;

    invoke-direct {v11, v12, v13}, Landroid/graphics/BlendModeColorFilter;-><init>(ILandroid/graphics/BlendMode;)V

    .line 292
    invoke-virtual {v10, v11}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 295
    iget-object v10, v7, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mFrameUnder15:Landroid/graphics/drawable/Drawable;

    iget v11, v7, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mWidth:I

    iget v12, v7, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mHeight:I

    invoke-virtual {v10, v9, v9, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 296
    iget v10, v7, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mCriticalLevel:I

    if-gt v0, v10, :cond_a

    .line 297
    iget-object v10, v7, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mFrameUnder15:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_3

    .line 299
    :cond_a
    iget-object v10, v7, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mFrameUnder15:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 301
    :goto_3
    iget-object v10, v7, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mFrameOver95:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    .line 302
    iget-object v11, v7, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mFrameOver95:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    .line 304
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 305
    new-instance v13, Landroid/graphics/Canvas;

    invoke-direct {v13, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 306
    iget-object v14, v7, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mFrameOver95:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v14, v13}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 307
    iget-object v14, v7, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mFrameUnder15:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v14, v13}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 309
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 310
    div-int/lit8 v14, v10, 0x2

    .line 311
    div-int/lit8 v15, v11, 0x2

    if-lt v0, v6, :cond_b

    move v4, v5

    goto :goto_4

    :cond_b
    if-ge v0, v6, :cond_c

    .line 319
    iget v4, v7, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mCriticalLevel:I

    if-le v0, v4, :cond_c

    const/16 v4, 0x59

    goto :goto_4

    :cond_c
    const/16 v4, 0x59

    const/16 v5, 0x59

    :goto_4
    move v3, v15

    move/from16 v16, v3

    :goto_5
    if-lez v3, :cond_e

    .line 327
    invoke-virtual {v12, v14, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v17

    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    if-lt v2, v4, :cond_d

    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    :cond_d
    add-int/lit8 v16, v16, -0x1

    add-int/lit8 v3, v3, -0x1

    const/4 v2, 0x4

    goto :goto_5

    :cond_e
    :goto_6
    move/from16 v2, v16

    move v1, v15

    move v3, v1

    :goto_7
    if-ge v3, v11, :cond_10

    .line 331
    invoke-virtual {v12, v14, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v17

    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    if-lt v9, v5, :cond_f

    goto :goto_8

    :cond_f
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, v3, 0x1

    const/4 v9, 0x0

    goto :goto_7

    :cond_10
    :goto_8
    move v3, v14

    move v5, v3

    :goto_9
    if-lez v3, :cond_12

    .line 335
    invoke-virtual {v12, v3, v15}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v9

    invoke-static {v9}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    if-lt v9, v4, :cond_11

    goto :goto_a

    :cond_11
    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_9

    :cond_12
    :goto_a
    move v3, v14

    :goto_b
    if-ge v14, v10, :cond_14

    add-int/lit8 v3, v3, 0x1

    .line 340
    invoke-virtual {v12, v14, v15}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v9

    invoke-static {v9}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    if-lt v9, v4, :cond_13

    goto :goto_c

    :cond_13
    add-int/lit8 v14, v14, 0x1

    goto :goto_b

    .line 342
    :cond_14
    :goto_c
    invoke-virtual {v13, v5, v2, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 344
    iget-object v1, v7, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mFrameOver95:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 345
    iget-object v1, v7, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mFrameUnder15:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-lt v0, v6, :cond_15

    move v3, v2

    goto :goto_d

    .line 351
    :cond_15
    iget-object v3, v7, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mColors:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    if-gt v0, v3, :cond_16

    move v3, v1

    goto :goto_d

    :cond_16
    add-int/lit8 v3, v0, -0xf

    int-to-float v3, v3

    const/high16 v4, 0x42a00000    # 80.0f

    div-float/2addr v3, v4

    .line 357
    :goto_d
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v3, v4

    .line 358
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 359
    iget v5, v13, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v3

    .line 362
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 363
    iget v9, v13, Landroid/graphics/Rect;->left:I

    iget v10, v13, Landroid/graphics/Rect;->top:I

    iget v11, v13, Landroid/graphics/Rect;->right:I

    invoke-virtual {v6, v9, v10, v11, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 364
    iget-object v9, v7, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mBatteryLevelBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v6, v9}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 367
    iget-object v6, v7, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mBatteryLevelPaint:Landroid/graphics/Paint;

    invoke-direct {v7, v0}, Lcom/android/systemui/SamsungBatteryMeterDrawable;->getColorForLevel(I)I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 368
    iget v6, v13, Landroid/graphics/Rect;->left:I

    iget v9, v13, Landroid/graphics/Rect;->right:I

    iget v10, v13, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v6, v5, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 369
    iget-object v5, v7, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mBatteryLevelPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v4, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 372
    iget v4, v7, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mBatteryOnline:I

    const v5, 0x3ef5c28f    # 0.48f

    const/high16 v6, 0x3f000000    # 0.5f

    if-nez v4, :cond_17

    .line 374
    iget v0, v7, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, v6

    .line 375
    iget v1, v7, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mHeight:I

    int-to-float v1, v1

    iget v2, v7, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mInvalidTextHeight:F

    add-float/2addr v1, v2

    mul-float/2addr v1, v5

    .line 376
    iget-object v2, v7, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mInvalidString:Ljava/lang/String;

    iget-object v3, v7, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mInvalidTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_10

    .line 377
    :cond_17
    iget-boolean v4, v7, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mIsDirectPowerMode:Z

    if-nez v4, :cond_19

    iget-boolean v4, v7, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mPluggedIn:Z

    if-eqz v4, :cond_18

    iget v9, v7, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mBatteryStatus:I

    const/4 v10, 0x5

    if-eq v9, v10, :cond_18

    const/4 v10, 0x3

    if-eq v9, v10, :cond_18

    const/4 v10, 0x4

    if-eq v9, v10, :cond_18

    goto :goto_e

    :cond_18
    if-nez v4, :cond_1c

    .line 401
    iget v1, v7, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mCriticalLevel:I

    if-gt v0, v1, :cond_1c

    .line 403
    iget v0, v7, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, v6

    .line 404
    iget v1, v7, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mHeight:I

    int-to-float v1, v1

    iget v2, v7, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mWarningTextHeight:F

    add-float/2addr v1, v2

    mul-float/2addr v1, v5

    .line 405
    iget-object v2, v7, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mWarningString:Ljava/lang/String;

    iget-object v3, v7, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_10

    .line 381
    :cond_19
    :goto_e
    iget-object v4, v7, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/systemui/R$drawable;->stat_sys_battery_charging:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 382
    iget-object v5, v7, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mBatteryLightningBoltLightPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getColor()I

    move-result v5

    .line 383
    iget-object v6, v7, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mBatteryLightningBoltDarkPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getColor()I

    move-result v6

    const/4 v9, 0x4

    new-array v10, v9, [I

    .line 385
    iget v9, v7, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mCriticalLevel:I

    if-gt v0, v9, :cond_1a

    move v11, v5

    goto :goto_f

    :cond_1a
    move v11, v6

    :goto_f
    const/4 v12, 0x0

    aput v11, v10, v12

    if-gt v0, v9, :cond_1b

    move v6, v5

    :cond_1b
    const/4 v0, 0x1

    aput v6, v10, v0

    const/4 v6, 0x2

    aput v5, v10, v6

    const/4 v9, 0x3

    aput v5, v10, v9

    const/4 v5, 0x4

    new-array v5, v5, [F

    aput v1, v5, v12

    int-to-float v1, v3

    .line 391
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float v3, v1, v3

    aput v3, v5, v0

    .line 392
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    aput v1, v5, v6

    const/4 v0, 0x3

    aput v2, v5, v0

    .line 394
    new-instance v6, Landroid/graphics/LinearGradient;

    const/16 v19, 0x0

    iget v0, v13, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    const/16 v21, 0x0

    iget v1, v13, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sget-object v25, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v18, v6

    move/from16 v20, v0

    move/from16 v22, v1

    move-object/from16 v23, v10

    move-object/from16 v24, v5

    invoke-direct/range {v18 .. v25}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 395
    iget-object v1, v7, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mContext:Landroid/content/Context;

    iget v3, v7, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mWidth:I

    iget v5, v7, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mHeight:I

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object v2, v4

    move v4, v5

    move v5, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/SamsungBatteryMeterDrawable;->getLinearGradientDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;IIFLandroid/graphics/LinearGradient;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 397
    iget v1, v7, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mWidth:I

    iget v2, v7, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mHeight:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 398
    invoke-virtual {v0, v8}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1c
    :goto_10
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 0

    .line 240
    iget p0, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mIntrinsicHeight:I

    return p0
.end method

.method public getIntrinsicWidth()I
    .locals 0

    .line 245
    iget p0, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mIntrinsicWidth:I

    return p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onBatteryLevelChanged(IZZIIIZ)V
    .locals 4

    const-string v0, "SamsungBatteryMeterDrawable"

    if-eqz p3, :cond_0

    .line 544
    iget-boolean v1, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mCharging:Z

    if-eq p3, v1, :cond_0

    const-string v1, "Battery icon update - Charging"

    .line 545
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    :cond_0
    iget v1, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mLevel:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, p1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mPluggedIn:Z

    if-ne v1, p2, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mCharging:Z

    if-ne v1, p3, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mIsDirectPowerMode:Z

    if-eq v1, p7, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v3

    .line 549
    :goto_1
    iput p1, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mLevel:I

    .line 550
    iput-boolean p2, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mPluggedIn:Z

    .line 551
    iput-boolean p3, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mCharging:Z

    .line 552
    iput-boolean p7, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mIsDirectPowerMode:Z

    if-nez v1, :cond_5

    .line 556
    iget p1, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mBatteryStatus:I

    if-ne p1, p4, :cond_4

    iget p1, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mBatteryHealth:I

    if-eq p1, p5, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3

    :cond_4
    :goto_2
    move v1, v3

    .line 558
    :cond_5
    :goto_3
    iput p4, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mBatteryStatus:I

    .line 559
    iput p5, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mBatteryHealth:I

    if-nez v1, :cond_7

    .line 564
    iget p1, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mBatteryOnline:I

    if-eq p1, p6, :cond_6

    move v2, v3

    :cond_6
    move v1, v2

    .line 566
    :cond_7
    iput p6, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mBatteryOnline:I

    if-eqz v1, :cond_9

    .line 570
    sget-boolean p1, Lcom/android/systemui/SamsungBatteryMeterDrawable;->DEBUG:Z

    if-eqz p1, :cond_8

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onBatteryLevelChanged() isSomethingChanged! Level:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mLevel:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", PluggedIn:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mPluggedIn:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", Charging:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mCharging:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", IsDirectPowerMode:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mIsDirectPowerMode:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", BatteryStatus:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mBatteryStatus:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", BatteryHealth:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mBatteryHealth:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", BatteryOnline:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mBatteryOnline:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    :cond_8
    iget-object p1, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mPostInvalidateHandler:Landroid/os/Handler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_9

    .line 575
    iget-object p0, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mPostInvalidateHandler:Landroid/os/Handler;

    invoke-virtual {p0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_9
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 3

    .line 581
    iget-object v0, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$drawable;->stat_sys_battery_under_15:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mFrameUnder15:Landroid/graphics/drawable/Drawable;

    .line 582
    iget-object v0, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$drawable;->stat_sys_battery_over_95:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mFrameOver95:Landroid/graphics/drawable/Drawable;

    .line 583
    invoke-direct {p0}, Lcom/android/systemui/SamsungBatteryMeterDrawable;->loadDimens()V

    .line 584
    invoke-virtual {p0}, Lcom/android/systemui/SamsungBatteryMeterDrawable;->postInvalidate()V

    return-void
.end method

.method protected postInvalidate()V
    .locals 3

    .line 234
    new-instance v0, Lcom/android/systemui/SamsungBatteryMeterDrawable$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/SamsungBatteryMeterDrawable$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/SamsungBatteryMeterDrawable;)V

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 235
    new-instance v0, Lcom/android/systemui/SamsungBatteryMeterDrawable$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/SamsungBatteryMeterDrawable$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/SamsungBatteryMeterDrawable;)V

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setBounds(IIII)V
    .locals 0

    sub-int/2addr p4, p2

    .line 467
    iput p4, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mHeight:I

    sub-int/2addr p3, p1

    .line 468
    iput p3, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mWidth:I

    int-to-float p1, p4

    .line 470
    iget-object p2, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/systemui/R$dimen;->battery_meter_text_size_ratio:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p2

    mul-float/2addr p1, p2

    .line 471
    iget-object p2, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 472
    iget-object p2, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float p2, p2

    iput p2, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mWarningTextHeight:F

    .line 475
    iget-object p2, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mInvalidTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 476
    iget p1, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mWarningTextHeight:F

    iput p1, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mInvalidTextHeight:F

    .line 480
    iget p1, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mHeight:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/SamsungBatteryMeterDrawable;->updateBatteryHeight(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setColors(FIIZ)V
    .locals 0

    .line 489
    iget p3, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mOldDarkIntensity:F

    cmpl-float p3, p1, p3

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    return-void

    .line 493
    :cond_0
    iput p2, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mIconTint:I

    .line 496
    iget p2, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mBatteryFrameLightColor:I

    iget p3, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mBatteryFrameDarkColor:I

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/SamsungBatteryMeterDrawable;->getColorForDarkIntensity(FII)I

    move-result p2

    .line 498
    iget-object p3, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mBatteryFramePaint:Landroid/graphics/Paint;

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 499
    iput p2, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mBatteryLevelColor:I

    .line 502
    iget p2, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mBatteryLevelBackgroundLightColor:I

    iget p3, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mBatteryLevelBackgroundDarkColor:I

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/SamsungBatteryMeterDrawable;->getColorForDarkIntensity(FII)I

    move-result p2

    .line 503
    iget-object p3, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mBatteryLevelBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 505
    invoke-direct {p0, p1}, Lcom/android/systemui/SamsungBatteryMeterDrawable;->updateLightningBoltColor(F)V

    .line 507
    iput p1, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mOldDarkIntensity:F

    .line 508
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setGrayBatteryIcon(FI)V
    .locals 2

    .line 514
    iput p2, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mIconTint:I

    const v0, 0x3eb33333    # 0.35f

    .line 518
    invoke-static {p2, v0}, Lcom/android/systemui/SamsungBatteryMeterDrawable;->adjustAlpha(IF)I

    move-result v0

    .line 519
    iget-object v1, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mBatteryLevelBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 520
    iget-object v0, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mBatteryFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 521
    iput p2, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mBatteryLevelColor:I

    .line 522
    invoke-direct {p0, p1}, Lcom/android/systemui/SamsungBatteryMeterDrawable;->updateLightningBoltColor(F)V

    .line 523
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public updateBatteryHeight(I)V
    .locals 1

    .line 636
    iget v0, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mBatteryHeightForPrivacyIndicator:I

    if-eq v0, p1, :cond_0

    .line 637
    iput p1, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mBatteryHeightForPrivacyIndicator:I

    .line 638
    const-class p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->getInputProperty()Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->setBatteryHeight(I)V

    :cond_0
    return-void
.end method

.method public updateStatusBarBatteryColour()V
    .locals 4

    .line 607
    const-class v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {v0}, Lcom/android/systemui/knox/KnoxStateMonitor;->getBatteryLevelColourItem()[I

    move-result-object v0

    const-string v1, "SamsungBatteryMeterDrawable"

    if-nez v0, :cond_1

    .line 609
    sget-boolean v0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "[KNOX] updateStatusBarBatteryColour(), getBatteryLevelColourItem is null"

    .line 610
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/SamsungBatteryMeterDrawable;->initColors()V

    goto :goto_0

    .line 613
    :cond_1
    sget-boolean v2, Lcom/android/systemui/SamsungBatteryMeterDrawable;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 614
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[KNOX] updateStatusBarBatteryColour(), colours="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    :cond_2
    iput-object v0, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable;->mColors:[I

    .line 617
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/SamsungBatteryMeterDrawable;->postInvalidate()V

    return-void
.end method
