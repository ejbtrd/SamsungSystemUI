.class public Lcom/android/systemui/vibrate/VibrationUtil;
.super Ljava/lang/Object;
.source "VibrationUtil.java"


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mVibratorType:Lcom/android/systemui/vibrate/VibratorType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vibrate/VibrationUtil;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const-string/jumbo v0, "vibrator"

    .line 31
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    if-eqz p1, :cond_1

    .line 33
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_HAPTIC_FEEDBACK_ON_DC_MOTOR:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {p1}, Landroid/os/Vibrator;->semGetSupportedVibrationType()I

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    .line 35
    invoke-static {v0}, Lcom/android/systemui/vibrate/VibratorType;->create(I)Lcom/android/systemui/vibrate/VibratorType;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vibrate/VibrationUtil;->mVibratorType:Lcom/android/systemui/vibrate/VibratorType;

    goto :goto_0

    .line 37
    :cond_0
    invoke-static {v1}, Lcom/android/systemui/vibrate/VibratorType;->create(I)Lcom/android/systemui/vibrate/VibratorType;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vibrate/VibrationUtil;->mVibratorType:Lcom/android/systemui/vibrate/VibratorType;

    .line 39
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/vibrate/VibrationUtil;->mVibratorType:Lcom/android/systemui/vibrate/VibratorType;

    invoke-virtual {p0, p1}, Lcom/android/systemui/vibrate/VibratorType;->setVibrator(Landroid/os/Vibrator;)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 41
    invoke-static {p1}, Lcom/android/systemui/vibrate/VibratorType;->create(I)Lcom/android/systemui/vibrate/VibratorType;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/vibrate/VibrationUtil;->mVibratorType:Lcom/android/systemui/vibrate/VibratorType;

    :goto_1
    return-void
.end method

.method private checkVibrationIndex(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/vibrate/VibrationUtil;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method covertToMagnitudeType(I)Landroid/os/VibrationEffect$SemMagnitudeType;
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    .line 74
    sget-object p0, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_TOUCH:Landroid/os/VibrationEffect$SemMagnitudeType;

    return-object p0

    .line 71
    :cond_0
    sget-object p0, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_MAX:Landroid/os/VibrationEffect$SemMagnitudeType;

    return-object p0

    .line 68
    :cond_1
    sget-object p0, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_TOUCH:Landroid/os/VibrationEffect$SemMagnitudeType;

    return-object p0
.end method

.method public isSupportVibration()Z
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/systemui/vibrate/VibrationUtil;->mVibratorType:Lcom/android/systemui/vibrate/VibratorType;

    instance-of p0, p0, Lcom/android/systemui/vibrate/VibratorLinear;

    return p0
.end method

.method public playVibration(II)V
    .locals 1

    .line 46
    invoke-direct {p0, p1}, Lcom/android/systemui/vibrate/VibrationUtil;->checkVibrationIndex(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/android/systemui/vibrate/VibrationUtil;->mVibratorType:Lcom/android/systemui/vibrate/VibratorType;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/systemui/vibrate/VibratorType;->playVibration(Lcom/android/systemui/vibrate/VibrationUtil;II)V

    :cond_0
    return-void
.end method
