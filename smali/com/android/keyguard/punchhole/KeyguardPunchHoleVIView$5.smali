.class Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$5;
.super Lcom/android/systemui/shared/system/RotationWatcher;
.source "KeyguardPunchHoleVIView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;Landroid/content/Context;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$5;->this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-direct {p0, p2}, Lcom/android/systemui/shared/system/RotationWatcher;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onRotationChanged(I)V
    .locals 0

    .line 219
    iget-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$5;->this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-static {p1}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->access$500(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$5;->this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-static {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->access$400(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
