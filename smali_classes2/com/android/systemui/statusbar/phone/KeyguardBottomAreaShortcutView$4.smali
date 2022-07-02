.class Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardBottomAreaShortcutView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->startIndicationAppearAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)V
    .locals 0

    .line 564
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 581
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$700(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;Z)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 572
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$700(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;Z)V

    .line 573
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$1502(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 574
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getIndicationArea()Landroid/view/View;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 575
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 576
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 568
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$700(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;Z)V

    return-void
.end method
