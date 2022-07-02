.class public Lcom/android/systemui/controller/BiometricPromptWrapperBixby;
.super Ljava/lang/Object;
.source "BiometricPromptWrapperBixby.java"


# instance fields
.field private final mBuilder:Landroid/hardware/biometrics/BiometricPrompt$Builder;

.field private mCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$NAvWsAGr5_gQZ3yXqzwz3lm01fk(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/controller/BiometricPromptWrapperBixby;->lambda$buildAndRun$0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/controller/BiometricPromptWrapperBixby;->mHandler:Landroid/os/Handler;

    .line 20
    new-instance v0, Lcom/android/systemui/controller/BiometricPromptWrapperBixby$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/controller/BiometricPromptWrapperBixby$1;-><init>(Lcom/android/systemui/controller/BiometricPromptWrapperBixby;)V

    iput-object v0, p0, Lcom/android/systemui/controller/BiometricPromptWrapperBixby;->mCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    .line 57
    iput-object p1, p0, Lcom/android/systemui/controller/BiometricPromptWrapperBixby;->mContext:Landroid/content/Context;

    .line 58
    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$Builder;

    invoke-direct {v0, p1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/controller/BiometricPromptWrapperBixby;->mBuilder:Landroid/hardware/biometrics/BiometricPrompt$Builder;

    return-void
.end method

.method private static synthetic lambda$buildAndRun$0(Ljava/lang/Runnable;)V
    .locals 0

    .line 68
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method


# virtual methods
.method public buildAndRun(Landroid/os/CancellationSignal;)V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/android/systemui/controller/BiometricPromptWrapperBixby;->mBuilder:Landroid/hardware/biometrics/BiometricPrompt$Builder;

    invoke-virtual {v0}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->build()Landroid/hardware/biometrics/BiometricPrompt;

    move-result-object v0

    .line 68
    sget-object v1, Lcom/android/systemui/controller/BiometricPromptWrapperBixby$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/systemui/controller/BiometricPromptWrapperBixby$$ExternalSyntheticLambda0;

    iget-object p0, p0, Lcom/android/systemui/controller/BiometricPromptWrapperBixby;->mCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    invoke-virtual {v0, p1, v1, p0}, Landroid/hardware/biometrics/BiometricPrompt;->authenticate(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V

    return-void
.end method

.method public initPrompt(Ljava/lang/String;Z)V
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/systemui/controller/BiometricPromptWrapperBixby;->mBuilder:Landroid/hardware/biometrics/BiometricPrompt$Builder;

    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object p0

    .line 63
    invoke-virtual {p0, p2}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setDeviceCredentialAllowed(Z)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    return-void
.end method
