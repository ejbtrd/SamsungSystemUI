.class public final Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector_Factory;
.super Ljava/lang/Object;
.source "KeyguardTouchSwipeDetector_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;",
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

.field private final dymLockInjectorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;",
            ">;"
        }
    .end annotation
.end field

.field private final keyguardUpdateMonitorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private final securityInjectorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/animator/KeyguardTouchSecurityInjector;",
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
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/animator/KeyguardTouchSecurityInjector;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 31
    iput-object p2, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector_Factory;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    .line 32
    iput-object p3, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector_Factory;->dymLockInjectorProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p4, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector_Factory;->securityInjectorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/animator/KeyguardTouchSecurityInjector;",
            ">;)",
            "Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector_Factory;"
        }
    .end annotation

    .line 45
    new-instance v0, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector_Factory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;Lcom/android/systemui/keyguard/animator/KeyguardTouchSecurityInjector;)Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;
    .locals 1

    .line 51
    new-instance v0, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;-><init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;Lcom/android/systemui/keyguard/animator/KeyguardTouchSecurityInjector;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector_Factory;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v2, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector_Factory;->dymLockInjectorProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;

    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector_Factory;->securityInjectorProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchSecurityInjector;

    invoke-static {v0, v1, v2, p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector_Factory;->newInstance(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;Lcom/android/systemui/keyguard/animator/KeyguardTouchSecurityInjector;)Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector_Factory;->get()Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;

    move-result-object p0

    return-object p0
.end method
