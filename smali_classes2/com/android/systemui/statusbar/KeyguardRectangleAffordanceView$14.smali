.class Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$14;
.super Landroid/os/Handler;
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
.method constructor <init>(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;Landroid/os/Looper;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$14;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 341
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "KeyguardRectangleAffordanceView"

    const-string/jumbo v0, "reset timeout"

    .line 343
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$14;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->access$2002(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;Z)Z

    .line 345
    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->access$602(Z)Z

    .line 346
    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->access$2702(Z)Z

    .line 347
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$14;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->access$1700(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->forceReset()V

    :goto_0
    return-void
.end method
