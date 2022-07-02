.class public final Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_BindQSClockBellAlternateCalendarUtilFactory;
.super Ljava/lang/Object;
.source "StatusBarDependenciesModule_BindQSClockBellAlternateCalendarUtilFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;",
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

.field private final handlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_BindQSClockBellAlternateCalendarUtilFactory;->contextProvider:Ljavax/inject/Provider;

    .line 27
    iput-object p2, p0, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_BindQSClockBellAlternateCalendarUtilFactory;->handlerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static bindQSClockBellAlternateCalendarUtil(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;
    .locals 0

    .line 42
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule;->bindQSClockBellAlternateCalendarUtil(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;

    return-object p0
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_BindQSClockBellAlternateCalendarUtilFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;)",
            "Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_BindQSClockBellAlternateCalendarUtilFactory;"
        }
    .end annotation

    .line 37
    new-instance v0, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_BindQSClockBellAlternateCalendarUtilFactory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_BindQSClockBellAlternateCalendarUtilFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_BindQSClockBellAlternateCalendarUtilFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_BindQSClockBellAlternateCalendarUtilFactory;->handlerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_BindQSClockBellAlternateCalendarUtilFactory;->bindQSClockBellAlternateCalendarUtil(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/dagger/StatusBarDependenciesModule_BindQSClockBellAlternateCalendarUtilFactory;->get()Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;

    move-result-object p0

    return-object p0
.end method
