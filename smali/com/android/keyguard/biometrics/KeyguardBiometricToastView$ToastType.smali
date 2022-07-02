.class public final enum Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;
.super Ljava/lang/Enum;
.source "KeyguardBiometricToastView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ToastType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

.field public static final enum Authenticating:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

.field public static final enum AuthenticationFail:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

.field public static final enum AuthenticationSuccess:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

.field public static final enum FingerprintAuthenticationFail:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

.field public static final enum FingerprintAuthenticationSuccess:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 56
    new-instance v0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    const-string v1, "Authenticating"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;->Authenticating:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    .line 57
    new-instance v1, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    const-string v3, "AuthenticationSuccess"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;->AuthenticationSuccess:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    .line 58
    new-instance v3, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    const-string v5, "AuthenticationFail"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;->AuthenticationFail:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    .line 59
    new-instance v5, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    const-string v7, "FingerprintAuthenticationSuccess"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;->FingerprintAuthenticationSuccess:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    .line 60
    new-instance v7, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    const-string v9, "FingerprintAuthenticationFail"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;->FingerprintAuthenticationFail:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 55
    sput-object v9, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;->$VALUES:[Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;
    .locals 1

    .line 55
    const-class v0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    return-object p0
.end method

.method public static values()[Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;
    .locals 1

    .line 55
    sget-object v0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;->$VALUES:[Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    invoke-virtual {v0}, [Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    return-object v0
.end method
