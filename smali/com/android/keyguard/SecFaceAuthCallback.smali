.class public Lcom/android/keyguard/SecFaceAuthCallback;
.super Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;
.source "SecFaceAuthCallback.java"


# instance fields
.field private final mDispatcher:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/util/function/Consumer<",
            "Lcom/android/keyguard/SecFaceMsg;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$W_Q0TLjf3hk1dK3VWJCwZAV3plY(ILjava/lang/CharSequence;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/keyguard/SecFaceAuthCallback;->lambda$onAuthenticationHelp$2(ILjava/lang/CharSequence;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$acy89N-jbsGP70uUpluzrQYWoI4(ILjava/lang/CharSequence;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/keyguard/SecFaceAuthCallback;->lambda$onAuthenticationError$3(ILjava/lang/CharSequence;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$c_jNlPbDKJ6OKQgrMOE6MOg6laU(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0}, Lcom/android/keyguard/SecFaceAuthCallback;->lambda$onAuthenticationFailed$0(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ipopgVNNunslu32RjfOX276UVKw(Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/keyguard/SecFaceAuthCallback;->lambda$onAuthenticationSucceeded$1(Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mnbUPj0yTSZzKZpsvSRH4VS882Y(ILjava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/keyguard/SecFaceAuthCallback;->lambda$onAuthenticationAcquired$4(ILjava/util/function/Consumer;)V

    return-void
.end method

.method constructor <init>(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/keyguard/SecFaceMsg;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;-><init>()V

    .line 16
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/keyguard/SecFaceAuthCallback;->mDispatcher:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private static synthetic lambda$onAuthenticationAcquired$4(ILjava/util/function/Consumer;)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 48
    invoke-static {v0, p0, v1, v1}, Lcom/android/keyguard/SecFaceMsg;->obtain(IILjava/lang/CharSequence;Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;)Lcom/android/keyguard/SecFaceMsg;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$onAuthenticationError$3(ILjava/lang/CharSequence;Ljava/util/function/Consumer;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 41
    invoke-static {v0, p0, p1, v1}, Lcom/android/keyguard/SecFaceMsg;->obtain(IILjava/lang/CharSequence;Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;)Lcom/android/keyguard/SecFaceMsg;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$onAuthenticationFailed$0(Ljava/util/function/Consumer;)V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 22
    invoke-static {v0, v1, v2, v2}, Lcom/android/keyguard/SecFaceMsg;->obtain(IILjava/lang/CharSequence;Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;)Lcom/android/keyguard/SecFaceMsg;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$onAuthenticationHelp$2(ILjava/lang/CharSequence;Ljava/util/function/Consumer;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 34
    invoke-static {v0, p0, p1, v1}, Lcom/android/keyguard/SecFaceMsg;->obtain(IILjava/lang/CharSequence;Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;)Lcom/android/keyguard/SecFaceMsg;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$onAuthenticationSucceeded$1(Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;Ljava/util/function/Consumer;)V
    .locals 3

    const/4 v0, 0x2

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 28
    invoke-static {v0, v1, v2, p0}, Lcom/android/keyguard/SecFaceMsg;->obtain(IILjava/lang/CharSequence;Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;)Lcom/android/keyguard/SecFaceMsg;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onAuthenticationAcquired(I)V
    .locals 1

    .line 47
    iget-object p0, p0, Lcom/android/keyguard/SecFaceAuthCallback;->mDispatcher:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/function/Consumer;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/android/keyguard/SecFaceAuthCallback$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/keyguard/SecFaceAuthCallback$$ExternalSyntheticLambda0;-><init>(I)V

    .line 48
    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 1

    .line 40
    iget-object p0, p0, Lcom/android/keyguard/SecFaceAuthCallback;->mDispatcher:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/function/Consumer;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/android/keyguard/SecFaceAuthCallback$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2}, Lcom/android/keyguard/SecFaceAuthCallback$$ExternalSyntheticLambda2;-><init>(ILjava/lang/CharSequence;)V

    .line 41
    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 1

    .line 21
    iget-object p0, p0, Lcom/android/keyguard/SecFaceAuthCallback;->mDispatcher:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/function/Consumer;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/android/keyguard/SecFaceAuthCallback$$ExternalSyntheticLambda4;->INSTANCE:Lcom/android/keyguard/SecFaceAuthCallback$$ExternalSyntheticLambda4;

    .line 22
    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 1

    .line 33
    iget-object p0, p0, Lcom/android/keyguard/SecFaceAuthCallback;->mDispatcher:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/function/Consumer;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/android/keyguard/SecFaceAuthCallback$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2}, Lcom/android/keyguard/SecFaceAuthCallback$$ExternalSyntheticLambda1;-><init>(ILjava/lang/CharSequence;)V

    .line 34
    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onAuthenticationSucceeded(Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;)V
    .locals 1

    .line 27
    iget-object p0, p0, Lcom/android/keyguard/SecFaceAuthCallback;->mDispatcher:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/function/Consumer;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/android/keyguard/SecFaceAuthCallback$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/android/keyguard/SecFaceAuthCallback$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;)V

    .line 28
    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method
