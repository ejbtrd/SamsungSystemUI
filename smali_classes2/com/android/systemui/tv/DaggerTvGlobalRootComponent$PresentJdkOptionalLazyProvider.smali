.class final Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$PresentJdkOptionalLazyProvider;
.super Ljava/lang/Object;
.source "DaggerTvGlobalRootComponent.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PresentJdkOptionalLazyProvider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "Ljava/util/Optional<",
        "Ldagger/Lazy<",
        "TT;>;>;>;"
    }
.end annotation


# instance fields
.field private final delegate:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "TT;>;)V"
        }
    .end annotation

    .line 2078
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2079
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$PresentJdkOptionalLazyProvider;->delegate:Ljavax/inject/Provider;

    return-void
.end method

.method static synthetic access$3100(Ljavax/inject/Provider;)Ljavax/inject/Provider;
    .locals 0

    .line 2075
    invoke-static {p0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$PresentJdkOptionalLazyProvider;->of(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p0

    return-object p0
.end method

.method private static of(Ljavax/inject/Provider;)Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/inject/Provider<",
            "TT;>;)",
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Ldagger/Lazy<",
            "TT;>;>;>;"
        }
    .end annotation

    .line 2088
    new-instance v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$PresentJdkOptionalLazyProvider;

    invoke-direct {v0, p0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$PresentJdkOptionalLazyProvider;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 2075
    invoke-virtual {p0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$PresentJdkOptionalLazyProvider;->get()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public get()Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ldagger/Lazy<",
            "TT;>;>;"
        }
    .end annotation

    .line 2084
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$PresentJdkOptionalLazyProvider;->delegate:Ljavax/inject/Provider;

    invoke-static {p0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method