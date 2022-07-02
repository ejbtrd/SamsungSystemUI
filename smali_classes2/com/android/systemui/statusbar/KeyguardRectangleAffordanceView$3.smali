.class Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$3;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardRectangleAffordanceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$3;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardBouncerChanged(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 247
    invoke-static {}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->access$600()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$3;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->access$700(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 248
    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->access$602(Z)Z

    .line 249
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$3;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->access$800(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0x3e9

    const-wide/16 v0, 0x96

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public onStartedGoingToSleep(I)V
    .locals 0

    .line 242
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$3;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->access$402(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;Z)Z

    return-void
.end method

.method public onStartedWakingUp()V
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$3;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->access$402(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;Z)Z

    .line 237
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$3;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->access$502(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;Z)Z

    return-void
.end method
