.class public final synthetic Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardUpdateMonitorCallback$1$WhenMappings;
.super Ljava/lang/Object;
.source "KeyguardBiometricViewController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardUpdateMonitorCallback$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Landroid/hardware/biometrics/BiometricSourceType;->values()[Landroid/hardware/biometrics/BiometricSourceType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {v1}, Landroid/hardware/biometrics/BiometricSourceType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sput-object v0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardUpdateMonitorCallback$1$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
