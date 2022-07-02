.class public final Lcom/android/systemui/noticenter/NotiCenterPlugin$notiCenterCallback$1;
.super Ljava/lang/Object;
.source "NotiCenterPlugin.kt"

# interfaces
.implements Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/noticenter/NotiCenterPlugin;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangedVisibilityOnKeyguard(Z)V
    .locals 1

    .line 56
    invoke-static {}, Lcom/android/systemui/noticenter/NotiCenterPlugin;->access$getHandler$p()Landroid/os/Handler;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/noticenter/NotiCenterPlugin$notiCenterCallback$1$onChangedVisibilityOnKeyguard$1;

    invoke-direct {v0, p1}, Lcom/android/systemui/noticenter/NotiCenterPlugin$notiCenterCallback$1$onChangedVisibilityOnKeyguard$1;-><init>(Z)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onNotiCenterPanelUpdate(Landroid/widget/RemoteViews;)V
    .locals 0
    .param p1    # Landroid/widget/RemoteViews;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo p0, "rm"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onNotiStarPanelShowOnKeyguard(Z)V
    .locals 0

    const-class p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 63
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchNotiStarState(Z)V

    return-void
.end method
