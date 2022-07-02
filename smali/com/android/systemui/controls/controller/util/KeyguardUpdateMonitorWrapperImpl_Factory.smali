.class public final Lcom/android/systemui/controls/controller/util/KeyguardUpdateMonitorWrapperImpl_Factory;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitorWrapperImpl_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/controls/controller/util/KeyguardUpdateMonitorWrapperImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private final controlsRuneWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/util/ControlsRuneWrapper;",
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


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/util/ControlsRuneWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/systemui/controls/controller/util/KeyguardUpdateMonitorWrapperImpl_Factory;->controlsRuneWrapperProvider:Ljavax/inject/Provider;

    .line 26
    iput-object p2, p0, Lcom/android/systemui/controls/controller/util/KeyguardUpdateMonitorWrapperImpl_Factory;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/controls/controller/util/KeyguardUpdateMonitorWrapperImpl_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/util/ControlsRuneWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;)",
            "Lcom/android/systemui/controls/controller/util/KeyguardUpdateMonitorWrapperImpl_Factory;"
        }
    .end annotation

    .line 37
    new-instance v0, Lcom/android/systemui/controls/controller/util/KeyguardUpdateMonitorWrapperImpl_Factory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/controls/controller/util/KeyguardUpdateMonitorWrapperImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/android/systemui/controls/util/ControlsRuneWrapper;Lcom/android/keyguard/KeyguardUpdateMonitor;)Lcom/android/systemui/controls/controller/util/KeyguardUpdateMonitorWrapperImpl;
    .locals 1

    .line 42
    new-instance v0, Lcom/android/systemui/controls/controller/util/KeyguardUpdateMonitorWrapperImpl;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/controls/controller/util/KeyguardUpdateMonitorWrapperImpl;-><init>(Lcom/android/systemui/controls/util/ControlsRuneWrapper;Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/controls/controller/util/KeyguardUpdateMonitorWrapperImpl;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/android/systemui/controls/controller/util/KeyguardUpdateMonitorWrapperImpl_Factory;->controlsRuneWrapperProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controls/util/ControlsRuneWrapper;

    iget-object p0, p0, Lcom/android/systemui/controls/controller/util/KeyguardUpdateMonitorWrapperImpl_Factory;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0, p0}, Lcom/android/systemui/controls/controller/util/KeyguardUpdateMonitorWrapperImpl_Factory;->newInstance(Lcom/android/systemui/controls/util/ControlsRuneWrapper;Lcom/android/keyguard/KeyguardUpdateMonitor;)Lcom/android/systemui/controls/controller/util/KeyguardUpdateMonitorWrapperImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/controls/controller/util/KeyguardUpdateMonitorWrapperImpl_Factory;->get()Lcom/android/systemui/controls/controller/util/KeyguardUpdateMonitorWrapperImpl;

    move-result-object p0

    return-object p0
.end method
