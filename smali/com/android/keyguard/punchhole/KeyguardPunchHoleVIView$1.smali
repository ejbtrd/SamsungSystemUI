.class Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$1;
.super Ljava/lang/Object;
.source "KeyguardPunchHoleVIView.java"

# interfaces
.implements Lcom/android/systemui/lockstar/PluginLockStarManager$LockStarCallback;


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

    .line 92
    iput-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$1;->this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangedLockStarEnabled(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 96
    iget-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$1;->this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->access$002(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    iget-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$1;->this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->access$100(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;Z)V

    .line 99
    iget-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$1;->this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-static {p1}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->access$200(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 100
    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$1;->this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-static {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->access$300(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;)Landroid/widget/FrameLayout;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 103
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$1;->this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-static {p1}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->access$300(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 104
    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$1;->this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-virtual {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->setFaceRecognitionVI()V

    :cond_1
    :goto_0
    return-void
.end method
