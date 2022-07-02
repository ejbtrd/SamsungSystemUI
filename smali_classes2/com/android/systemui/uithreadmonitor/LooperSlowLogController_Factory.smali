.class public final Lcom/android/systemui/uithreadmonitor/LooperSlowLogController_Factory;
.super Ljava/lang/Object;
.source "LooperSlowLogController_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;",
        ">;"
    }
.end annotation


# instance fields
.field private final dumpManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpManager;",
            ">;"
        }
    .end annotation
.end field

.field private final executorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private final mainLooperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpManager;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController_Factory;->executorProvider:Ljavax/inject/Provider;

    .line 28
    iput-object p2, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController_Factory;->mainLooperProvider:Ljavax/inject/Provider;

    .line 29
    iput-object p3, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController_Factory;->dumpManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/uithreadmonitor/LooperSlowLogController_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpManager;",
            ">;)",
            "Lcom/android/systemui/uithreadmonitor/LooperSlowLogController_Factory;"
        }
    .end annotation

    .line 39
    new-instance v0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/android/systemui/util/concurrency/DelayableExecutor;Landroid/os/Looper;Lcom/android/systemui/dump/DumpManager;)Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;
    .locals 1

    .line 44
    new-instance v0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;-><init>(Lcom/android/systemui/util/concurrency/DelayableExecutor;Landroid/os/Looper;Lcom/android/systemui/dump/DumpManager;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController_Factory;->executorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iget-object v1, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController_Factory;->mainLooperProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Looper;

    iget-object p0, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController_Factory;->dumpManagerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/dump/DumpManager;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController_Factory;->newInstance(Lcom/android/systemui/util/concurrency/DelayableExecutor;Landroid/os/Looper;Lcom/android/systemui/dump/DumpManager;)Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController_Factory;->get()Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

    move-result-object p0

    return-object p0
.end method