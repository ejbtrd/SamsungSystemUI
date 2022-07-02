.class public Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;
.super Landroid/os/CountDownTimer;
.source "KeyguardBiometricsCountDownTimer.java"


# instance fields
.field private mBiometricMessageArea:Lcom/android/systemui/widget/SystemUITextView;

.field private final mBiometricType:I

.field private final mContext:Landroid/content/Context;

.field private final mFailedAttempts:I


# direct methods
.method public constructor <init>(Landroid/content/Context;JJLcom/android/systemui/widget/SystemUITextView;)V
    .locals 1

    .line 29
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 31
    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mContext:Landroid/content/Context;

    .line 32
    iput-object p6, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mBiometricMessageArea:Lcom/android/systemui/widget/SystemUITextView;

    .line 34
    const-class p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 35
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p6

    invoke-interface {p1, p6}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->getFailedBiometricUnlockAttempts(I)I

    move-result p6

    iput p6, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mFailedAttempts:I

    .line 36
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getBiometricType(I)I

    move-result p1

    iput p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mBiometricType:I

    .line 38
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "KeyguardBiometricsCountDownTimer( millisInFuture = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " , countDownInterval = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " , mFailedAttempts = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " , mBiometricType = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " )"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyguardBiometricsCountDownTimer"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    const-string v0, "KeyguardBiometricsCountDownTimer"

    const-string v1, "onFinish()"

    .line 77
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mBiometricMessageArea:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_0

    const-string v1, ""

    .line 79
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mBiometricMessageArea:Lcom/android/systemui/widget/SystemUITextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 82
    :cond_0
    const-class p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState()V

    return-void
.end method

.method public onTick(J)V
    .locals 5

    const-wide/16 v0, 0x3e8

    .line 46
    div-long/2addr p1, v0

    long-to-int p1, p1

    .line 48
    iget p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mBiometricType:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p2, v2, :cond_1

    const/16 v3, 0x100

    if-eq p2, v3, :cond_0

    .line 60
    iget-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v3, Lcom/android/systemui/R$plurals;->kg_too_many_failed_countdown_by_biometrics:I

    new-array v1, v1, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mFailedAttempts:I

    .line 62
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    .line 60
    invoke-virtual {p2, v3, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 55
    :cond_0
    iget-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v3, Lcom/android/systemui/R$plurals;->kg_too_many_failed_countdown_by_face:I

    new-array v1, v1, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mFailedAttempts:I

    .line 57
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    .line 55
    invoke-virtual {p2, v3, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 50
    :cond_1
    iget-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v3, Lcom/android/systemui/R$plurals;->kg_too_many_failed_countdown_by_fingerprint:I

    new-array v1, v1, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mFailedAttempts:I

    .line 52
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    .line 50
    invoke-virtual {p2, v3, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 65
    :goto_0
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mBiometricMessageArea:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz p0, :cond_2

    .line 69
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    const-string p0, "KeyguardBiometricsCountDownTimer"

    const-string p1, "onTick ( mBiometricMessageArea is null )"

    .line 71
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public stop()V
    .locals 2

    const-string v0, "KeyguardBiometricsCountDownTimer"

    const-string/jumbo v1, "stop()"

    .line 86
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mBiometricMessageArea:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_0

    const-string v1, ""

    .line 88
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mBiometricMessageArea:Lcom/android/systemui/widget/SystemUITextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    const/4 v0, 0x0

    .line 90
    iput-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->mBiometricMessageArea:Lcom/android/systemui/widget/SystemUITextView;

    .line 93
    :cond_0
    invoke-virtual {p0}, Landroid/os/CountDownTimer;->cancel()V

    return-void
.end method
