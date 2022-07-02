.class synthetic Lcom/android/systemui/statusbar/KeyguardSecIndicationController$9;
.super Ljava/lang/Object;
.source "KeyguardSecIndicationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/KeyguardSecIndicationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$android$hardware$biometrics$BiometricSourceType:[I

.field static final synthetic $SwitchMap$com$android$systemui$statusbar$IndicationPosition:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 684
    invoke-static {}, Landroid/hardware/biometrics/BiometricSourceType;->values()[Landroid/hardware/biometrics/BiometricSourceType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$9;->$SwitchMap$android$hardware$biometrics$BiometricSourceType:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {v2}, Landroid/hardware/biometrics/BiometricSourceType;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$9;->$SwitchMap$android$hardware$biometrics$BiometricSourceType:[I

    sget-object v3, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {v3}, Landroid/hardware/biometrics/BiometricSourceType;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 355
    :catch_1
    invoke-static {}, Lcom/android/systemui/statusbar/IndicationPosition;->values()[Lcom/android/systemui/statusbar/IndicationPosition;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$9;->$SwitchMap$com$android$systemui$statusbar$IndicationPosition:[I

    :try_start_2
    sget-object v3, Lcom/android/systemui/statusbar/IndicationPosition;->DEFAULT:Lcom/android/systemui/statusbar/IndicationPosition;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$9;->$SwitchMap$com$android$systemui$statusbar$IndicationPosition:[I

    sget-object v2, Lcom/android/systemui/statusbar/IndicationPosition;->UPPER:Lcom/android/systemui/statusbar/IndicationPosition;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$9;->$SwitchMap$com$android$systemui$statusbar$IndicationPosition:[I

    sget-object v1, Lcom/android/systemui/statusbar/IndicationPosition;->BIOMERIC_ERROR:Lcom/android/systemui/statusbar/IndicationPosition;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method
