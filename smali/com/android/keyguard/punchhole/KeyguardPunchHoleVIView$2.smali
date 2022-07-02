.class Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$2;
.super Ljava/lang/Object;
.source "KeyguardPunchHoleVIView.java"

# interfaces
.implements Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;


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

    .line 109
    iput-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$2;->this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayChanged(I)V
    .locals 0

    .line 112
    iget-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$2;->this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-static {p1}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->access$500(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$2;->this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-static {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->access$400(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onFolderStateChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 117
    iget-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$2;->this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-static {p1}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->access$600(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 118
    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$2;->this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-virtual {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->stopVI()V

    :cond_0
    return-void
.end method
