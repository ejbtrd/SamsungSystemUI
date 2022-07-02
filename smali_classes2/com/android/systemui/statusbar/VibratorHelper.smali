.class public Lcom/android/systemui/statusbar/VibratorHelper;
.super Ljava/lang/Object;
.source "VibratorHelper.java"


# static fields
.field private static final STATUS_BAR_VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;


# instance fields
.field private final DC_MOTOR_VIBRATION_INDEX:I

.field private final GESTURE_VIBRATION_INDEX:I

.field private final mContext:Landroid/content/Context;

.field private mHapticFeedbackEnabled:Z

.field private mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private final mVibrationObserver:Landroid/database/ContentObserver;

.field private final mVibrator:Landroid/os/Vibrator;


# direct methods
.method public static synthetic $r8$lambda$0UHPBONfkg1aPx3TiD7FKYRLLts(Lcom/android/systemui/statusbar/VibratorHelper;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/VibratorHelper;->lambda$vibrate$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$XKO2q7ZyYnuz1SCdbq2SvpnLT1Y(Lcom/android/systemui/statusbar/VibratorHelper;Landroid/os/VibrationEffect;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/VibratorHelper;->lambda$vibrate$1(Landroid/os/VibrationEffect;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 46
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    .line 48
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0xd

    .line 49
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/VibratorHelper;->STATUS_BAR_VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/SettingsHelper;)V
    .locals 3

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/android/systemui/statusbar/VibratorHelper$1;

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/VibratorHelper$1;-><init>(Lcom/android/systemui/statusbar/VibratorHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/VibratorHelper;->mVibrationObserver:Landroid/database/ContentObserver;

    const/16 v1, 0x17

    .line 61
    iput v1, p0, Lcom/android/systemui/statusbar/VibratorHelper;->GESTURE_VIBRATION_INDEX:I

    const/16 v1, 0x64

    .line 63
    iput v1, p0, Lcom/android/systemui/statusbar/VibratorHelper;->DC_MOTOR_VIBRATION_INDEX:I

    .line 71
    iput-object p1, p0, Lcom/android/systemui/statusbar/VibratorHelper;->mContext:Landroid/content/Context;

    .line 72
    const-class v1, Landroid/os/Vibrator;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/android/systemui/statusbar/VibratorHelper;->mVibrator:Landroid/os/Vibrator;

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "haptic_feedback_enabled"

    .line 75
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    .line 74
    invoke-virtual {p1, v1, v2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const/4 p1, 0x0

    .line 77
    invoke-virtual {v0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 78
    iput-object p2, p0, Lcom/android/systemui/statusbar/VibratorHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/VibratorHelper;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/systemui/statusbar/VibratorHelper;->updateHapticFeedBackEnabled()V

    return-void
.end method

.method private getVibrationIndex(Z)I
    .locals 0

    if-eqz p1, :cond_0

    const/16 p0, 0x64

    .line 121
    invoke-static {p0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0x17

    .line 123
    invoke-static {p0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result p0

    return p0
.end method

.method private synthetic lambda$vibrate$0(I)V
    .locals 1

    .line 84
    iget-object p0, p0, Lcom/android/systemui/statusbar/VibratorHelper;->mVibrator:Landroid/os/Vibrator;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/os/VibrationEffect;->get(IZ)Landroid/os/VibrationEffect;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/statusbar/VibratorHelper;->STATUS_BAR_VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {p0, p1, v0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    return-void
.end method

.method private synthetic lambda$vibrate$1(Landroid/os/VibrationEffect;)V
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/systemui/statusbar/VibratorHelper;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {p0, p1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    return-void
.end method

.method private updateHapticFeedBackEnabled()V
    .locals 4

    .line 90
    iget-object v0, p0, Lcom/android/systemui/statusbar/VibratorHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "haptic_feedback_enabled"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/VibratorHelper;->mHapticFeedbackEnabled:Z

    return-void
.end method

.method private vibrate(Landroid/os/VibrationEffect;)V
    .locals 1

    .line 96
    new-instance v0, Lcom/android/systemui/statusbar/VibratorHelper$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/VibratorHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/VibratorHelper;Landroid/os/VibrationEffect;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public isSupportDCMotorHapticFeedback()Z
    .locals 2

    .line 129
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_DC_MOTOR_HAPTIC_FEEDBACK:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/VibratorHelper;->mVibrator:Landroid/os/Vibrator;

    .line 130
    invoke-virtual {p0}, Landroid/os/Vibrator;->semGetSupportedVibrationType()I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public vibrate(I)V
    .locals 1

    .line 82
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/VibratorHelper;->mHapticFeedbackEnabled:Z

    if-eqz v0, :cond_0

    .line 83
    new-instance v0, Lcom/android/systemui/statusbar/VibratorHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/VibratorHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/VibratorHelper;I)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public vibrateButton()V
    .locals 3

    .line 111
    iget-object v0, p0, Lcom/android/systemui/statusbar/VibratorHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isHapticFeedbackEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 112
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/VibratorHelper;->getVibrationIndex(Z)I

    move-result v0

    const/4 v1, -0x1

    sget-object v2, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_TOUCH:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-static {v0, v1, v2}, Landroid/os/VibrationEffect;->semCreateWaveform(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    move-result-object v0

    .line 114
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/VibratorHelper;->vibrate(Landroid/os/VibrationEffect;)V

    :cond_0
    return-void
.end method

.method public vibrateGesture()V
    .locals 3

    .line 102
    iget-object v0, p0, Lcom/android/systemui/statusbar/VibratorHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isGestureVibrationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/VibratorHelper;->isSupportDCMotorHapticFeedback()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/VibratorHelper;->getVibrationIndex(Z)I

    move-result v0

    const/4 v1, -0x1

    sget-object v2, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_TOUCH:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-static {v0, v1, v2}, Landroid/os/VibrationEffect;->semCreateWaveform(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    move-result-object v0

    .line 105
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/VibratorHelper;->vibrate(Landroid/os/VibrationEffect;)V

    :cond_0
    return-void
.end method
