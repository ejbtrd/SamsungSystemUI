.class public final Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule_ProvideBRDispatcherExecutorFactory;
.super Ljava/lang/Object;
.source "SysUIConcurrencyModule_ProvideBRDispatcherExecutorFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Ljava/util/concurrent/Executor;",
        ">;"
    }
.end annotation


# instance fields
.field private final looperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
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
            "Landroid/os/Looper;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule_ProvideBRDispatcherExecutorFactory;->looperProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule_ProvideBRDispatcherExecutorFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;)",
            "Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule_ProvideBRDispatcherExecutorFactory;"
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule_ProvideBRDispatcherExecutorFactory;

    invoke-direct {v0, p0}, Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule_ProvideBRDispatcherExecutorFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideBRDispatcherExecutor(Landroid/os/Looper;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 37
    invoke-static {p0}, Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule;->provideBRDispatcherExecutor(Landroid/os/Looper;)Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/Executor;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule_ProvideBRDispatcherExecutorFactory;->get()Ljava/util/concurrent/Executor;

    move-result-object p0

    return-object p0
.end method

.method public get()Ljava/util/concurrent/Executor;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule_ProvideBRDispatcherExecutorFactory;->looperProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Looper;

    invoke-static {p0}, Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule_ProvideBRDispatcherExecutorFactory;->provideBRDispatcherExecutor(Landroid/os/Looper;)Ljava/util/concurrent/Executor;

    move-result-object p0

    return-object p0
.end method
