.class Lcom/android/keyguard/SecLockIconView$2;
.super Ljava/lang/Object;
.source "SecLockIconView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/SecLockIconView;->showScanningFaceAnimation(Lcom/android/systemui/widget/SystemUIImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/SecLockIconView;

.field final synthetic val$lockIcon:Lcom/android/systemui/widget/SystemUIImageView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/SecLockIconView;Lcom/android/systemui/widget/SystemUIImageView;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/android/keyguard/SecLockIconView$2;->this$0:Lcom/android/keyguard/SecLockIconView;

    iput-object p2, p0, Lcom/android/keyguard/SecLockIconView$2;->val$lockIcon:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 184
    iget-object p1, p0, Lcom/android/keyguard/SecLockIconView$2;->this$0:Lcom/android/keyguard/SecLockIconView;

    invoke-static {p1}, Lcom/android/keyguard/SecLockIconView;->access$000(Lcom/android/keyguard/SecLockIconView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 185
    iget-object p1, p0, Lcom/android/keyguard/SecLockIconView$2;->val$lockIcon:Lcom/android/systemui/widget/SystemUIImageView;

    iget-object p0, p0, Lcom/android/keyguard/SecLockIconView$2;->this$0:Lcom/android/keyguard/SecLockIconView;

    invoke-static {p0}, Lcom/android/keyguard/SecLockIconView;->access$100(Lcom/android/keyguard/SecLockIconView;)Landroid/view/animation/AlphaAnimation;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 187
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/SecLockIconView$2;->this$0:Lcom/android/keyguard/SecLockIconView;

    iget-object p0, p0, Lcom/android/keyguard/SecLockIconView$2;->val$lockIcon:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {p1, p0}, Lcom/android/keyguard/SecLockIconView;->initScanningFaceAnimationValue(Lcom/android/systemui/widget/SystemUIImageView;)V

    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
