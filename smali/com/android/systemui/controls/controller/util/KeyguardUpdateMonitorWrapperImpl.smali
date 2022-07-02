.class public final Lcom/android/systemui/controls/controller/util/KeyguardUpdateMonitorWrapperImpl;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitorWrapperImpl.kt"

# interfaces
.implements Lcom/android/systemui/controls/controller/util/KeyguardUpdateMonitorWrapper;


# instance fields
.field private final controlsRuneWrapper:Lcom/android/systemui/controls/util/ControlsRuneWrapper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/util/ControlsRuneWrapper;Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 1
    .param p1    # Lcom/android/systemui/controls/util/ControlsRuneWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/keyguard/KeyguardUpdateMonitor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "controlsRuneWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyguardUpdateMonitor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/android/systemui/controls/controller/util/KeyguardUpdateMonitorWrapperImpl;->controlsRuneWrapper:Lcom/android/systemui/controls/util/ControlsRuneWrapper;

    .line 9
    iput-object p2, p0, Lcom/android/systemui/controls/controller/util/KeyguardUpdateMonitorWrapperImpl;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-void
.end method


# virtual methods
.method public isUserUnlocked()Z
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/android/systemui/controls/controller/util/KeyguardUpdateMonitorWrapperImpl;->controlsRuneWrapper:Lcom/android/systemui/controls/util/ControlsRuneWrapper;

    invoke-interface {v0}, Lcom/android/systemui/controls/util/ControlsRuneWrapper;->supportBlockStartBeforeSecureBootUnlock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    iget-object p0, p0, Lcom/android/systemui/controls/controller/util/KeyguardUpdateMonitorWrapperImpl;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isUserUnlocked()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method
