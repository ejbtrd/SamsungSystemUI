.class Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$1;
.super Ljava/lang/Object;
.source "KeyguardTouchDymLockInjector.java"

# interfaces
.implements Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$1;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLockStarEnabled(Z)V
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$1;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;

    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->access$302(Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;Z)Z

    return-void
.end method

.method public onViewModeChanged(I)V
    .locals 4

    .line 34
    invoke-static {}, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->access$000()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$1;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;

    invoke-static {v2}, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->access$100(Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "onViewModeChanged mViewMode[%d], newMode[%d]"

    invoke-static {v0, v2, v1}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$1;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;

    invoke-static {v0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->access$100(Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;)I

    move-result v0

    if-ne v0, v3, :cond_0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$1;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;

    .line 36
    invoke-static {v0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->access$200(Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$1;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;

    invoke-static {v0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->access$200(Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 39
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$1;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;

    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->access$102(Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;I)I

    return-void
.end method
