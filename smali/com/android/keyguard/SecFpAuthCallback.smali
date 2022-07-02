.class public Lcom/android/keyguard/SecFpAuthCallback;
.super Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
.source "SecFpAuthCallback.java"


# instance fields
.field private final mCallbackSeq:I

.field private final mDispatcher:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/util/function/Consumer<",
            "Lcom/android/keyguard/SecFpMsg;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$5F7BnUFS0czmD9IKf0BPRHNviUc(Lcom/android/keyguard/SecFpAuthCallback;Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/SecFpAuthCallback;->lambda$onAuthenticationSucceeded$1(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$76hFM2GBygOwN2AW4jj9AAkY3Vg(Lcom/android/keyguard/SecFpAuthCallback;ILjava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/SecFpAuthCallback;->lambda$onAuthenticationAcquired$4(ILjava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7L33eoPNFx62i_pfseU4eCuYOjc(Lcom/android/keyguard/SecFpAuthCallback;ILjava/lang/CharSequence;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/SecFpAuthCallback;->lambda$onAuthenticationHelp$2(ILjava/lang/CharSequence;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$F_IHbt78LY1NitCtvPIUzttm3sw(Lcom/android/keyguard/SecFpAuthCallback;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/SecFpAuthCallback;->lambda$onAuthenticationFailed$0(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_fgnHqwnMFKkVgm3FPhCBQyAvGg(Lcom/android/keyguard/SecFpAuthCallback;ILjava/lang/CharSequence;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/SecFpAuthCallback;->lambda$onAuthenticationError$3(ILjava/lang/CharSequence;Ljava/util/function/Consumer;)V

    return-void
.end method

.method constructor <init>(ILjava/util/function/Consumer;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer<",
            "Lcom/android/keyguard/SecFpMsg;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;-><init>()V

    .line 19
    iput p1, p0, Lcom/android/keyguard/SecFpAuthCallback;->mCallbackSeq:I

    .line 20
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/keyguard/SecFpAuthCallback;->mDispatcher:Ljava/lang/ref/WeakReference;

    .line 21
    iput-object p3, p0, Lcom/android/keyguard/SecFpAuthCallback;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic lambda$onAuthenticationAcquired$4(ILjava/util/function/Consumer;)V
    .locals 2

    .line 56
    iget p0, p0, Lcom/android/keyguard/SecFpAuthCallback;->mCallbackSeq:I

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1, v1}, Lcom/android/keyguard/SecFpMsg;->obtain(IIILjava/lang/CharSequence;Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)Lcom/android/keyguard/SecFpMsg;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$onAuthenticationError$3(ILjava/lang/CharSequence;Ljava/util/function/Consumer;)V
    .locals 2

    .line 49
    iget p0, p0, Lcom/android/keyguard/SecFpAuthCallback;->mCallbackSeq:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, p2, v1}, Lcom/android/keyguard/SecFpMsg;->obtain(IIILjava/lang/CharSequence;Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)Lcom/android/keyguard/SecFpMsg;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$onAuthenticationFailed$0(Ljava/util/function/Consumer;)V
    .locals 3

    .line 27
    iget p0, p0, Lcom/android/keyguard/SecFpAuthCallback;->mCallbackSeq:I

    const/4 v0, 0x3

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {v0, p0, v1, v2, v2}, Lcom/android/keyguard/SecFpMsg;->obtain(IIILjava/lang/CharSequence;Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)Lcom/android/keyguard/SecFpMsg;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$onAuthenticationHelp$2(ILjava/lang/CharSequence;Ljava/util/function/Consumer;)V
    .locals 2

    .line 42
    iget p0, p0, Lcom/android/keyguard/SecFpAuthCallback;->mCallbackSeq:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, p2, v1}, Lcom/android/keyguard/SecFpMsg;->obtain(IIILjava/lang/CharSequence;Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)Lcom/android/keyguard/SecFpMsg;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$onAuthenticationSucceeded$1(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;Ljava/util/function/Consumer;)V
    .locals 3

    .line 36
    iget p0, p0, Lcom/android/keyguard/SecFpAuthCallback;->mCallbackSeq:I

    const/4 v0, 0x2

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {v0, p0, v1, v2, p1}, Lcom/android/keyguard/SecFpMsg;->obtain(IIILjava/lang/CharSequence;Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)Lcom/android/keyguard/SecFpMsg;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onAuthenticationAcquired(I)V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/android/keyguard/SecFpAuthCallback;->mDispatcher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Consumer;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/SecFpAuthCallback$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/keyguard/SecFpAuthCallback$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/SecFpAuthCallback;I)V

    .line 56
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/android/keyguard/SecFpAuthCallback;->mDispatcher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Consumer;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/SecFpAuthCallback$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/keyguard/SecFpAuthCallback$$ExternalSyntheticLambda3;-><init>(Lcom/android/keyguard/SecFpAuthCallback;ILjava/lang/CharSequence;)V

    .line 49
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/android/keyguard/SecFpAuthCallback;->mDispatcher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Consumer;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/SecFpAuthCallback$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/keyguard/SecFpAuthCallback$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/SecFpAuthCallback;)V

    .line 27
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/android/keyguard/SecFpAuthCallback;->mDispatcher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Consumer;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/SecFpAuthCallback$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/keyguard/SecFpAuthCallback$$ExternalSyntheticLambda2;-><init>(Lcom/android/keyguard/SecFpAuthCallback;ILjava/lang/CharSequence;)V

    .line 42
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/android/keyguard/SecFpAuthCallback;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 33
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/SecFpAuthCallback;->mDispatcher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Consumer;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/SecFpAuthCallback$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/android/keyguard/SecFpAuthCallback$$ExternalSyntheticLambda4;-><init>(Lcom/android/keyguard/SecFpAuthCallback;Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V

    .line 36
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method
