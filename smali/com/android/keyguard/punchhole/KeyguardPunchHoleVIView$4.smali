.class Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$4;
.super Ljava/lang/Object;
.source "KeyguardPunchHoleVIView.java"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$4;->this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishedWakingUp()V
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$4;->this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    iget-object v0, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    const-string v1, "onFinishedWakingUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$4;->this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-static {v0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->access$500(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$4;->this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-static {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->access$400(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
