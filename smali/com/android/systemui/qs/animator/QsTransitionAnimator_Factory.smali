.class public final Lcom/android/systemui/qs/animator/QsTransitionAnimator_Factory;
.super Ljava/lang/Object;
.source "QsTransitionAnimator_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/qs/animator/QsTransitionAnimator;",
        ">;"
    }
.end annotation


# instance fields
.field private final barControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/bar/BarController;",
            ">;"
        }
    .end annotation
.end field

.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final expandAnimatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/animator/QsExpandAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private final stateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/animator/QsAnimationStateProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/animator/QsAnimationStateProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/animator/QsExpandAnimator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/bar/BarController;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p2, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator_Factory;->stateProvider:Ljavax/inject/Provider;

    .line 34
    iput-object p3, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator_Factory;->expandAnimatorProvider:Ljavax/inject/Provider;

    .line 35
    iput-object p4, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator_Factory;->barControllerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/animator/QsTransitionAnimator_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/animator/QsAnimationStateProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/animator/QsExpandAnimator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/bar/BarController;",
            ">;)",
            "Lcom/android/systemui/qs/animator/QsTransitionAnimator_Factory;"
        }
    .end annotation

    .line 47
    new-instance v0, Lcom/android/systemui/qs/animator/QsTransitionAnimator_Factory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/qs/animator/QsTransitionAnimator_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;Lcom/android/systemui/qs/animator/QsAnimationStateProvider;Ldagger/Lazy;Lcom/android/systemui/qs/bar/BarController;)Lcom/android/systemui/qs/animator/QsTransitionAnimator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/qs/animator/QsAnimationStateProvider;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/qs/animator/QsExpandAnimator;",
            ">;",
            "Lcom/android/systemui/qs/bar/BarController;",
            ")",
            "Lcom/android/systemui/qs/animator/QsTransitionAnimator;"
        }
    .end annotation

    .line 53
    new-instance v0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/animator/QsAnimationStateProvider;Ldagger/Lazy;Lcom/android/systemui/qs/bar/BarController;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/qs/animator/QsTransitionAnimator;
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator_Factory;->stateProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/animator/QsAnimationStateProvider;

    iget-object v2, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator_Factory;->expandAnimatorProvider:Ljavax/inject/Provider;

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v2

    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator_Factory;->barControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/bar/BarController;

    invoke-static {v0, v1, v2, p0}, Lcom/android/systemui/qs/animator/QsTransitionAnimator_Factory;->newInstance(Landroid/content/Context;Lcom/android/systemui/qs/animator/QsAnimationStateProvider;Ldagger/Lazy;Lcom/android/systemui/qs/bar/BarController;)Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsTransitionAnimator_Factory;->get()Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    move-result-object p0

    return-object p0
.end method
