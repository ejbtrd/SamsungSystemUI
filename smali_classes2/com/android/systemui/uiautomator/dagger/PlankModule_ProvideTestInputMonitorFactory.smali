.class public final Lcom/android/systemui/uiautomator/dagger/PlankModule_ProvideTestInputMonitorFactory;
.super Ljava/lang/Object;
.source "PlankModule_ProvideTestInputMonitorFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/uiautomator/monitor/TestInputMonitor;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
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
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/android/systemui/uiautomator/dagger/PlankModule_ProvideTestInputMonitorFactory;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/android/systemui/uiautomator/dagger/PlankModule_ProvideTestInputMonitorFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/android/systemui/uiautomator/dagger/PlankModule_ProvideTestInputMonitorFactory;"
        }
    .end annotation

    .line 32
    new-instance v0, Lcom/android/systemui/uiautomator/dagger/PlankModule_ProvideTestInputMonitorFactory;

    invoke-direct {v0, p0}, Lcom/android/systemui/uiautomator/dagger/PlankModule_ProvideTestInputMonitorFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideTestInputMonitor(Landroid/content/Context;)Lcom/android/systemui/uiautomator/monitor/TestInputMonitor;
    .locals 0

    .line 36
    invoke-static {p0}, Lcom/android/systemui/uiautomator/dagger/PlankModule;->provideTestInputMonitor(Landroid/content/Context;)Lcom/android/systemui/uiautomator/monitor/TestInputMonitor;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/uiautomator/monitor/TestInputMonitor;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/systemui/uiautomator/monitor/TestInputMonitor;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/android/systemui/uiautomator/dagger/PlankModule_ProvideTestInputMonitorFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/uiautomator/dagger/PlankModule_ProvideTestInputMonitorFactory;->provideTestInputMonitor(Landroid/content/Context;)Lcom/android/systemui/uiautomator/monitor/TestInputMonitor;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/uiautomator/dagger/PlankModule_ProvideTestInputMonitorFactory;->get()Lcom/android/systemui/uiautomator/monitor/TestInputMonitor;

    move-result-object p0

    return-object p0
.end method