.class public Lcom/android/systemui/volume/util/KeyguardUpdateMonitorWrapper;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitorWrapper.java"


# instance fields
.field private mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-class p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p1, p0, Lcom/android/systemui/volume/util/KeyguardUpdateMonitorWrapper;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-void
.end method


# virtual methods
.method public registerCallback(Ljava/lang/Runnable;)V
    .locals 1

    .line 18
    new-instance v0, Lcom/android/systemui/volume/util/KeyguardUpdateMonitorWrapper$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/volume/util/KeyguardUpdateMonitorWrapper$1;-><init>(Lcom/android/systemui/volume/util/KeyguardUpdateMonitorWrapper;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/systemui/volume/util/KeyguardUpdateMonitorWrapper;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 24
    iget-object p0, p0, Lcom/android/systemui/volume/util/KeyguardUpdateMonitorWrapper;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public unregisterCallback()V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/android/systemui/volume/util/KeyguardUpdateMonitorWrapper;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_0

    .line 29
    iget-object p0, p0, Lcom/android/systemui/volume/util/KeyguardUpdateMonitorWrapper;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    :cond_0
    return-void
.end method
