.class public Lcom/android/systemui/vibrate/VibratorLinear;
.super Lcom/android/systemui/vibrate/VibratorType;
.source "VibratorLinear.java"


# instance fields
.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/android/systemui/vibrate/VibratorType;-><init>()V

    return-void
.end method


# virtual methods
.method public playVibration(Lcom/android/systemui/vibrate/VibrationUtil;II)V
    .locals 0

    .line 12
    invoke-static {p2}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result p2

    .line 13
    invoke-virtual {p1, p3}, Lcom/android/systemui/vibrate/VibrationUtil;->covertToMagnitudeType(I)Landroid/os/VibrationEffect$SemMagnitudeType;

    move-result-object p1

    const/4 p3, -0x1

    .line 12
    invoke-static {p2, p3, p1}, Landroid/os/VibrationEffect;->semCreateHaptic(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    move-result-object p1

    .line 14
    iget-object p0, p0, Lcom/android/systemui/vibrate/VibratorLinear;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {p0, p1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    return-void
.end method

.method public setVibrator(Landroid/os/Vibrator;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/android/systemui/vibrate/VibratorLinear;->mVibrator:Landroid/os/Vibrator;

    return-void
.end method
