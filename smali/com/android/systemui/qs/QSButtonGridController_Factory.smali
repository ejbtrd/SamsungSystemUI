.class public final Lcom/android/systemui/qs/QSButtonGridController_Factory;
.super Ljava/lang/Object;
.source "QSButtonGridController_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/qs/QSButtonGridController;",
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

.field private final qSPanelControllerLazyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSPanelController;",
            ">;"
        }
    .end annotation
.end field

.field private final qsExpandAnimatorLazyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/animator/QsExpandAnimator;",
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
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSPanelController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/animator/QsExpandAnimator;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/systemui/qs/QSButtonGridController_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 30
    iput-object p2, p0, Lcom/android/systemui/qs/QSButtonGridController_Factory;->qSPanelControllerLazyProvider:Ljavax/inject/Provider;

    .line 31
    iput-object p3, p0, Lcom/android/systemui/qs/QSButtonGridController_Factory;->qsExpandAnimatorLazyProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/QSButtonGridController_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSPanelController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/animator/QsExpandAnimator;",
            ">;)",
            "Lcom/android/systemui/qs/QSButtonGridController_Factory;"
        }
    .end annotation

    .line 42
    new-instance v0, Lcom/android/systemui/qs/QSButtonGridController_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/qs/QSButtonGridController_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;Ldagger/Lazy;Ldagger/Lazy;)Lcom/android/systemui/qs/QSButtonGridController;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/qs/QSPanelController;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/qs/animator/QsExpandAnimator;",
            ">;)",
            "Lcom/android/systemui/qs/QSButtonGridController;"
        }
    .end annotation

    .line 47
    new-instance v0, Lcom/android/systemui/qs/QSButtonGridController;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/qs/QSButtonGridController;-><init>(Landroid/content/Context;Ldagger/Lazy;Ldagger/Lazy;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/qs/QSButtonGridController;
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/android/systemui/qs/QSButtonGridController_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/QSButtonGridController_Factory;->qSPanelControllerLazyProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/qs/QSButtonGridController_Factory;->qsExpandAnimatorLazyProvider:Ljavax/inject/Provider;

    invoke-static {p0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/android/systemui/qs/QSButtonGridController_Factory;->newInstance(Landroid/content/Context;Ldagger/Lazy;Ldagger/Lazy;)Lcom/android/systemui/qs/QSButtonGridController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSButtonGridController_Factory;->get()Lcom/android/systemui/qs/QSButtonGridController;

    move-result-object p0

    return-object p0
.end method
