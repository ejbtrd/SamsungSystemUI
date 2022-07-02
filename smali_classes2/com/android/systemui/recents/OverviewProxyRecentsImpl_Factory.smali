.class public final Lcom/android/systemui/recents/OverviewProxyRecentsImpl_Factory;
.super Ljava/lang/Object;
.source "OverviewProxyRecentsImpl_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/recents/OverviewProxyRecentsImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private final statusBarLazyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;>;>;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl_Factory;->statusBarLazyProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/android/systemui/recents/OverviewProxyRecentsImpl_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;>;>;)",
            "Lcom/android/systemui/recents/OverviewProxyRecentsImpl_Factory;"
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl_Factory;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/OverviewProxyRecentsImpl_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Ljava/util/Optional;)Lcom/android/systemui/recents/OverviewProxyRecentsImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;>;)",
            "Lcom/android/systemui/recents/OverviewProxyRecentsImpl;"
        }
    .end annotation

    .line 37
    new-instance v0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;-><init>(Ljava/util/Optional;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/recents/OverviewProxyRecentsImpl;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl_Factory;->statusBarLazyProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyRecentsImpl_Factory;->newInstance(Ljava/util/Optional;)Lcom/android/systemui/recents/OverviewProxyRecentsImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/recents/OverviewProxyRecentsImpl_Factory;->get()Lcom/android/systemui/recents/OverviewProxyRecentsImpl;

    move-result-object p0

    return-object p0
.end method
