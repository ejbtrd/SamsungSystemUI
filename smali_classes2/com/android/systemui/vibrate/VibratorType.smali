.class public abstract Lcom/android/systemui/vibrate/VibratorType;
.super Ljava/lang/Object;
.source "VibratorType.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static create(I)Lcom/android/systemui/vibrate/VibratorType;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 23
    new-instance p0, Lcom/android/systemui/vibrate/VibratorNone;

    invoke-direct {p0}, Lcom/android/systemui/vibrate/VibratorNone;-><init>()V

    return-object p0

    .line 17
    :cond_0
    new-instance p0, Lcom/android/systemui/vibrate/VibratorCoinDC;

    invoke-direct {p0}, Lcom/android/systemui/vibrate/VibratorCoinDC;-><init>()V

    return-object p0

    .line 20
    :cond_1
    new-instance p0, Lcom/android/systemui/vibrate/VibratorLinear;

    invoke-direct {p0}, Lcom/android/systemui/vibrate/VibratorLinear;-><init>()V

    return-object p0
.end method


# virtual methods
.method abstract playVibration(Lcom/android/systemui/vibrate/VibrationUtil;II)V
.end method

.method abstract setVibrator(Landroid/os/Vibrator;)V
.end method
