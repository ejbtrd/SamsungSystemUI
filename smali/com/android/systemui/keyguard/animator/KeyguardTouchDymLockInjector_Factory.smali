.class public final Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector_Factory;
.super Ljava/lang/Object;
.source "KeyguardTouchDymLockInjector_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;",
        ">;"
    }
.end annotation


# instance fields
.field private final pluginLockManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/pluginlock/PluginLockManager;",
            ">;"
        }
    .end annotation
.end field

.field private final pluginLockMediatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/pluginlock/PluginLockMediator;",
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
            "Lcom/android/systemui/pluginlock/PluginLockManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/pluginlock/PluginLockMediator;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector_Factory;->pluginLockManagerProvider:Ljavax/inject/Provider;

    .line 25
    iput-object p2, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector_Factory;->pluginLockMediatorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/pluginlock/PluginLockManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/pluginlock/PluginLockMediator;",
            ">;)",
            "Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector_Factory;"
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector_Factory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/android/systemui/pluginlock/PluginLockManager;Lcom/android/systemui/pluginlock/PluginLockMediator;)Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;
    .locals 1

    .line 41
    new-instance v0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;-><init>(Lcom/android/systemui/pluginlock/PluginLockManager;Lcom/android/systemui/pluginlock/PluginLockMediator;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector_Factory;->pluginLockManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/pluginlock/PluginLockManager;

    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector_Factory;->pluginLockMediatorProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-static {v0, p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector_Factory;->newInstance(Lcom/android/systemui/pluginlock/PluginLockManager;Lcom/android/systemui/pluginlock/PluginLockMediator;)Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector_Factory;->get()Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;

    move-result-object p0

    return-object p0
.end method
