.class Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardStatusBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->start5GEffectAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)V
    .locals 0

    .line 1225
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1235
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->access$900(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Landroid/widget/TextView;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1236
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->access$800(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Landroid/widget/TextView;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1229
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->access$800(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1230
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->access$800(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Landroid/widget/TextView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method
