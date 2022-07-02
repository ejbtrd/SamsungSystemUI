.class public final Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter_Factory;
.super Ljava/lang/Object;
.source "KnoxNotificationFilter_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter;",
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

.field private final knoxStateMonitorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/knox/KnoxStateMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private final notificationRowBinderLazyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinder;",
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
            "Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/knox/KnoxStateMonitor;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter_Factory;->notificationRowBinderLazyProvider:Ljavax/inject/Provider;

    .line 31
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 32
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter_Factory;->knoxStateMonitorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/knox/KnoxStateMonitor;",
            ">;)",
            "Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter_Factory;"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Ldagger/Lazy;Landroid/content/Context;Lcom/android/systemui/knox/KnoxStateMonitor;)Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinder;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/android/systemui/knox/KnoxStateMonitor;",
            ")",
            "Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter;"
        }
    .end annotation

    .line 49
    new-instance v0, Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter;-><init>(Ldagger/Lazy;Landroid/content/Context;Lcom/android/systemui/knox/KnoxStateMonitor;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter;
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter_Factory;->notificationRowBinderLazyProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter_Factory;->knoxStateMonitorProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter_Factory;->newInstance(Ldagger/Lazy;Landroid/content/Context;Lcom/android/systemui/knox/KnoxStateMonitor;)Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter_Factory;->get()Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter;

    move-result-object p0

    return-object p0
.end method
