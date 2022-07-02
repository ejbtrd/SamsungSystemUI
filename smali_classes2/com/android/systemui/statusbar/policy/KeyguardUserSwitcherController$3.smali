.class Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$3;
.super Ljava/lang/Object;
.source "KeyguardUserSwitcherController.java"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$3;->this$0:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDozeAmountChanged(FF)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 172
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string/jumbo p1, "onDozeAmountChanged: linearAmount=%f amount=%f"

    .line 171
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "KeyguardUserSwitcherController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$3;->this$0:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    invoke-static {p0, p2}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->access$300(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;F)V

    return-void
.end method

.method public onStateChanged(I)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 149
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "onStateChanged: newState=%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyguardUserSwitcherController"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$3;->this$0:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->goingToFullShade()Z

    move-result v1

    .line 152
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$3;->this$0:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->access$100(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;)Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isKeyguardFadingAway()Z

    move-result v2

    .line 153
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$3;->this$0:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->access$200(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;)I

    move-result v3

    .line 154
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$3;->this$0:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    invoke-static {v4, p1}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->access$202(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;I)I

    .line 156
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$3;->this$0:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->goingToFullShade()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$3;->this$0:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    .line 157
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->access$100(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;)Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isKeyguardFadingAway()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 158
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$3;->this$0:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->closeSwitcherIfOpenAndNotSimple(Z)Z

    .line 161
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$3;->this$0:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    invoke-virtual {p0, p1, v2, v1, v3}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->setKeyguardUserSwitcherVisibility(IZZI)V

    return-void
.end method
