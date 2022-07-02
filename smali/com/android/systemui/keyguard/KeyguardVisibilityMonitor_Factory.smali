.class public final Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor_Factory;
.super Ljava/lang/Object;
.source "KeyguardVisibilityMonitor_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;",
        ">;"
    }
.end annotation


# instance fields
.field private final executorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            ">;"
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
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor_Factory;->executorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            ">;)",
            "Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor_Factory;"
        }
    .end annotation

    .line 30
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor_Factory;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/android/systemui/util/concurrency/DelayableExecutor;)Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;
    .locals 1

    .line 34
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;-><init>(Lcom/android/systemui/util/concurrency/DelayableExecutor;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor_Factory;->executorProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor_Factory;->newInstance(Lcom/android/systemui/util/concurrency/DelayableExecutor;)Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor_Factory;->get()Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    move-result-object p0

    return-object p0
.end method
